#ifndef TIGER_TRANSLATE_TRANSLATE_CC_
#define TIGER_TRANSLATE_TRANSLATE_CC_
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

namespace FRM {
F::Frame* newFrame( TEMP::Label name, U::BoolList* formals, F::Frame* lastFrame ) {

    std::cout << "called newFrame" << std::endl;
    F::AccessList* formalAcList = nullptr, *finalAcList = nullptr;
    int            argCount     = 0;
    while ( formals ) {
        ++argCount;
        auto access = new F::InFrameAccess( /* offset: */- argCount * F::wordSize );
        access->sym = formals->symbol;
        std::cout << "created new InFrameAccess. sym: " << access->sym << std::endl;
        if (formalAcList) {
            formalAcList->tail = new F::AccessList( access, nullptr );
            formalAcList = formalAcList->tail;
        } else {
            formalAcList = new F::AccessList(access, nullptr);
            finalAcList = formalAcList;
        }
        
        formals      = formals->tail;
    }
    std::cout << "current frame argCount: " << argCount << std::endl;

    F::Frame* f = new F::Frame( name );
    f->putInfo( F::Frame::Kind::ARGUMENT, argCount, finalAcList );
    f->putInfo( F::Frame::Kind::VARIABLE, 0, nullptr );
    f->lastFrame = lastFrame;
    return f;
}
}  // namespace FRM

namespace TR {

class Access {
public:
    Level* level;

    F::Access* access;

    Access( Level* level, F::Access* access ) : level( level ), access( access ) {}
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

    Level* NewLevel( Level* parent, TEMP::Label* name, U::BoolList* formals ) {
        std::cout << "called new level. label: " << name->Name() << std::endl;
        auto formaL = formals;
        if (formaL) {
            while (formaL->tail)
            {
                formaL = formaL->tail;
            }
            formaL->tail = new U::BoolList(true, "__static_link__", nullptr);
            auto frame          = FRM::newFrame( *name, formals, this->frame );
            frame->functionName = "";
            return new Level( frame, this );
        } else {
            auto frame          = FRM::newFrame( *name, new U::BoolList(true, "", nullptr), this->frame );
            frame->functionName = "";
            return new Level( frame, this );
        }
    }
};

class PatchList {
public:
    TEMP::Label** head;
    PatchList*    tail;

    PatchList( TEMP::Label** head, PatchList* tail ) : head( head ), tail( tail ) {}
};

void do_patch( PatchList* tList, TEMP::Label* label ) {
    for ( ; tList; tList = tList->tail )
        *( tList->head ) = label;
}

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

    T::Exp* UnEx() const override {
        std::cout << "Ex's UnEx() called" << std::endl;
        return this->exp;
    }
    T::Stm* UnNx() const override {
        std::cout << "Ex's UnNx() called" << std::endl;

        if ( this->exp->kind == T::Exp::Kind::ESEQ && reinterpret_cast< T::EseqExp* >( this->exp )->exp->kind == T::Exp::Kind::CONST ) {
            return reinterpret_cast< T::EseqExp* >( this->exp )->stm;
        }

        return new T::ExpStm( this->exp );
    }
    Cx UnCx() const override {
        std::cout << "Ex's UnCx() called" << std::endl;
        auto stm    = new T::CjumpStm( T::NE_OP, this->exp, new T::ConstExp( 0 ), nullptr, nullptr );
        auto trues  = new PatchList( &stm->true_label, nullptr );
        auto falses = new PatchList( &stm->false_label, nullptr );
        return TR::Cx( trues, falses, stm );
    }
};

class NxExp : public Exp {
public:
    T::Stm* stm;

    NxExp( T::Stm* stm ) : Exp( NX ), stm( stm ) {}

    T::Exp* UnEx() const override {
        std::cout << "Nx's UnEx() called" << std::endl;
        return new T::EseqExp( this->stm, new T::ConstExp( 0 ) );
    }
    T::Stm* UnNx() const override {
        std::cout << "Nx's UnNx() called" << std::endl;
        return this->stm;
    }
    Cx UnCx() const override {
        std::cout << "!![unpermitted]!!\n Nx's UnCx() called" << std::endl;
        assert( 0 );
        TR::Cx( nullptr, nullptr, nullptr );
    }
};

class CxExp : public Exp {
public:
    Cx cx;

    CxExp( struct Cx cx ) : Exp( CX ), cx( cx ) {}
    CxExp( PatchList* trues, PatchList* falses, T::Stm* stm ) : Exp( CX ), cx( trues, falses, stm ) {}

    T::Exp* UnEx() const override {
        std::cout << "Cx's UnEx() called" << std::endl;
        auto r = TEMP::Temp::NewTemp();
        auto t = TEMP::NewLabel();
        auto f = TEMP::NewLabel();
        TR::do_patch( this->cx.trues, t );
        TR::do_patch( this->cx.falses, f );
        return new T::EseqExp( new T::MoveStm( new T::TempExp( r ), new T::ConstExp( 1 ) ),
                               new T::EseqExp( this->cx.stm, new T::EseqExp( new T::LabelStm( f ), new T::EseqExp( new T::MoveStm( new T::TempExp( r ), new T::ConstExp( 0 ) ),
                                                                                                                   new T::EseqExp( new T::LabelStm( t ), new T::TempExp( r ) ) ) ) ) );
    }
    T::Stm* UnNx() const override {
        std::cout << "Cx's UnNx() called" << std::endl;
        return this->cx.stm;
    }
    Cx UnCx() const override {
        std::cout << "Cx's UnCx() called" << std::endl;
        return this->cx;
    }
};

