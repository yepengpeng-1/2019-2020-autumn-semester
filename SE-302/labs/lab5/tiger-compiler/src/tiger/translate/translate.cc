#include "tiger/translate/translate.h"

#include "tiger/errormsg/errormsg.h"
#include "tiger/frame/temp.h"
#include "tiger/semant/semant.h"
#include "tiger/semant/types.h"
#include "tiger/util/util.h"
#include <cstdio>
#include <iostream>
#include <queue>
#include <set>
#include <string>

using VEnvType = S::Table< E::EnvEntry >*;
using TEnvType = S::Table< TY::Ty >*;

namespace {}  // namespace

namespace TR {

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

    static Level* NewLevel( Level* parent, TEMP::Label* name, U::BoolList* formals ) {
        std::cout << "called new level. label: " << name->Name() << std::endl;
        auto frame = F::newFrame( *name, new U::BoolList( /* extra escaping param for static link */ true, formals ) );
        return new Level( frame, parent );
    }
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
    std::cout << "Called TranslateProgram(A::Exp* root)." << std::endl;
    root->Translate( E::BaseVEnv(), E::BaseTEnv(), Outermost(), TEMP::NewLabel() );
}

static TY::TyList* make_formal_tylist( TEnvType tenv, A::FieldList* params ) {
    if ( params == nullptr ) {
        return nullptr;
    }

    TY::Ty* ty = tenv->Look( params->head->typ );
    if ( ty == nullptr ) {
        std::cout << params->head->pos << "undefined type " << params->head->typ->Name() << std::endl;
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
        std::cout << " undefined type " + fields->head->typ->Name() << std::endl;
    }
    return new TY::FieldList( new TY::Field( fields->head->name, ty ), make_fieldlist( tenv, fields->tail ) );
}

static TY::FieldList* make_fieldlist_from_e( TEnvType tenv, A::EFieldList* fields, TR::Level* level, TEMP::Label* label ) {
    if ( fields == nullptr ) {
        return nullptr;
    }

    TY::Ty* ty = fields->head->exp->Translate( nullptr, tenv, level, label ).ty;
    std::cout << " make_fieldlist kind called. " << fields->head->name->Name() << std::endl;

    return new TY::FieldList( new TY::Field( fields->head->name, ty ), make_fieldlist_from_e( tenv, fields->tail, level, label ) );
}

}  // namespace TR

namespace A {

TR::ExpAndTy SimpleVar::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered SimpleVar::Translate." << std::endl;
    E::EnvEntry* var = venv->Look( this->sym );
    if ( var && var->kind == E::EnvEntry::Kind::VAR ) {
        return TR::ExpAndTy( nullptr, ( ( E::VarEntry* )var )->ty );
    }

    std::cout << "undefined variable " + this->sym->Name() << std::endl;
    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );

    // return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::ExpAndTy FieldVar::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered SimpleVar::Translate." << std::endl;
    auto recT = this->var->Translate( venv, tenv, level, label );
    // if ( recT->kind == E ) {
    auto recEnt = ( E::VarEntry* )recT.ty;

    if ( recT.ty->kind != TY::Ty::Kind::RECORD ) {
        std::cout << "not a record type" << std::endl;
    }

    auto fields = ( ( TY::RecordTy* )( ( A::SimpleVar* )this->var )->Translate( venv, tenv, level, label ).ty )->fields;
    while ( fields ) {
        std::cout << "checking field " << fields->head->name->Name() << " and " << this->sym->Name() << std::endl;
        if ( fields->head->name->Name() == this->sym->Name() ) {
            return TR::ExpAndTy( nullptr, fields->head->ty );
        }
        fields = fields->tail;
    }

    std::cout << "field " + this->sym->Name() + " doesn't exist" << std::endl;
    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::ExpAndTy SubscriptVar::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered SubscriptVar::Translate." << std::endl;

    auto recT = this->var->Translate( venv, tenv, level, label );
    // if ( recT->kind == E ) {
    auto recEnt = recT.ty;

    std::string type_names[] = { "SIMPLE", "FIELD", "SUBSCRIPT" };

    if ( this->var->kind != A::Var::Kind::SUBSCRIPT ) {
        std::cout << "this->var->kind = " << type_names[ this->var->kind ] << std::endl;
        std::cout << "array type required" << std::endl;
    }

    std::string ty_names[] = { "RECORD", "NIL", "INT", "STRING", "ARRAY", "NAME", "VOID" };
    std::cout << "before we call recEnt->ty->kind" << std::endl;
    std::cout << recEnt->kind << std::endl;
    std::cout << "recEnt->ty->kind = " << ty_names[ recEnt->kind ] << std::endl;
    if ( recEnt->kind == TY::Ty::Kind::ARRAY ) {
        return TR::ExpAndTy( nullptr, ( ( TY::ArrayTy* )( recEnt ) )->ty );
    }
}

