#include "tiger/semant/semant.h"
#include "tiger/errormsg/errormsg.h"
#include <iostream>
#include <queue>

extern EM::ErrorMsg errormsg;

using VEnvType = S::Table< E::EnvEntry >*;
using TEnvType = S::Table< TY::Ty >*;

namespace {
static TY::TyList* make_formal_tylist( TEnvType tenv, A::FieldList* params ) {
    if ( params == nullptr ) {
        return nullptr;
    }

    TY::Ty* ty = tenv->Look( params->head->typ );
    if ( ty == nullptr ) {
        errormsg.Error( params->head->pos, "undefined type %s", params->head->typ->Name().c_str() );
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
        errormsg.Error( 0, " undefined type " + fields->head->typ->Name() );
    }
    return new TY::FieldList( new TY::Field( fields->head->name, ty ), make_fieldlist( tenv, fields->tail ) );
}

static TY::FieldList* make_fieldlist_from_e( TEnvType tenv, A::EFieldList* fields ) {
    if ( fields == nullptr ) {
        return nullptr;
    }

    TY::Ty* ty = fields->head->exp->SemAnalyze( nullptr, tenv, 0 );
    std::cout << " make_fieldlist kind called. " << fields->head->name->Name() << std::endl;
    if ( !ty ) {
    }
    return new TY::FieldList( new TY::Field( fields->head->name, ty ), make_fieldlist_from_e( tenv, fields->tail ) );
}

}  // namespace

namespace A {

TY::Ty* SimpleVar::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered SimpleVar::SemAnalyse; labelcount: " << labelcount << std::endl;
    E::EnvEntry* var = venv->Look( this->sym );
    if ( var && var->kind == E::EnvEntry::Kind::VAR ) {
        return ( ( E::VarEntry* )var )->ty;
    }
    errormsg.Error( labelcount, "undefined variable " + this->sym->Name() );
    return TY::VoidTy::Instance();
}

TY::Ty* FieldVar::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered FieldVar::SemAnalyse; labelcount: " << labelcount << std::endl;
    auto recT = this->var->SemAnalyze( venv, tenv, labelcount );
    // if ( recT->kind == E ) {
    auto recEnt = ( E::VarEntry* )recT;

    if ( this->var->kind != A::Var::Kind::FIELD ) {
        errormsg.Error( labelcount, "unmatched assign exp" );
    }

    auto fields = ( ( TY::RecordTy* )( ( A::SimpleVar* )this->var )->SemAnalyze( venv, tenv, labelcount ) )->fields;
    while ( fields ) {
        std::cout << "checking field " << fields->head->name->Name() << " and " << this->sym->Name() << std::endl;
        if ( fields->head->name->Name() == this->sym->Name() ) {
            return fields->head->ty;
        }
        fields = fields->tail;
    }

    errormsg.Error( labelcount, "field " + this->sym->Name() + " doesn't exist" );
    // }
}

TY::Ty* SubscriptVar::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered SubscriptVar::SemAnalyse; labelcount: " << labelcount << std::endl;
    // TODO: Put your codes here (lab4).
    return TY::VoidTy::Instance();
}

TY::Ty* VarExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered VarExp::SemAnalyse; labelcount: " << labelcount << std::endl;
    if ( this->var->kind == A::Var::Kind::SIMPLE ) {
        std::cout << "analyse a SIMPLE var" << std::endl;
        A::SimpleVar* spvar = ( A::SimpleVar* )this->var;
        return spvar->SemAnalyze( venv, tenv, labelcount );
    }
    else if ( this->var->kind == A::Var::Kind::FIELD ) {
        std::cout << "analyse a FIELD var" << std::endl;
        A::FieldVar* fvar = ( A::FieldVar* )this->var;
        return fvar->SemAnalyze( venv, tenv, labelcount );
    }
    else if ( this->var->kind == A::Var::Kind::SUBSCRIPT ) {
        std::cout << "analyse a SUBSCRIPT var" << std::endl;
        A::SubscriptVar* svar = ( A::SubscriptVar* )this->var;
        return svar->SemAnalyze( venv, tenv, labelcount );
    }
    return TY::VoidTy::Instance();
}

TY::Ty* NilExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered NilExp::SemAnalyse; labelcount: " << labelcount << std::endl;
    return TY::NilTy::Instance();
}

TY::Ty* IntExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered IntExp::SemAnalyse; labelcount: " << labelcount << std::endl;
    return TY::IntTy::Instance();
}

TY::Ty* StringExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered StringExp::SemAnalyse; labelcount: " << labelcount << std::endl;
    return TY::StringTy::Instance();
}