static Access* AllocLocal( Level* level, bool escape, std::string sym ) {
    std::cout << "Entered AllocLocal. escape? " << escape << std::endl;
    F::Access* newAcc;
    if ( escape ) {
        level->frame->varCount += 1;
        newAcc      = level->frame->InFrame(  -level->frame->varCount * F::wordSize  );
        std::cout << "INframe. offset = " << -level->frame->varCount * F::wordSize << std::endl;
        newAcc->sym = sym;
    }
    else {
        // never happens in lab5.
        // everything is escape
    }
    std::cout << "create newAcc fine." << std::endl;
    level->frame->vars = new F::AccessList( newAcc, level->frame->vars );
    auto finAccess     = new Access( level, newAcc );
    return finAccess;
}
// static F::Access * TR::AllocLocalWrapped(F::Frame * f, std::string sym)
// F::Access *TR::AllocLocalWrapped(F::Frame *f, std::__1::string sym)

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

    auto label = TEMP::NewLabel();
    lv         = new Level( new F::Frame( *label ), nullptr );
    return lv;
}

F::FragList* addFragment( F::Frag* frag = nullptr ) {
    static F::FragList* fl = nullptr;
    if ( frag ) {
        std::cout << "[translate] [frag] called add fragment. kind: " << ( frag->kind == F::Frag::Kind::PROC ? "PROC" : "STRING" ) << std::endl;
        if ( fl ) {
            auto pt = fl;
            while ( pt->tail ) {
                pt = pt->tail;
            }
            pt->tail = new F::FragList( frag, nullptr );
        }
        else {
            fl = new F::FragList( frag, nullptr );
        }
    }
    return fl;
}

static std::vector< TEMP::Label* > looprec;

void addLoop( TEMP::Label* set ) {
    std::cout << "called addLoop. " << std::endl;
    looprec.push_back( set );
}

void popLoop() {
    return;
    std::cout << "called popLoop. " << std::endl;
    assert( looprec.size() );
    looprec.pop_back();
}

TEMP::Label* getLastLoop() {
    std::cout << "called getLastLoop. " << std::endl;
    assert( looprec.size() );
    return looprec[ looprec.size() - 1 ];
}

// TEMP::Label* lastLoop( TEMP::Label* set = nullptr ) {
//     std::cout << "[loop] called lastLoop with set = " << set << std::endl;
//     static TEMP::Label* lloop = nullptr;
//     if ( set ) {
//         std::cout << "[loop] [set] successfully set new loop" << std::endl;
//         lloop = set;
//     } else {
//         std::cout << "[loop] gonna return loop = " << lloop << std::endl;
//     }
//     return lloop;
// }

F::FragList* TranslateProgram( A::Exp* root ) {
    std::cout << "Called TranslateProgram(A::Exp* root)." << std::endl;

    auto mainLevel = Outermost()->NewLevel( Outermost(), TEMP::NamedLabel( "tigermain" ), nullptr );

    auto totalProgram = root->Translate( E::BaseVEnv(), E::BaseTEnv(), mainLevel, nullptr );
    addFragment( new F::ProcFrag( totalProgram.exp->UnNx(), mainLevel->frame ) );

    std::cout << " ~~~~ Completed Translation ~~~~" << std::endl;
    FILE* fptr;
    fptr = fopen( "uncanoned.s", "a" );
    fprintf( fptr, "\n\n\n============================\n\n\n\n" );

    totalProgram.exp->UnEx()->Print( fptr, 0 );

    std::cout << " ~~~~ Completed Printing ~~~~" << std::endl;
    fclose( fptr );
    return addFragment();
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

T::Exp* getExp( F::Access* acc, T::Exp* framePtr ) {
    std::cout << "called getExp. input framePtr = " << framePtr << std::endl;
    switch ( acc->kind ) {
    case F::Access::Kind::INFRAME: {
        std::cout << "with a INFRAME access" << std::endl;
        return new T::MemExp( new T::BinopExp( T::BinOp::PLUS_OP, framePtr, new T::ConstExp( reinterpret_cast< F::InFrameAccess* >( acc )->offset ) ) );
    }

    case F::Access::Kind::INREG: {
        std::cout << "deliberately makes a getExp assert, reject INREG type" << std::endl;
        assert(0);
        std::cout << "with a INREG access" << std::endl;
        return new T::TempExp( reinterpret_cast< F::InRegAccess* >( acc )->reg );
    }
    }
    std::cout << "with nothing! dead" << std::endl;
    assert(0);
}


static TR::Exp* findStaticLink( TR::Level* current, TR::Level* declare ) {
    std::cout << "called findStaticLink " << std::endl;
    T::Exp* result = new T::TempExp( current->frame->framePointer() );

    if ( current == declare ) {
        // at current level, needless to trace static link
        std::cout << "at current level, needless to trace static link" << std::endl;
        return new TR::ExExp( result );
    }


    TR::Level* node;
    for ( node = current; node != declare; node = node->parent ) {
        std::cout << "[translate] [fSL] going another layer. current = " << node << "; declare = " << declare << std::endl;
        auto sl = node->frame->args;
        // while (sl->tail) {
            // std::cout << "Getting tail" << std::endl;
            // sl = sl->tail;
        // }
        result        = getExp( sl->head, result );
    }

    return new TR::ExExp( result );
}

TR::ExpAndTy SimpleVar::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered SimpleVar::Translate. ** Trying to analyze " << this->sym->Name() << std::endl;
    // F::Access* accessObj    = nullptr;
    // auto       currentLevel = level;

    /*
    while ( accessObj == nullptr ) {
        auto accessList = currentLevel->frame->vars;
        while ( accessList ) {
            auto access = accessList->head;
            if ( access->kind == F::Access::Kind::INFRAME ) {
                std::cout << "  compare access sym " << access->sym << ", " << this->sym->Name() << std::endl;
                if ( access->sym == this->sym->Name() ) {
                    accessObj = access;
                    std::cout << "Found it!" << std::endl;
                    break;
                }
            }
            else if ( access->kind == F::Access::Kind::INREG ) {
                // not going to do this in lab5
            }

            accessList = accessList->tail;
        }
        std::cout << "accessList traverse over" << std::endl;
        if ( accessObj ) {
            std::cout << "Already found~" << std::endl;
            break;
        }
        if ( currentLevel->parent == nullptr ) {
            std::cout << "No... I can't find anything anywhere. " << std::endl;
            break;
        }
        std::cout << "I'll go one layer above. " << std::endl;
        currentLevel = currentLevel->parent;
    }

    currentLevel = level;

    while ( accessObj == nullptr ) {
        auto accessList = currentLevel->frame->args;
        while ( accessList ) {
            auto access = accessList->head;

            if ( access->kind == F::Access::Kind::INFRAME ) {
                std::cout << "  compare access sym " << access->sym << ", " << this->sym->Name() << std::endl;
                if ( access->sym == this->sym->Name() ) {
                    accessObj = access;
                    std::cout << "Found it!" << std::endl;
                    break;
                }
            }
            else if ( access->kind == F::Access::Kind::INREG ) {
                // not going to do this in lab5
            }

            accessList = accessList->tail;
        }

        std::cout << "accessList traverse over" << std::endl;
        if ( accessObj ) {
            std::cout << "Already found~" << std::endl;
            break;
        }
        if ( currentLevel->parent == nullptr ) {
            std::cout << "No... I can't find anything anywhere. " << std::endl;
            break;
        }
        std::cout << "I'll go one layer above. " << std::endl;
        currentLevel = currentLevel->parent;
    }

    std::cout << "**** successfully done the check ****" << std::endl;
    */

    // if ( true || var && var->kind == E::EnvEntry::Kind::VAR ) {
    //     auto tempExp = new T::TempExp( F::Frame::framePointer() );
    //     std::cout << "successfully build tempExp" << std::endl;
    //     std::cout << "going to call getExp with access: " << accessObj << std::endl;
    //     auto targetExp = A::getExp( accessObj, tempExp );
    //     std::cout << "successfully build targetExp " << targetExp << std::endl;
    //     auto exp = new TR::ExExp( targetExp );
    //     std::cout << "successfully generated exp " << exp << std::endl;
    //     return TR::ExpAndTy( exp, ( ( E::VarEntry* )var )->ty );
    // }

    E::EnvEntry* var = venv->Look( this->sym );

    TR::ExExp* exp = nullptr;

    if ( var->kind == E::EnvEntry::VAR ) {
        auto varP = reinterpret_cast< E::VarEntry* >( var );
        std::cout << "gotta varP: " << varP << std::endl;
        auto acc = varP->access;
        std::cout << "gotta acc: " << varP->access << ", acc.offset = " << reinterpret_cast<F::InFrameAccess*>(acc->access)->offset  << std::endl;
        exp = new TR::ExExp( getExp( acc->access, findStaticLink( level, acc->level )->UnEx() ) );
    }
    else {
        std::cout << "Bad EnvEntry kind " << var->kind << std::endl;
        assert( 0 );
    }
    assert( exp );
    auto varType = reinterpret_cast< E::VarEntry* >( var )->ty;
    // return TR::ExpAndTy(exp, varP->ty);
    // std::cout << "undefined variable " + this->sym->Name() << std::endl;
    // assert(0);
    // return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );

    return TR::ExpAndTy( exp, varType );
}