TR::ExpAndTy VarExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered VarExp::Translate." << std::endl;

    if ( this->var->kind == A::Var::Kind::SIMPLE ) {
        std::cout << "analyse a SIMPLE var" << std::endl;
        A::SimpleVar* spvar = ( A::SimpleVar* )this->var;
        return spvar->Translate( venv, tenv, level, label );
    }
    else if ( this->var->kind == A::Var::Kind::FIELD ) {
        std::cout << "analyse a FIELD var" << std::endl;
        A::FieldVar* fvar = ( A::FieldVar* )this->var;
        return fvar->Translate( venv, tenv, level, label );
    }
    else if ( this->var->kind == A::Var::Kind::SUBSCRIPT ) {
        std::cout << "analyse a SUBSCRIPT var" << std::endl;
        A::SubscriptVar* svar = ( A::SubscriptVar* )this->var;
        return svar->Translate( venv, tenv, level, label );
    }
    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::ExpAndTy NilExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered NilExp::Translate." << std::endl;
    return TR::ExpAndTy( nullptr, TY::NilTy::Instance() );
}

TR::ExpAndTy IntExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered IntExp::Translate." << std::endl;
    return TR::ExpAndTy( nullptr, TY::IntTy::Instance() );
}

TR::ExpAndTy StringExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered StringExp::Translate." << std::endl;
    return TR::ExpAndTy( nullptr, TY::StringTy::Instance() );
}

TR::ExpAndTy CallExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered CallExp::Translate." << std::endl;

    auto fun = venv->Look( this->func );
    if ( !fun || fun->kind != E::EnvEntry::Kind::FUN ) {
        std::cout << "undefined function " + this->func->Name() << std::endl;
        return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
    }

    std::cout << "found function " + this->func->Name() << std::endl;
    auto        formals = ( ( E::FunEntry* )fun )->formals;
    A::ExpList* arg     = this->args;
    TY::Ty*     retType;
    while ( arg || formals ) {
        if ( arg && formals ) {
            std::cout << "comparing arg->head and formals->head" << std::endl;
            if ( !arg->head->Translate( venv, tenv, level, label ).ty->IsSameType( formals->head ) ) {
                std::cout << "para type mismatch" << std::endl;
                std::cout << "ty1: " << arg->head->Translate( venv, tenv, level, label ).ty << "; ty2:" << formals->head << std::endl;
                break;
            }
            arg     = arg->tail;
            formals = formals->tail;
        }
        else {
            if ( arg ) {
                std::cout << "too many params in function " + this->func->Name() << std::endl;
            }
            else {
                std::cout << "too less params in function " + this->func->Name() << std::endl;
            }
            break;
        }
    }

    auto result = ( ( E::FunEntry* )fun )->result;
    std::cout << "Call operation returns an " << result->kind << std::endl;
    return TR::ExpAndTy( nullptr, result );
}