TY::Ty* CallExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered CallExp::SemAnalyse; labelcount: " << labelcount << std::endl;
    auto fun = venv->Look( this->func );
    if ( !fun || fun->kind != E::EnvEntry::Kind::FUN ) {
        errormsg.Error( labelcount, "undefined function " + this->func->Name() );
        return TY::VoidTy::Instance();
    }
    A::ExpList* arg = this->args;
    TY::Ty*     retType;
    while ( arg ) {
        retType = arg->head->SemAnalyze( venv, tenv, labelcount );
        arg     = arg->tail;
    }
    auto result = ( ( E::FunEntry* )fun )->result;
    if ( !result && retType->kind != TY::Ty::Kind::VOID ) {
        // errormsg.Error( labelcount, "procedure returns value" );
        return TY::VoidTy::Instance();
    }
    if ( result->IsSameType( retType ) ) {
        std::cout << "callexp result matches retType" << std::endl;
        return result;
    }
}

TY::Ty* OpExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered OpExp::SemAnalyse; labelcount: " << labelcount << std::endl;

    auto leftT  = left->SemAnalyze( venv, tenv, labelcount );
    auto rightT = right->SemAnalyze( venv, tenv, labelcount );
    std::cout << "  making a comparison between <type> " << leftT->ActualTy()->kind << " and <type> " << rightT->ActualTy()->kind << std::endl;
    if ( leftT->kind == TY::Ty::Kind::INT && rightT->kind == TY::Ty::Kind::VOID ) {
        errormsg.Error( labelcount, "integer required" );
        return TY::IntTy::Instance();
    }
    else if ( !leftT->IsSameType( rightT ) ) {
        errormsg.Error( labelcount, "same type required" );
        return TY::VoidTy::Instance();
    }
    else if ( leftT->kind == TY::Ty::Kind::INT && rightT->kind != TY::Ty::Kind::INT ) {
        errormsg.Error( labelcount, "integer required" );
        return TY::IntTy::Instance();
    }
    return TY::IntTy::Instance();
}

TY::Ty* RecordExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered RecordExp::SemAnalyse; labelcount: " << labelcount << std::endl;
    auto recT = tenv->Look( this->typ );

    return new TY::RecordTy( make_fieldlist_from_e( tenv, this->fields ) );
}

TY::Ty* SeqExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered SeqExp::SemAnalyse; labelcount: " << labelcount << std::endl;
    ExpList* seq  = this->seq;
    TY::Ty*  last = nullptr;
    while ( seq != nullptr ) {
        last = seq->head->SemAnalyze( venv, tenv, labelcount );
        seq  = seq->tail;
    }
    return last;
}

TY::Ty* AssignExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered AssignExp::SemAnalyse; labelcount: " << labelcount << std::endl;
    this->exp->SemAnalyze( venv, tenv, labelcount );
    this->var->SemAnalyze( venv, tenv, labelcount );
    return TY::VoidTy::Instance();
}

TY::Ty* IfExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered IfExp::SemAnalyse; labelcount: " << labelcount << std::endl;
    if ( this->test->SemAnalyze( venv, tenv, labelcount )->kind != TY::Ty::Kind::INT ) {
        return TY::VoidTy::Instance();
    }

    if ( !this->elsee ) {
        if ( this->then->SemAnalyze( venv, tenv, labelcount )->kind != TY::Ty::Kind::VOID ) {
            errormsg.Error( labelcount, "if-then exp's body must produce no value" );
        }
        return TY::VoidTy::Instance();
    }
    else {
        this->then->SemAnalyze( venv, tenv, labelcount );
        return this->elsee->SemAnalyze( venv, tenv, labelcount );
    }
}

TY::Ty* WhileExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered WhileExp::SemAnalyse; labelcount: " << labelcount << std::endl;
    if ( this->body->SemAnalyze( venv, tenv, labelcount )->kind != TY::Ty::Kind::VOID ) {
        errormsg.Error( labelcount, "while body must produce no value" );
    }
    return TY::VoidTy::Instance();
}

TY::Ty* ForExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered ForExp::SemAnalyse; labelcount: " << labelcount << std::endl;

    if ( this->hi->SemAnalyze( venv, tenv, labelcount )->kind != TY::Ty::Kind::INT ) {
        errormsg.Error( labelcount, "for exp's range type is not integer" );
    }
    if ( this->body->kind == A::Exp::Kind::ASSIGN ) {
        errormsg.Error( labelcount, "loop variable can't be assigned" );
    }
    return TY::VoidTy::Instance();
}

TY::Ty* BreakExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered BreakExp::SemAnalyse; labelcount: " << labelcount << std::endl;
    return TY::VoidTy::Instance();
}

TY::Ty* LetExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered LetExp::SemAnalyse; labelcount: " << labelcount << std::endl;
    A::DecList* node = this->decs;
    while ( node ) {
        // std::cout << "while!" << std::endl;
        node->head->SemAnalyze( venv, tenv, labelcount );
        node = node->tail;
    }

    return this->body->SemAnalyze( venv, tenv, labelcount );
}