TR::ExpAndTy FieldVar::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered FieldVar::Translate." << std::endl;

    auto recT = this->var->Translate( venv, tenv, level, label );
    // if ( recT->kind == E ) {
    auto recEnt = ( E::VarEntry* )recT.ty;

    if ( recT.ty->kind != TY::Ty::Kind::RECORD ) {
        std::cout << "not a record type" << std::endl;
    }

    auto fields = ( ( TY::RecordTy* )( ( A::SimpleVar* )this->var )->Translate( venv, tenv, level, label ).ty )->fields;

    size_t counter = 0;
    while ( fields ) {
        std::cout << "checking field " << fields->head->name->Name() << " and " << this->sym->Name() << std::endl;
        if ( fields->head->name->Name() == this->sym->Name() ) {

            auto fieldExp = new TR::ExExp( new T::MemExp( new T::BinopExp( T::PLUS_OP, recT.exp->UnEx(), new T::ConstExp( counter * F::wordSize ) ) ) );
            return TR::ExpAndTy( fieldExp, fields->head->ty );
        }
        counter += 1;
        fields = fields->tail;
    }

    std::cout << "field " + this->sym->Name() + " doesn't exist" << std::endl;
    assert( 0 );
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
        auto indexT = this->subscript->Translate( venv, tenv, level, label );
        std::cout << "Translated indexT, which .exp = " << indexT.exp << std::endl;
        auto subscriptExp = new TR::ExExp( new T::MemExp( new T::BinopExp( T::PLUS_OP, recT.exp->UnEx(), new T::BinopExp( T::MUL_OP, indexT.exp->UnEx(), new T::ConstExp( F::wordSize ) ) ) ) );
        return TR::ExpAndTy( subscriptExp, ( ( TY::ArrayTy* )( recEnt ) )->ty );
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
    std::cout << "完蛋" << std::endl;
    assert( 0 );
    return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
}

TR::ExpAndTy NilExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered NilExp::Translate." << std::endl;
    return TR::ExpAndTy( new TR::ExExp( new T::ConstExp( 0 ) ), TY::NilTy::Instance() );
}

TR::ExpAndTy IntExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered IntExp::Translate." << std::endl;
    return TR::ExpAndTy( new TR::ExExp( new T::ConstExp( this->i ) ), TY::IntTy::Instance() );
}

TR::ExpAndTy StringExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered StringExp::Translate. s = " << this->s << std::endl;
    auto newLabel = TEMP::NewLabel();
    TR::addFragment( new F::StringFrag( newLabel, this->s ) );
    return TR::ExpAndTy( new TR::ExExp( new T::NameExp( newLabel ) ), TY::StringTy::Instance() );
}