TR::ExpAndTy OpExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::string op_names[] = { "PLUS_OP", "MINUS_OP", "TIMES_OP", "DIVIDE_OP", "EQ_OP", "NEQ_OP", "LT_OP", "LE_OP", "GT_OP", "GE_OP" };
    std::cout << "Entered OpExp::Translate. OpCode: " << op_names[ this->oper ] << std::endl;

    auto leftT  = left->Translate( venv, tenv, level, label );
    auto rightT = right->Translate( venv, tenv, level, label );
    std::cout << "  making a comparison between <type> " << leftT.ty->ActualTy()->kind << " and <type> " << rightT.ty->ActualTy()->kind << std::endl;
    if ( leftT.ty->kind == TY::Ty::Kind::INT && rightT.ty->kind == TY::Ty::Kind::VOID ) {
        std::cout << "integer required" << std::endl;
        return TR::ExpAndTy( nullptr, TY::IntTy::Instance() );
    }
    else if ( rightT.ty->kind == TY::Ty::Kind::INT && leftT.ty->kind == TY::Ty::Kind::VOID ) {
        std::cout << "integer required" << std::endl;
        return TR::ExpAndTy( nullptr, TY::IntTy::Instance() );
    }
    else if ( this->oper == A::Oper::PLUS_OP && leftT.ty->kind == TY::Ty::Kind::INT && rightT.ty->kind == TY::Ty::Kind::STRING ) {
        std::cout << "integer required" << std::endl;
        return TR::ExpAndTy( nullptr, TY::IntTy::Instance() );
    }
    else if ( this->oper == A::Oper::NEQ_OP && !leftT.ty->IsSameType( rightT.ty ) ) {
        std::cout << "same type required" << std::endl;
        return TR::ExpAndTy( nullptr, TY::IntTy::Instance() );
    }
    else if ( leftT.ty->kind == TY::Ty::Kind::RECORD && !leftT.ty->IsSameType( rightT.ty ) ) {
        std::cout << "type mismatch" << std::endl;
        return TR::ExpAndTy( nullptr, TY::IntTy::Instance() );
    }
    else if ( !leftT.ty->IsSameType( rightT.ty ) ) {
        std::cout << "same type required" << std::endl;
        return TR::ExpAndTy( nullptr, TY::IntTy::Instance() );
    }
    else if ( leftT.ty->kind == TY::Ty::Kind::INT && rightT.ty->kind != TY::Ty::Kind::INT ) {
        std::cout << "integer required" << std::endl;
        return TR::ExpAndTy( nullptr, TY::IntTy::Instance() );
    }
    return TR::ExpAndTy( nullptr, TY::IntTy::Instance() );
}

TR::ExpAndTy RecordExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered RecordExp::Translate." << std::endl;
    auto recT = tenv->Look( this->typ );
    if ( !recT ) {
        std::cout << "undefined type rectype" << std::endl;
    }
    return TR::ExpAndTy( nullptr, recT /*new TY::RecordTy( make_fieldlist_from_e( tenv, this->fields, level, label ) ) */ );
}

TR::ExpAndTy SeqExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered SeqExp::Translate." << std::endl;
    ExpList*      seq  = this->seq;
    TR::ExpAndTy* last = reinterpret_cast< TR::ExpAndTy* >( calloc( 1, sizeof( TR::ExpAndTy ) ) );
    while ( seq != nullptr ) {
        *last = seq->head->Translate( venv, tenv, level, label );
        seq   = seq->tail;
    }
    return *last;
}

TR::ExpAndTy AssignExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered AssignExp::Translate." << std::endl;

    auto varKind = this->var->Translate( venv, tenv, level, label );
    auto expT    = this->exp->Translate( venv, tenv, level, label );

    if ( varKind.ty->kind == TY::Ty::Kind::VOID ) {
    }
    else if ( varKind.ty->kind == TY::Ty::Kind::RECORD ) {
        if ( !expT.ty->IsSameType( varKind.ty ) ) {
            std::cout << "type mismatch" << std::endl;
        }
    }
    else {
        if ( !this->exp->Translate( venv, tenv, level, label ).ty->IsSameType( varKind.ty ) ) {
            std::cout << "unmatched assign exp" << std::endl;
        }
    }

    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::ExpAndTy IfExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered IfExp::Translate. sign: " << std::endl;
    if ( this->test->Translate( venv, tenv, level, label ).ty->kind != TY::Ty::Kind::INT ) {
        return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
    }

    if ( !this->elsee ) {
        if ( this->then->Translate( venv, tenv, level, label ).ty->kind != TY::Ty::Kind::VOID ) {
            std::cout << "if-then exp's body must produce no value" << std::endl;
        }
        return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
    }
    else {
        auto thenT = this->then->Translate( venv, tenv, level, label );
        auto elseT = this->elsee->Translate( venv, tenv, level, label );
        if ( !thenT.ty->IsSameType( elseT.ty ) ) {
            std::cout << "then exp and else exp type mismatch" << std::endl;
        }
        return thenT;
    }
}

