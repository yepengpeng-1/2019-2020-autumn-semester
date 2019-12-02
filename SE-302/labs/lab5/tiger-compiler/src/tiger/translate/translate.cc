#include "tiger/translate/translate.h"

#include <cstdio>
#include <iostream>
#include <set>
#include <string>

#include "tiger/errormsg/errormsg.h"
#include "tiger/frame/temp.h"
#include "tiger/semant/semant.h"
#include "tiger/semant/types.h"
#include "tiger/util/util.h"

using VEnvType = S::Table< E::EnvEntry >*;
using TEnvType = S::Table< TY::Ty >*;

namespace TR {

static TY::TyList* make_formal_tylist( TEnvType tenv, A::FieldList* params ) {
    if ( params == nullptr ) {
        return nullptr;
    }

    TY::Ty* ty = tenv->Look( params->head->typ );
    if ( ty == nullptr ) {
        std::cout << "undefined type %s" << params->head->typ->Name() << std::endl;
    }

    return new TY::TyList( ty->ActualTy(), make_formal_tylist( tenv, params->tail ) );
}

static TY::FieldList* make_fieldlist( TEnvType tenv, A::FieldList* fields ) {
    if ( fields == nullptr ) {
        return nullptr;
    }

    TY::Ty* ty = tenv->Look( fields->head->typ );
    std::cout << " make_fieldlist kind called. " << fields->head->name->Name() << std::endl;
    if ( !ty ) {
        std::cout << "undefined type " << fields->head->typ->Name() << std::endl;
    }
    return new TY::FieldList( new TY::Field( fields->head->name, ty ), make_fieldlist( tenv, fields->tail ) );
}

static TY::FieldList* make_fieldlist_from_e( TEnvType tenv, A::EFieldList* fields ) {
    if ( fields == nullptr ) {
        return nullptr;
    }

    TY::Ty* ty = fields->head->exp->SemAnalyze( nullptr, tenv, 0 );
    std::cout << " make_fieldlist kind called. " << fields->head->name->Name() << std::endl;

    return new TY::FieldList( new TY::Field( fields->head->name, ty ), make_fieldlist_from_e( tenv, fields->tail ) );
}

static TR::ExExp find_static_link( TR::Level* curlevel, TR::Level* declevel ) {
    while ( curlevel != declevel ) {
        curlevel        = curlevel->parent;
        TR::Access* acl = curlevel->Formals( curlevel )->head;
    }
}

// assert( current != NULL );
// T_exp result = T_Temp( F_FP() );
// for ( ; current != declare; current = current->parent ) {
//     assert( current != NULL );
//     F_access sl = F_formals( current->frame )->head;  // must be inFrame(8) in x86
//     // assert(sl->kind == inFrame && sl->u.offset == 8);
//     result = F_exp( sl, result );
// }
// return Tr_Ex( result );
// /*
// assert(current != NULL);
// if(current == declare) {
//     return Tr_Ex(T_Temp(F_FP()));
// }
// F_access sl = F_staticLinkFormal(current->frame);    // must be inFrame(8) in x86
// assert(sl->kind == inFrame);
// return T_Ex(T_Mem(T_Binop(T_plus, unEx(Tr_staticLink(current->parent, declare)), sl->u.offset)));
// */
// }  // namespace TR

class Access {
public:
    Level*     level;
    F::Access* access;

    Access( Level* level, F::Access* access ) : level( level ), access( access ) {}
    static Access* AllocLocal( Level* level, bool escape ) {
        return nullptr;
    }
};

class AccessList {
public:
    Access*     head;
    AccessList* tail;

    AccessList( Access* head, AccessList* tail ) : head( head ), tail( tail ) {}
};

class Level {
public:
    F::Frame* frame;
    Level*    parent;

    Level( F::Frame* frame, Level* parent ) : frame( frame ), parent( parent ) {}
    AccessList* Formals( Level* level ) {
        return nullptr;
    }

    static Level* NewLevel( Level* parent, TEMP::Label* name, U::BoolList* formals );
};

class PatchList {
public:
    TEMP::Label** head;
    PatchList*    tail;

    PatchList( TEMP::Label** head, PatchList* tail ) : head( head ), tail( tail ) {}
};

class Cx {
public:
    PatchList* trues;
    PatchList* falses;
    T::Stm*    stm;

    Cx( PatchList* trues, PatchList* falses, T::Stm* stm ) : trues( trues ), falses( falses ), stm( stm ) {}
};

class Exp {
public:
    enum Kind { EX, NX, CX };

    Kind kind;

    Exp( Kind kind ) : kind( kind ) {}

    virtual T::Exp* UnEx() const = 0;
    virtual T::Stm* UnNx() const = 0;
    virtual Cx      UnCx() const = 0;
};

class ExpAndTy {
public:
    TR::Exp* exp;
    TY::Ty*  ty;