TR::ExpAndTy CallExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered CallExp::Translate." << std::endl;

    auto fun = venv->Look( this->func );
    if ( !fun || fun->kind != E::EnvEntry::Kind::FUN ) {
        std::cout << "undefined function " + this->func->Name() << std::endl;
        assert( 0 );
        return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
    }

    std::cout << "found function " + this->func->Name() << std::endl;
    auto        formals = ( ( E::FunEntry* )fun )->formals;
    A::ExpList* arg     = this->args;
    TY::Ty*     retType;

    venv->BeginScope();

    // do not enter this place. will cause duplicate fragment creation. Evil!
    while (false && (arg || formals) ) {
        if ( arg && formals ) {
            std::cout << "comparing arg->head and formals->head" << std::endl;
            auto argT = arg->head->Translate( venv, tenv, level, label );
            if ( !argT.ty->IsSameType( formals->head ) ) {
                std::cout << "para type mismatch" << std::endl;
                std::cout << "ty1: " << argT.ty << "; ty2:" << formals->head << std::endl;
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

    auto rawExps = this->args;
    T::ExpList *finExps = nullptr, *headExp = nullptr;

    std::cout << "[callexp] start traversing rawExps" << std::endl;
    while ( rawExps ) {
        std::cout << "[callexp] while (rawExps) => " << rawExps << std::endl;
        finExps = new T::ExpList( rawExps->head->Translate( venv, tenv, level, label ).exp->UnEx(), finExps );
        if ( !headExp ) {
            headExp = finExps;
        }
        rawExps = rawExps->tail;
    }

    finExps->tail = new T::ExpList( new T::TempExp(level->frame->framePointer()), nullptr );
    venv->EndScope();
    auto finExp = new TR::ExExp( new T::CallExp( new T::NameExp( TEMP::NamedLabel( this->func->Name() ) ),  headExp ));
    return TR::ExpAndTy( finExp, result );
}

TR::ExpAndTy OpExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::string op_names[] = { "PLUS_OP", "MINUS_OP", "TIMES_OP", "DIVIDE_OP", "EQ_OP", "NEQ_OP", "LT_OP", "LE_OP", "GT_OP", "GE_OP" };
    std::cout << "Entered OpExp::Translate. OpCode: " << op_names[ this->oper ] << std::endl;

    auto leftT = left->Translate( venv, tenv, level, label );
    std::cout << "Analyzed leftT, which.exp = " << leftT.exp << std::endl;
    auto rightT = right->Translate( venv, tenv, level, label );
    std::cout << "Analyzed rightT, which.exp = " << rightT.exp << std::endl;
    T::BinOp op;
    T::RelOp rop;
    bool     isBinOpButNotRelOp = false;
    switch ( this->oper ) {
        // this->oper:
        // PLUS_OP, MINUS_OP, TIMES_OP, DIVIDE_OP, EQ_OP, NEQ_OP, LT_OP, LE_OP, GT_OP, GE_OP
        //
        // T::BinOp:
        // PLUS_OP, MINUS_OP, MUL_OP, DIV_OP, AND_OP, OR_OP, LSHIFT_OP, RSHIFT_OP, ARSHIFT_OP, XOR_OP
        // T::RelOp
        // EQ_OP, NE_OP, LT_OP, GT_OP, LE_OP, GE_OP, ULT_OP, ULE_OP, UGT_OP, UGE_OP

    case A::PLUS_OP:
        op                 = T::PLUS_OP;
        isBinOpButNotRelOp = true;
        break;
    case A::MINUS_OP:
        op                 = T::MINUS_OP;
        isBinOpButNotRelOp = true;
        break;
    case A::TIMES_OP:
        op                 = T::MUL_OP;
        isBinOpButNotRelOp = true;
        break;
    case A::DIVIDE_OP:
        op                 = T::DIV_OP;
        isBinOpButNotRelOp = true;
        break;
    case A::EQ_OP:
        rop                = T::EQ_OP;
        isBinOpButNotRelOp = false;
        break;
    case A::NEQ_OP:
        rop                = T::NE_OP;
        isBinOpButNotRelOp = false;
        break;
    case A::LT_OP:
        rop                = T::LT_OP;
        isBinOpButNotRelOp = false;
        break;
    case A::LE_OP:
        rop                = T::LE_OP;
        isBinOpButNotRelOp = false;
        break;
    case A::GT_OP:
        rop                = T::GT_OP;
        isBinOpButNotRelOp = false;
        break;
    case A::GE_OP:
        rop                = T::GE_OP;
        isBinOpButNotRelOp = false;
        break;
    default:
        std::cout << "! invalid oper " << this->oper << std::endl;
        // 去死吧
        assert( 0 );
    }
    TR::Exp* finExp;
    if ( isBinOpButNotRelOp ) {
        finExp = new TR::ExExp( new T::BinopExp( op, leftT.exp->UnEx(), rightT.exp->UnEx() ) );
    }
    else {
        auto stm    = new T::CjumpStm( rop, leftT.exp->UnEx(), rightT.exp->UnEx(), nullptr, nullptr );
        auto trues  = new TR::PatchList( &stm->true_label, nullptr );
        auto falses = new TR::PatchList( &stm->false_label, nullptr );
        finExp      = new TR::CxExp( TR::Cx( trues, falses, stm ) );
    }
    std::cout << "  making a comparison between <type> " << leftT.ty->ActualTy()->kind << " and <type> " << rightT.ty->ActualTy()->kind << std::endl;
    if ( leftT.ty->kind == TY::Ty::Kind::INT && rightT.ty->kind == TY::Ty::Kind::VOID ) {
        std::cout << "integer required" << std::endl;
        return TR::ExpAndTy( finExp, TY::IntTy::Instance() );
    }
    else if ( rightT.ty->kind == TY::Ty::Kind::INT && leftT.ty->kind == TY::Ty::Kind::VOID ) {
        std::cout << "integer required" << std::endl;
        return TR::ExpAndTy( finExp, TY::IntTy::Instance() );
    }
    else if ( this->oper == A::Oper::PLUS_OP && leftT.ty->kind == TY::Ty::Kind::INT && rightT.ty->kind == TY::Ty::Kind::STRING ) {
        std::cout << "integer required" << std::endl;
        return TR::ExpAndTy( finExp, TY::IntTy::Instance() );
    }
    else if ( this->oper == A::Oper::NEQ_OP && !leftT.ty->IsSameType( rightT.ty ) ) {
        std::cout << "same type required" << std::endl;
        return TR::ExpAndTy( finExp, TY::IntTy::Instance() );
    }
    else if ( leftT.ty->kind == TY::Ty::Kind::RECORD && !leftT.ty->IsSameType( rightT.ty ) ) {
        std::cout << "type mismatch" << std::endl;
        return TR::ExpAndTy( finExp, TY::IntTy::Instance() );
    }
    else if ( !leftT.ty->IsSameType( rightT.ty ) ) {
        std::cout << "same type required" << std::endl;
        return TR::ExpAndTy( finExp, TY::IntTy::Instance() );
    }
    else if ( leftT.ty->kind == TY::Ty::Kind::INT && rightT.ty->kind != TY::Ty::Kind::INT ) {
        std::cout << "integer required" << std::endl;
        return TR::ExpAndTy( finExp, TY::IntTy::Instance() );
    }
    return TR::ExpAndTy( finExp, TY::IntTy::Instance() );
}

TR::ExpAndTy RecordExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered RecordExp::Translate." << std::endl;
    auto recT = tenv->Look( this->typ );
    if ( !recT ) {
        std::cout << "undefined type rectype" << std::endl;
    }

    auto acc = TR::AllocLocal( level, true, "" );

    auto r = getExp( acc->access, new T::TempExp( level->frame->framePointer() ) );

    auto initfield = this->fields;
    auto copyfield = initfield;

    size_t offset = 0;

    while ( copyfield ) {
        ++offset;
        copyfield = copyfield->tail;
    }

    auto argsCount = offset;

    T::Stm* statements = nullptr;
    // T::Stm* retStm     = nullptr;

    size_t counter = 0;
    while ( initfield ) {
        --offset;
        auto actual = initfield->head;
        initfield   = initfield->tail;
        auto fieldInitExp =
            new T::MoveStm( new T::MemExp( new T::BinopExp( T::PLUS_OP, r, new T::ConstExp( counter * F::wordSize ) ) ), actual->exp->Translate( venv, tenv, level, label ).exp->UnEx() );

        if ( statements != nullptr ) {
            statements = new T::SeqStm( statements, fieldInitExp );
        }
        else {
            statements = fieldInitExp;
        }
        // if ( retStm == nullptr ) {
        //     retStm = statements;
        // }
        ++counter;
    }

    auto recordAlloc = new T::CallExp( new T::NameExp( TEMP::NamedLabel( "allocRecord" ) ), new T::ExpList( new T::ConstExp( argsCount * F::wordSize ), nullptr ) );
    auto init        = new T::MoveStm( r, recordAlloc );

    std::cout << "Going to exit from RecordExp. " << std::endl;
    // assert( retStm );
    return TR::ExpAndTy( new TR::ExExp( new T::EseqExp( new T::SeqStm( init, statements ), r ) ), recT );
}