TR::ExpAndTy WhileExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered WhileExp::Translate." << std::endl;

    auto expAndTy = this->body->Translate( venv, tenv, level, label );
    if ( expAndTy.ty->kind != TY::Ty::Kind::VOID ) {
        std::cout << "while body must produce no value" << std::endl;
    }
    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::ExpAndTy ForExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered ForExp::Translate." << std::endl;

    if ( this->hi->Translate( venv, tenv, level, label ).ty->kind != TY::Ty::Kind::INT ) {
        std::cout << "for exp's range type is not integer" << std::endl;
    }
    if ( this->body->kind == A::Exp::Kind::ASSIGN ) {
        std::cout << "loop variable can't be assigned" << std::endl;
    }
    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::ExpAndTy BreakExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered BreakExp::Translate." << std::endl;
    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::ExpAndTy LetExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered LetExp::Translate." << std::endl;

    A::DecList* node = this->decs;
    while ( node ) {
        // std::cout << "while!" << std::endl;
        node->head->Translate( venv, tenv, level, label );
        node = node->tail;
    }

    return this->body->Translate( venv, tenv, level, label );

    // return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::ExpAndTy ArrayExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered ArrayExp::Translate." << std::endl;

    if ( !tenv->Look( this->typ )->IsSameType( this->init->Translate( venv, tenv, level, label ).ty ) ) {
        std::cout << "type mismatch" << std::endl;
    }
    return TR::ExpAndTy( nullptr, new TY::ArrayTy( tenv->Look( this->typ ) ) );
}

TR::ExpAndTy VoidExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered VoidExp::Translate." << std::endl;
    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::Exp* FunctionDec::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered FunctionDec::Translate." << std::endl;

    FunDecList* func = this->functions;
    while ( func ) {
        auto head = func->head;
        if ( venv->Look( head->name ) ) {
            std::cout << "two functions have the same name" << std::endl;
        }
        if ( head->result ) {
            venv->Enter( head->name, new E::FunEntry( TR::make_formal_tylist( tenv, head->params ), tenv->Look( head->result ) ) );
        }
        else {
            venv->Enter( head->name, new E::FunEntry( TR::make_formal_tylist( tenv, head->params ), TY::VoidTy::Instance() ) );
        }
        if ( func->tail ) {
            venv->Enter( func->tail->head->name, new E::FunEntry( nullptr, TY::VoidTy::Instance() ) );
        }
        auto   field           = head->params;
        size_t inputParamCount = 0;
        while ( field ) {
            auto fh = field->head;
            venv->Enter( fh->name, new E::VarEntry( tenv->Look( fh->typ ) ) );
            std::cout << "constructing formal: " << fh->name->Name() << ", type: " << fh->typ->Name() << ", id: " << tenv->Look( fh->typ ) << std::endl;
            field = field->tail;
            ++inputParamCount;
        }
        auto retType = head->body->Translate( venv, tenv, level, label ).ty;

        field = head->params;
        while ( inputParamCount > 0 ) {
            std::cout << "try pop one out" << std::endl;
            venv->Pop();

            --inputParamCount;
        }
        std::cout << "function declared result: " << ( head->result ? head->result->Name() : "NULL" ) << std::endl;
        if ( ( ( E::FunEntry* )( venv->Look( head->name ) ) )->result->kind == TY::Ty::Kind::VOID && retType->kind != TY::Ty::Kind::VOID ) {
            std::cout << "procedure returns value" << std::endl;
        }
        std::cout << "head->result: " << head->result << ", retType->kind: " << retType->kind << std::endl;

        func = func->tail;
    }
    return nullptr;
}

