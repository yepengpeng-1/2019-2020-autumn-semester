#include "tiger/semant/semant.h"
#include "tiger/errormsg/errormsg.h"
#include <iostream>

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
    return new TY::FieldList( new TY::Field( fields->head->name, ty ), make_fieldlist( tenv, fields->tail ) );
}

}  // namespace

namespace A {

TY::Ty* SimpleVar::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered SimpleVar::SemAnalyse; labelcount: " << labelcount << std::endl;
    E::EnvEntry* var = venv->Look( this->sym );
    if ( var->kind == E::EnvEntry::Kind::VAR ) {
        return ( ( E::VarEntry* )var )->ty;
    }
    return TY::VoidTy::Instance();
}

TY::Ty* FieldVar::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered FieldVar::SemAnalyse; labelcount: " << labelcount << std::endl;
    return TY::VoidTy::Instance();
}

TY::Ty* SubscriptVar::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered SubscriptVar::SemAnalyse; labelcount: " << labelcount << std::endl;
    // TODO: Put your codes here (lab4).
    return TY::VoidTy::Instance();
}

TY::Ty* VarExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered VarExp::SemAnalyse; labelcount: " << labelcount << std::endl;
    // TODO: Put your codes here (lab4).
    return TY::VoidTy::Instance();
}

TY::Ty* NilExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered NilExp::SemAnalyse; labelcount: " << labelcount << std::endl;
    // TODO: Put your codes here (lab4).
    return TY::VoidTy::Instance();
}

TY::Ty* IntExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered IntExp::SemAnalyse; labelcount: " << labelcount << std::endl;
    // TODO: Put your codes here (lab4).
    return TY::IntTy::Instance();
}

TY::Ty* StringExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered StringExp::SemAnalyse; labelcount: " << labelcount << std::endl;
    // TODO: Put your codes here (lab4).
    return TY::StringTy::Instance();
}

TY::Ty* CallExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered CallExp::SemAnalyse; labelcount: " << labelcount << std::endl;
    // TODO: Put your codes here (lab4).
    return TY::VoidTy::Instance();
}

TY::Ty* OpExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered OpExp::SemAnalyse; labelcount: " << labelcount << std::endl;
    if ( left->SemAnalyze( venv, tenv, labelcount ) != right->SemAnalyze( venv, tenv, labelcount ) ) {
        errormsg.Error( labelcount, "same type required" );
    }
    return TY::IntTy::Instance();
}

TY::Ty* RecordExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered RecordExp::SemAnalyse; labelcount: " << labelcount << std::endl;
    // TODO: Put your codes here (lab4).
    return TY::VoidTy::Instance();
}

TY::Ty* SeqExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered SeqExp::SemAnalyse; labelcount: " << labelcount << std::endl;
    // TODO: Put your codes here (lab4).
    return TY::VoidTy::Instance();
}

TY::Ty* AssignExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered AssignExp::SemAnalyse; labelcount: " << labelcount << std::endl;
    // TODO: Put your codes here (lab4).
    return TY::VoidTy::Instance();
}

TY::Ty* IfExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered IfExp::SemAnalyse; labelcount: " << labelcount << std::endl;
    // TODO: Put your codes here (lab4).
    return TY::VoidTy::Instance();
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
    // TODO: Put your codes here (lab4).
    return TY::VoidTy::Instance();
}

TY::Ty* LetExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered LetExp::SemAnalyse; labelcount: " << labelcount << std::endl;
    A::DecList* node = this->decs;
    while ( node != nullptr ) {
        node->head->SemAnalyze( venv, tenv, labelcount );
        node = node->tail;
    }

    return TY::VoidTy::Instance();
}

TY::Ty* ArrayExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered ArrayExp::SemAnalyse; labelcount: " << labelcount << std::endl;
    // TODO: Put your codes here (lab4).
    return TY::VoidTy::Instance();
}

TY::Ty* VoidExp::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered VoidExp::SemAnalyse; labelcount: " << labelcount << std::endl;
    // TODO: Put your codes here (lab4).
    return TY::VoidTy::Instance();
}

void FunctionDec::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered FunctionDec::SemAnalyse; labelcount: " << labelcount << std::endl;
    // TODO: Put your codes here (lab4).
}

void VarDec::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered VarDec::SemAnalyse; labelcount: " << labelcount << std::endl;
    // TODO: Put your codes here (lab4).
}

void TypeDec::SemAnalyze( VEnvType venv, TEnvType tenv, int labelcount ) const {
    std::cout << "Entered TypeDec::SemAnalyse; labelcount: " << labelcount << std::endl;
    // TODO: Put your codes here (lab4).
}

TY::Ty* NameTy::SemAnalyze( TEnvType tenv ) const {
    std::cout << "Entered NameTy::SemAnalyse;" << std::endl;
    // TODO: Put your codes here (lab4).
    return TY::VoidTy::Instance();
}

TY::Ty* RecordTy::SemAnalyze( TEnvType tenv ) const {
    std::cout << "Entered RecordTy::SemAnalyse;" << std::endl;
    // TODO: Put your codes here (lab4).
    return TY::VoidTy::Instance();
}

TY::Ty* ArrayTy::SemAnalyze( TEnvType tenv ) const {
    std::cout << "Entered ArrayTy::SemAnalyse;" << std::endl;
    // TODO: Put your codes here (lab4).
    return TY::VoidTy::Instance();
}

}  // namespace A

namespace SEM {
void SemAnalyze( A::Exp* root ) {
    if ( root )
        root->SemAnalyze( E::BaseVEnv(), E::BaseTEnv(), 0 );
}
}  // namespace SEM