TR::ExpAndTy SeqExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered SeqExp::Translate." << std::endl;
    ExpList* seq = this->seq;
    if ( seq == nullptr ) {
        return TR::ExpAndTy( new TR::NxExp( nullptr ), TY::VoidTy::Instance() );
    }

    std::vector< TR::Exp* > exps;

    TY::Ty* lastType = nullptr;
    while ( seq ) {
        // std::cout << "Add one translation layer" << std::endl;
        auto la = seq->head->Translate( venv, tenv, level, label );
        // std::cout << "la.exp = " << la.exp << std::endl;
        seq = seq->tail;

        auto newExp = la.exp;
        lastType    = la.ty;
        exps.push_back( newExp );
    }

    if ( exps.size() == 1 ) {
        std::cout << "[translate] [seq] exp.size = 1" << std::endl;
        return TR::ExpAndTy( exps[ 0 ], lastType );
    }
    else if ( exps.size() == 2 ) {
        std::cout << "[translate] [seq] exp.size = 2" << std::endl;
        return TR::ExpAndTy( new TR::ExExp( new T::EseqExp( exps[ 0 ]->UnNx(), exps[ 1 ]->UnEx() ) ), lastType );
    }

    // EseqExp(0->UnNx(), EseqExp(1->UnNx(), ))

    T::EseqExp* node       = new T::EseqExp( exps[ 0 ]->UnNx(), nullptr );
    auto        returnNode = node;
    for ( size_t i = 1; i < exps.size(); ++i ) {
        if ( i == exps.size() - 1 ) {
            node->exp = exps[ i ]->UnEx();
        }
        else {
            node->exp = new T::EseqExp( exps[ i ]->UnNx(), nullptr );
            node      = reinterpret_cast< T::EseqExp* >( node->exp );
        }
    }

    return TR::ExpAndTy( new TR::ExExp( returnNode ), lastType );
}