TR::Exp* VarDec::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered VarDec::Translate." << std::endl;
    auto initT = this->init->Translate( venv, tenv, level, label );
    if ( this->typ ) {
        std::cout << "explicit type" << tenv->Look( this->typ ) << std::endl;
        std::cout << "implicit type: " << initT.ty << std::endl;
        venv->Enter( this->var, new E::VarEntry( tenv->Look( this->typ ) ) );
        // if ( this->typ->name != this->init->SemAnalyze( venv, tenv, labelcount ) ) {
        if ( !tenv->Look( this->typ )->IsSameType( initT.ty ) ) {
            // if ( tenv->Look( this->typ )->kind == TY::Ty::Kind::RECORD || tenv->Look( this->typ )->kind == TY::Ty::Kind::ARRAY ) {
            std::cout << "type mismatch" << std::endl;
            // }
            // else {
            // errormsg.Error( labelcount, "same type required" );
            // }
        }
        // }
    }
    else {
        std::cout << "implicit type: " << initT.ty << std::endl;
        if ( initT.ty->kind == TY::Ty::Kind::NIL ) {
            std::cout << "init should not be nil without type specified" << std::endl;
        }
        venv->Enter( this->var, new E::VarEntry( initT.ty ) );
    }
    return nullptr;
}

TR::Exp* TypeDec::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered TypeDec::Translate." << std::endl;
    // std::cout << "Entered TypeDec::SemAnalyse; labelcount: " << labelcount << std::endl;
    // NameAndTyList*           natl = this->types;
    // TY::Ty*                  last = nullptr;
    // std::vector< NameAndTy > nstack;
    // while ( natl ) {
    //     nstack.push_back( natl->head );
    //     natl = natl->tail;
    // }
    // size_t lastEnds = nstack.size
    // while ( natl != nullptr ) {
    // std::cout << "gonna declare type " << natl->head->name->Name() << std::endl;
    // if ( natl->head->ty->SemAnalyze( tenv ) ) {
    //     tenv->Enter( natl->head->name, natl->head->ty->SemAnalyze( tenv ) );
    //     }
    //     natl = natl->tail;
    // }

    NameAndTyList*           natl = this->types;
    std::deque< NameAndTy* > queue;
    while ( natl ) {
        queue.push_back( natl->head );
        natl = natl->tail;
    }
    if ( queue.size() > 1 ) {
        std::cout << "queue.size() > 1" << std::endl;
        size_t unmovedTimes = 0;
        while ( unmovedTimes < queue.size() && queue.size() ) {
            auto nt = queue[ 0 ];
            queue.pop_front();
            // tenv->Enter( nt->name, TY::NilTy::Instance() );
            auto ans = nt->ty->Translate( tenv );
            if ( ans ) {
                unmovedTimes = 0;
                if ( tenv->Look( nt->name ) ) {
                    std::cout << "two types have the same name" << std::endl;
                }
                tenv->Enter( nt->name, ans );
            }
            else {
                queue.push_back( nt );
                unmovedTimes += 1;
            }
            std::cout << "declared type " << nt->name->Name() << ", id: " << tenv->Look( nt->name ) << std::endl;
        }
        if ( queue.size() ) {
            std::cout << "illegal type cycle" << std::endl;
        }
    }
    else {
        auto nt = queue[ 0 ];
        tenv->Enter( nt->name, TY::NilTy::Instance() );
        std::cout << "queue.size() <= 1" << std::endl;

        auto ans = nt->ty->Translate( tenv );
        if ( ans ) {
            tenv->Set( nt->name, ans );
        }
        else {
            std::cout << " undefined type " << std::endl;
        }
        std::cout << "declared type " << nt->name->Name() << ", id: " << tenv->Look( nt->name ) << std::endl;
    }

    return nullptr;
}

TY::Ty* NameTy::Translate( S::Table< TY::Ty >* tenv ) const {
    std::cout << "Entered NameTy::Translate." << std::endl;
    auto ty = tenv->Look( this->name );
    if ( ty ) {
        return new TY::NameTy( this->name, ty );
    }
    else {
        std::cout << " undefined type " + this->name->Name() << std::endl;
    }
}

TY::Ty* RecordTy::Translate( S::Table< TY::Ty >* tenv ) const {
    std::cout << "Entered RecordTy::Translate." << std::endl;
    return new TY::RecordTy( TR::make_fieldlist( tenv, this->record ) );
}

TY::Ty* ArrayTy::Translate( S::Table< TY::Ty >* tenv ) const {
    std::cout << "Entered ArrayTy::Translate." << std::endl;
    return new TY::ArrayTy( tenv->Look( this->array ) );
}

}  // namespace A