TY::Ty* ArrayExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered ArrayExp::SemAnalyse; labelcount: " << labelcount << std::endl;
    return tenv->Look( typ );
}

TY::Ty* VoidExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered VoidExp::SemAnalyse; labelcount: " << labelcount << std::endl;
    return TY::VoidTy::Instance();
}

void FunctionDec::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered FunctionDec::SemAnalyse; labelcount: " << labelcount << std::endl;
    FunDecList* func = this->functions;
    while ( func ) {
        auto head = func->head;
        if ( head->result ) {
            venv->Enter( head->name, new E::FunEntry( make_formal_tylist( tenv, head->params ), tenv->Look( head->result ) ) );
        }
        else {
            venv->Enter( head->name, new E::FunEntry( make_formal_tylist( tenv, head->params ), nullptr ) );
        }
        if ( func->tail ) {
            venv->Enter( func->tail->head->name, new E::FunEntry( nullptr, TY::VoidTy::Instance() ) );
        }
        auto   field           = head->params;
        size_t inputParamCount = 0;
        while ( field ) {
            auto fh = field->head;
            venv->Enter( fh->name, new E::VarEntry( tenv->Look( fh->typ ) ) );
            std::cout << "constructing formal: " << fh->name->Name() << ", type: " << fh->typ->Name() << std::endl;
            field = field->tail;
            ++inputParamCount;
        }
        auto retType = head->body->SemAnalyze( venv, tenv, labelcount );

        field = head->params;
        while ( inputParamCount > 0 ) {
            std::cout << "try pop one out" << std::endl;
            venv->Pop();

            --inputParamCount;
        }
        std::cout << "function declared result: " << ( head->result ? head->result->Name() : "NULL" ) << std::endl;
        if ( head->result == nullptr && retType->kind != TY::Ty::Kind::VOID ) {
            errormsg.Error( labelcount, "procedure returns value" );
        }
        std::cout << "head->result: " << head->result << ", retType->kind: " << retType->kind << std::endl;

        func = func->tail;
    }
}

void VarDec::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered VarDec::SemAnalyse; labelcount: " << labelcount << std::endl;
    if ( this->typ ) {
        std::cout << "explicit type" << tenv->Look( this->typ ) << std::endl;
        venv->Enter( this->var, new E::VarEntry( tenv->Look( this->typ ) ) );
        if ( !tenv->Look( this->typ )->IsSameType( this->init->SemAnalyze( venv, tenv, labelcount ) ) ) {
            errormsg.Error( labelcount, "same type required" );
        }
    }
    else {
        std::cout << "implicit type: " << this->init->SemAnalyze( venv, tenv, labelcount ) << std::endl;
        venv->Enter( this->var, new E::VarEntry( this->init->SemAnalyze( venv, tenv, labelcount ) ) );
    }
    this->init->SemAnalyze( venv, tenv, labelcount );
}

void TypeDec::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
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

    std::cout << "Entered TypeDec::SemAnalyse; labelcount: " << labelcount << std::endl;
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
            auto ans = nt->ty->SemAnalyze( tenv );
            if ( ans ) {
                unmovedTimes = 0;
                tenv->Enter( nt->name, ans );
            }
            else {
                queue.push_back( nt );
                unmovedTimes += 1;
            }
        }
        if ( queue.size() ) {
            errormsg.Error( labelcount, "illegal type cycle" );
        }
    }
    else {
        auto nt = queue[ 0 ];
        tenv->Enter( nt->name, TY::NilTy::Instance() );
        std::cout << "queue.size() <= 1" << std::endl;

        auto ans = nt->ty->SemAnalyze( tenv );
        if ( ans ) {
            tenv->Set( nt->name, ans );
        }
        else {
            errormsg.Error( labelcount, " undefined type " );
        }
    }
}  // namespace A

TY::Ty* NameTy::SemAnalyze( TEnvType tenv ) const {
    std::cout << "Entered NameTy::SemAnalyse;" << std::endl;
    auto ty = tenv->Look( this->name );
    if ( ty ) {
        return ty;
    }
    else {
        errormsg.Error( 0, " undefined type " + this->name->Name() );
    }
}

TY::Ty* RecordTy::SemAnalyze( TEnvType tenv ) const {
    std::cout << "Entered RecordTy::SemAnalyse;" << std::endl;
    return new TY::RecordTy( make_fieldlist( tenv, this->record ) );
}

TY::Ty* ArrayTy::SemAnalyze( TEnvType tenv ) const {
    std::cout << "Entered ArrayTy::SemAnalyse;" << std::endl;
    return tenv->Look( this->array );
}

}  // namespace A

namespace SEM {
void SemAnalyze( A::Exp* root ) {
    if ( root )
        root->SemAnalyze( E::BaseVEnv(), E::BaseTEnv(), 0 );
}
}  // namespace SEM