TR::ExpAndTy AssignExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered AssignExp::Translate." << std::endl;

    auto varKind = this->var->Translate( venv, tenv, level, label );
    std::cout << "translated varKind. which exp = " << varKind.exp << std::endl;

    auto expT = this->exp->Translate( venv, tenv, level, label );
    std::cout << "translated expT. which exp = " << expT.exp << std::endl;

    if ( varKind.ty->kind == TY::Ty::Kind::VOID ) {
    }
    else if ( varKind.ty->kind == TY::Ty::Kind::RECORD ) {
        if ( !expT.ty->IsSameType( varKind.ty ) ) {
            std::cout << "type mismatch: " << expT.ty << " and " << varKind.ty << std::endl;
        }
    }
    else {
        if ( !this->exp->Translate( venv, tenv, level, label ).ty->IsSameType( varKind.ty ) ) {
            std::cout << "unmatched assign exp" << std::endl;
        }
    }

    return TR::ExpAndTy( new TR::NxExp( new T::MoveStm( varKind.exp->UnEx(), expT.exp->UnEx() ) ), TY::VoidTy::Instance() );
}

TR::ExpAndTy IfExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered IfExp::Translate" << std::endl;

    auto testT = this->test->Translate( venv, tenv, level, label );
    std::cout << "translated testT. exp = " << testT.exp << std::endl;

    if ( testT.ty->kind != TY::Ty::Kind::INT ) {
        return TR::ExpAndTy( nullptr, TY::VoidTy::Instance() );
    }
    // randomly initialize anyway
    TR::ExpAndTy thenT( nullptr, nullptr ), elseT( nullptr, nullptr );
    TY::Ty*      ifReturnType = nullptr;

    if ( !this->elsee ) {
        std::cout << "this->elsee = empty. " << std::endl;
        thenT = this->then->Translate( venv, tenv, level, label );
        std::cout << "(no else) translated then, exp = " << thenT.exp << std::endl;
        if ( thenT.ty->kind != TY::Ty::Kind::VOID ) {
            std::cout << "if-then exp's body must produce no value" << std::endl;
            assert( 0 );
        }
        ifReturnType = nullptr;
    }
    else {
        std::cout << "this->elsee != empty. " << std::endl;
        thenT = this->then->Translate( venv, tenv, level, label );
        std::cout << "(exists else) translated then, exp = " << thenT.exp << std::endl;
        elseT = this->elsee->Translate( venv, tenv, level, label );
        std::cout << "(exists else) translated else, exp = " << elseT.exp << std::endl;
        if ( !thenT.ty->IsSameType( elseT.ty ) ) {
            std::cout << "then exp and else exp type mismatch" << std::endl;
            assert( 0 );
        }
        ifReturnType = elseT.ty;
    }

    T::Exp* r;

    auto t = TEMP::NewLabel(), f = TEMP::NewLabel(), done = TEMP::NewLabel();
    if ( ifReturnType ) {
        auto access = TR::AllocLocal( level, true, "__RETURN__" );
        r           = getExp( access->access, new T::TempExp( level->frame->framePointer() ) );
    }
    auto cx = testT.exp->UnCx();
    TR::do_patch( cx.trues, t );
    TR::do_patch( cx.falses, f );

    TR::Exp* finExp;
    if ( ifReturnType ) {
        /* if exp has a return value */
        std::cout << "IfExp: has a return type!" << std::endl;
        finExp = new TR::ExExp( new T::EseqExp(
            new T::SeqStm( cx.stm, new T::SeqStm( new T::LabelStm( t ), new T::SeqStm( new T::MoveStm( r, thenT.exp->UnEx() ),
                                                                                       new T::SeqStm( new T::JumpStm( new T::NameExp( done ), new TEMP::LabelList( done, nullptr ) ),
                                                                                                      new T::SeqStm( new T::LabelStm( f ), new T::SeqStm( new T::MoveStm( r, elseT.exp->UnEx() ),
                                                                                                                                                          new T::LabelStm( done ) ) ) ) ) ) ),
            r ) );

        return TR::ExpAndTy( finExp, ifReturnType );
    }
    else {
        std::cout << "IfExp: has no return type!" << std::endl;
        /* if exp has no return value */
        finExp = new TR::NxExp( new T::SeqStm( cx.stm, new T::SeqStm( new T::LabelStm( t ), new T::SeqStm( thenT.exp->UnNx(), new T::LabelStm( f ) ) ) ) );
        return TR::ExpAndTy( finExp, TY::VoidTy::Instance() );
    }
}

TR::ExpAndTy WhileExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered WhileExp::Translate." << std::endl;
    auto testT = this->test->Translate( venv, tenv, level, label );

    auto test = TEMP::NewLabel();
    auto t    = TEMP::NewLabel();
    auto done = TEMP::NewLabel();

    // manage loop stuff
    TR::addLoop( done );
    auto expAndTy = this->body->Translate( venv, tenv, level, label );
    TR::popLoop();

    if ( expAndTy.ty->kind != TY::Ty::Kind::VOID ) {
        std::cout << "while body must produce no value" << std::endl;
    }

    auto cond = testT.exp->UnCx();
    std::cout << "cond.stm = " << cond.stm << std::endl;
    TR::do_patch( cond.trues, t );
    TR::do_patch( cond.falses, done );
    // std::cout << "body.unnx: " <<  expAndTy.exp->UnNx() << std::endl;
    auto internalStm =
        new T::SeqStm( new T::LabelStm( test ),
                       new T::SeqStm( cond.stm, new T::SeqStm( new T::LabelStm( t ),
                                                               new T::SeqStm( expAndTy.exp->UnNx(), new T::SeqStm( new T::JumpStm( new T::NameExp( test ), new TEMP::LabelList( test, nullptr ) ),
                                                                                                                   new T::LabelStm( done ) ) ) ) ) );
    auto finWhileExp = new TR::NxExp( internalStm );

    return TR::ExpAndTy( finWhileExp, TY::VoidTy::Instance() );
}