    ExpAndTy( TR::Exp* exp, TY::Ty* ty ) : exp( exp ), ty( ty ) {}
};

class ExExp : public Exp {
public:
    T::Exp* exp;

    ExExp( T::Exp* exp ) : Exp( EX ), exp( exp ) {}

    T::Exp* UnEx() const override {}
    T::Stm* UnNx() const override {}
    Cx      UnCx() const override {}
};

class NxExp : public Exp {
public:
    T::Stm* stm;

    NxExp( T::Stm* stm ) : Exp( NX ), stm( stm ) {}

    T::Exp* UnEx() const override {}
    T::Stm* UnNx() const override {}
    Cx      UnCx() const override {}
};

class CxExp : public Exp {
public:
    Cx cx;

    CxExp( struct Cx cx ) : Exp( CX ), cx( cx ) {}
    CxExp( PatchList* trues, PatchList* falses, T::Stm* stm ) : Exp( CX ), cx( trues, falses, stm ) {}

    T::Exp* UnEx() const override {}
    T::Stm* UnNx() const override {}
    Cx      UnCx() const override {}
};

void do_patch( PatchList* tList, TEMP::Label* label ) {
    for ( ; tList; tList = tList->tail )
        *( tList->head ) = label;
}

PatchList* join_patch( PatchList* first, PatchList* second ) {
    if ( !first )
        return second;
    for ( ; first->tail; first = first->tail )
        ;
    first->tail = second;
    return first;
}

Level* Outermost() {
    static Level* lv = nullptr;
    if ( lv != nullptr )
        return lv;

    lv = new Level( nullptr, nullptr );
    return lv;
}

F::FragList* TranslateProgram( A::Exp* root ) {
    root->Translate( E::BaseVEnv(), E::BaseTEnv(), Outermost(), TEMP::NewLabel() );
}

}  // namespace TR

namespace A {

TR::ExpAndTy SimpleVar::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered SimpleVar::Translate." << std::endl;
    E::EnvEntry* var = venv->Look( this->sym );
    if ( var && var->kind == E::EnvEntry::Kind::VAR ) {
        return TR::ExpAndTy( new TR::ExExp( new T::NameExp( label ) ), ( ( E::VarEntry* )var )->ty );
    }

    std::cout << "undefined variable " + this->sym->Name() << std::endl;
    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );

    // return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::ExpAndTy FieldVar::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered SimpleVar::Translate." << std::endl;
    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::ExpAndTy SubscriptVar::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    // TODO: Put your codes here (lab5).
    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::ExpAndTy VarExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    // TODO: Put your codes here (lab5).
    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::ExpAndTy NilExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    // TODO: Put your codes here (lab5).
    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::ExpAndTy IntExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    // TODO: Put your codes here (lab5).
    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::ExpAndTy StringExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    // TODO: Put your codes here (lab5).
    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::ExpAndTy CallExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    // TODO: Put your codes here (lab5).
    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::ExpAndTy OpExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    // TODO: Put your codes here (lab5).
    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::ExpAndTy RecordExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    // TODO: Put your codes here (lab5).
    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::ExpAndTy SeqExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    // TODO: Put your codes here (lab5).
    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::ExpAndTy AssignExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    // TODO: Put your codes here (lab5).
    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::ExpAndTy IfExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    // TODO: Put your codes here (lab5).
    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::ExpAndTy WhileExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    // TODO: Put your codes here (lab5).
    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::ExpAndTy ForExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    // TODO: Put your codes here (lab5).
    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::ExpAndTy BreakExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    // TODO: Put your codes here (lab5).
    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::ExpAndTy LetExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    // TODO: Put your codes here (lab5).
    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::ExpAndTy ArrayExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    // TODO: Put your codes here (lab5).
    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::ExpAndTy VoidExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    // TODO: Put your codes here (lab5).
    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::Exp* FunctionDec::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    // TODO: Put your codes here (lab5).
    return nullptr;
}

TR::Exp* VarDec::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    // TODO: Put your codes here (lab5).
    return nullptr;
}

TR::Exp* TypeDec::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    // TODO: Put your codes here (lab5).
    return nullptr;
}

TY::Ty* NameTy::Translate( S::Table< TY::Ty >* tenv ) const {
    // TODO: Put your codes here (lab5).
    return TY::VoidTy::Instance();
}

TY::Ty* RecordTy::Translate( S::Table< TY::Ty >* tenv ) const {
    // TODO: Put your codes here (lab5).
    return TY::VoidTy::Instance();
}

TY::Ty* ArrayTy::Translate( S::Table< TY::Ty >* tenv ) const {
    // TODO: Put your codes here (lab5).
    return TY::VoidTy::Instance();
}

}  // namespace A