TR::ExpAndTy ForExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered ForExp::Translate." << std::endl;

    auto done = TEMP::NewLabel(), start = TEMP::NewLabel(), t = TEMP::NewLabel();
    TR::addLoop( done );

    auto loTrans = this->lo->Translate( venv, tenv, level, done );
    std::cout << "loTrans success. loTrans.exp = " << loTrans.exp << std::endl;
    auto hiTrans = this->hi->Translate( venv, tenv, level, done );
    std::cout << "hiTrans success. hiTrans.exp = " << hiTrans.exp << std::endl;
    if ( hiTrans.ty->kind != TY::Ty::Kind::INT ) {
        std::cout << "for exp's range type is not integer" << std::endl;
    }
    if ( this->body->kind == A::Exp::Kind::ASSIGN ) {
        std::cout << "loop variable can't be assigned" << std::endl;
    }

    venv->BeginScope();
    auto loopVar  = TR::AllocLocal( level, true, this->var->Name() );
    auto envEntry = new E::VarEntry( loopVar, TY::IntTy::Instance(), true );

    venv->Enter( this->var, envEntry );
    ++level->frame->varCount;
    auto newAccess     = new F::InFrameAccess( -level->frame->varCount * ( F::wordSize ) );
    level->frame->vars = new F::AccessList( newAccess, level->frame->vars );
    

    auto bodyTrans = this->body->Translate( venv, tenv, level, done );

    auto i     = getExp( loopVar->access, new T::TempExp( level->frame->framePointer() ) );
    auto limit = getExp( newAccess, new T::TempExp( level->frame->framePointer() ) );

    venv->EndScope();
    
    /* first, put low limit to `loop` var and high limit to `limit` var  */ 
    auto finExp = new TR::NxExp(new T::SeqStm(new T::MoveStm(limit, hiTrans.exp->UnEx()), new T::SeqStm(new T::MoveStm(i, loTrans.exp->UnEx()), new T::SeqStm(new T::CjumpStm(T::LE_OP, i, limit, start, done),
    /* second, add 1 to the loop var and compare it with the limit var every time  */ 
    new T::SeqStm(new T::LabelStm(start), new T::SeqStm(bodyTrans.exp->UnNx(), new T::SeqStm(new T::CjumpStm(T::LT_OP, i, limit, t, done), new T::SeqStm(new T::LabelStm(t), new T::SeqStm(new T::MoveStm(i, new T::BinopExp(T::PLUS_OP, i, new T::ConstExp(1))),
    /* finally, decide if we want to go back to another loop (start label) or the done label */
    new T::SeqStm(new T::JumpStm(new T::NameExp(start), new TEMP::LabelList(start, nullptr)), new T::LabelStm(done)))))))))));

    return TR::ExpAndTy( finExp, TY::VoidTy::Instance() );
}

TR::ExpAndTy BreakExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered BreakExp::Translate." << std::endl;
    // return TR::ExpAndTy(new TR::ExExp(new T::ConstExp(0)), TY::VoidTy::Instance());
    return TR::ExpAndTy( new TR::NxExp( new T::JumpStm( new T::NameExp( TR::getLastLoop() ), new TEMP::LabelList( TR::getLastLoop(), nullptr ) ) ), TY::VoidTy::Instance() );
}

TR::ExpAndTy LetExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered LetExp::Translate." << std::endl;

    A::DecList* node = this->decs;

    std::vector< T::Stm* > stms;

    auto finStm = stms;
    venv->BeginScope();
    tenv->BeginScope();

    while ( node ) {
        std::cout << "[translate] [letexp] while!" << std::endl;
        auto headT = node->head->Translate( venv, tenv, level, label );
        node       = node->tail;

        std::cout << "[translate] [letexp] while out, stms going to push_back " << headT->UnNx() << std::endl;
        stms.push_back( headT->UnNx() );
    }

    std::cout << "LetExp Going to translate bodyT " << std::endl;
    auto bodyT = this->body->Translate( venv, tenv, level, label );
    std::cout << "LetExp translated bodyT, which.exp = " << bodyT.exp << std::endl;
    // return new T::EseqExp( stms, bodyT);
    tenv->EndScope();
    venv->EndScope();
    T::Exp* finExp = nullptr;
    if ( stms.size() == 1 ) {
        finExp = new T::EseqExp( stms[ 0 ], bodyT.exp->UnEx() );
    }
    else if ( stms.size() == 2 ) {
        finExp = new T::EseqExp( new T::SeqStm( stms[ 0 ], stms[ 1 ] ), bodyT.exp->UnEx() );
    }
    else {
        T::SeqStm* node_i = new T::SeqStm( stms[ 0 ], nullptr );
        finExp            = new T::EseqExp( node_i, bodyT.exp->UnEx() );
        for ( size_t i = 1; i < stms.size(); ++i ) {
            if ( i == stms.size() - 1 ) {
                node_i->right = stms[ i ];
            }
            else {
                node_i->right = new T::SeqStm( stms[ i ], nullptr );
                node_i        = reinterpret_cast< T::SeqStm* >( node_i->right );
            }
        }
    }
    assert( finExp );
    return TR::ExpAndTy( new TR::ExExp( finExp ), bodyT.ty );
}

TR::ExpAndTy ArrayExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered ArrayExp::Translate." << std::endl;
    auto    initTsl  = this->init->Translate( venv, tenv, level, label );
    auto    sizeTsl  = this->size->Translate( venv, tenv, level, label );
    T::Exp* arrayExp = new T::CallExp( new T::NameExp( TEMP::NamedLabel( "initArray" ) ), new T::ExpList( sizeTsl.exp->UnEx(), new T::ExpList( sizeTsl.exp->UnEx(), nullptr ) ) );

    return TR::ExpAndTy( new TR::ExExp( arrayExp ), tenv->Look( this->typ ) );
}

TR::ExpAndTy VoidExp::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered VoidExp::Translate." << std::endl;
    return TR::ExpAndTy( new TR::NxExp( nullptr ), TY::VoidTy::Instance() );
}

static TR::AccessList* wrapList( TR::Level* level, F::AccessList* f_accl ) {
    if ( !f_accl ) {
        return nullptr;
    }
    auto head = new TR::Access( level, f_accl->head );
    auto tail = wrapList( level, f_accl->tail );
    return new TR::AccessList( head, tail );
}

TR::AccessList* buildFormals( TR::Level* level ) {
    std::cout << "buildFormals called. level->frame: " << level->frame << std::endl;
    auto f_accl = level->frame->args;
    std::cout << "f_accl = " << f_accl << std::endl;
    auto tr_accl = wrapList( level, f_accl->tail );
    return tr_accl;
}

TR::Exp* FunctionDec::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered FunctionDec::Translate." << std::endl;
    std::vector< TR::Exp* > exps;
    FunDecList*             func = this->functions;

    while ( func ) {
        A::FunDec* f = func->head;
        std::cout << "Analyzing function " << f->name << std::endl;
        auto returnType  = f->result == nullptr ? TY::VoidTy::Instance() : tenv->Look( f->result )->ActualTy();
        auto formalTypes = TR::make_formal_tylist( tenv, f->params );

        U::BoolList *formalBools = nullptr, *start = nullptr;
        // A::FieldList* l = nullptr;

        auto formalTys = TR::make_formal_tylist( tenv, f->params );
        venv->Enter( f->name, new E::FunEntry( level, TEMP::NamedLabel( f->name->Name() ), formalTys, returnType ) );

        venv->BeginScope();

        auto l = f->params;
        while ( l ) {
            auto current = l->head->escape;
            auto symbol  = l->head->name->Name();
            if ( formalBools ) {
                formalBools->tail = new U::BoolList( current, symbol, nullptr );
                formalBools       = formalBools->tail;
            }
            else {
                formalBools = new U::BoolList( current, symbol, nullptr );
                start       = formalBools;
            }

            l = l->tail;
        }

        auto newlevel = level->NewLevel( level, TEMP::NamedLabel( f->name->Name() ), start );
        
        level         = newlevel;
        // newlevel->frame->name = *TEMP::NamedLabel(f->name->Name());
        newlevel->frame->functionName = f->name->Name();
        A::FieldList* fl              = nullptr;
        TY::TyList*   t               = formalTys;
        std::cout << "gonna build formals." << std::endl;
        auto formals = buildFormals( newlevel );
        std::cout << "formals built." << std::endl;
        fl = f->params;
        while ( fl ) {
            std::cout << "while #3. name: " << fl->head->name->Name() << ". fl, t, formals: " << fl << ", " << t << ", " << formals << std::endl;
            venv->Enter( fl->head->name, new E::VarEntry( formals->head, t->head ) );
            TR::AllocLocal(newlevel, true, fl->head->name->Name());
            fl      = fl->tail;
            t       = t->tail;
            formals = formals->tail;
        }
        TR::AllocLocal(newlevel, true, "__static_link__");
        std::cout << "while #3 end. " << std::endl;

        auto e = f->body->Translate( venv, tenv, newlevel, nullptr );

        auto finalExp = returnType->kind == TY::Ty::Kind::VOID ? e.exp : new TR::NxExp( new T::MoveStm( new T::TempExp( newlevel->frame->returnValue() ), e.exp->UnEx() ) );
        exps.push_back( finalExp );
        // Tr_procEntryExit(new_level, final_exp, Tr_formals(new_level));
        venv->EndScope();

        TR::addFragment( new F::ProcFrag( finalExp->UnNx(), newlevel->frame ) );
        func = func->tail;
    }

    if ( false ) {
        // misused return of functiondec. don't fall into this branch.
        assert( exps.size() );
        if ( exps.size() == 1 ) {
            return new TR::NxExp( exps[ 0 ]->UnNx() );
        }
        else if ( exps.size() == 2 ) {
            return new TR::NxExp( new T::SeqStm( exps[ 0 ]->UnNx(), exps[ 1 ]->UnNx() ) );
        }
        else {
            auto stm  = new T::SeqStm( exps[ 0 ]->UnNx(), nullptr );
            auto head = stm;
            for ( size_t i = 1; i < exps.size(); i++ ) {
                if ( i == exps.size() - 1 ) {
                    stm->right = exps[ i ]->UnNx();
                }
                else {
                    stm->right = new T::SeqStm( exps[ i ]->UnNx(), nullptr );
                    stm        = reinterpret_cast< T::SeqStm* >( stm->right );
                }
            }
            return new TR::NxExp( head );
        }
    }
    return new TR::NxExp( new T::ExpStm( new T::ConstExp( 0 ) ) );
}

TR::Exp* VarDec::Translate( S::Table< E::EnvEntry >* venv, S::Table< TY::Ty >* tenv, TR::Level* level, TEMP::Label* label ) const {
    std::cout << "Entered VarDec::Translate. going to declare var: " << this->var->Name() << std::endl;
    auto access = TR::AllocLocal( level, true, this->var->Name() );
    auto initT  = this->init->Translate( venv, tenv, level, label );
    if ( this->typ ) {
        std::cout << "explicit type" << tenv->Look( this->typ ) << std::endl;
        std::cout << "implicit type: " << initT.ty << std::endl;
        // TODO: Migrate Entry

        venv->Enter( this->var, new E::VarEntry( access, tenv->Look( this->typ ) ) );
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
        // TODO: Migrate Entry
        venv->Enter( this->var, new E::VarEntry( access, initT.ty ) );
    }

    // TR::Access* new_acc = TR::AllocLocal( level, true, this->var->Name() );
    std::cout << "AllocLocal fine" << std::endl;
    auto resultExp = new TR::NxExp( new T::MoveStm( access->access->ToExp( new T::TempExp( level->frame->framePointer() ) ), initT.exp->UnEx() ) );
    std::cout << "successfully generated resultExp" << resultExp << std::endl;
    return resultExp;
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

    return new TR::ExExp( new T::ConstExp( 0 ) );
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

#endif