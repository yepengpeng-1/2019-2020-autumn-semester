#include "tiger/escape/escape.h"

namespace ESC {

void traverseExp( S::Table< EscapeEntry >* eenv, int depth, A::Exp* e ) {
    switch ( e->kind ) {
    case A::Exp::Kind::ARRAY: {
        auto arrayExp = reinterpret_cast< A::ArrayExp* >( e );
        traverseExp( eenv, depth, arrayExp->init );
        traverseExp( eenv, depth, arrayExp->size );
    } break;
    case A::Exp::Kind::ASSIGN: {
        auto assignExp = reinterpret_cast< A::AssignExp* >( e );
        traverseVar( eenv, depth, assignExp->var );
        traverseExp( eenv, depth, assignExp->exp );
    } break;
    case A::Exp::Kind::BREAK: {
        auto breakExp = reinterpret_cast< A::BreakExp* >( e );
    } break;
    case A::Exp::Kind::CALL: {
        auto callExp = reinterpret_cast< A::CallExp* >( e );
        auto args    = callExp->args;
        while ( args ) {
            traverseExp( eenv, depth, args->head );
            args = args->tail;
        }
    } break;
    case A::Exp::Kind::FOR: {
        auto forExp = reinterpret_cast< A::ForExp* >( e );
        traverseExp( eenv, depth, forExp->lo );
        traverseExp( eenv, depth, forExp->hi );
        eenv->BeginScope();
        eenv->Enter( forExp->var, new ESC::EscapeEntry( depth + 1, &forExp->escape ) );
        traverseExp( eenv, depth, forExp->body );
        eenv->EndScope();
    } break;
    case A::Exp::Kind::IF: {
        auto ifExp = reinterpret_cast< A::IfExp* >( e );
        traverseExp( eenv, depth, ifExp->test );
        traverseExp( eenv, depth, ifExp->then );
        if ( ifExp->elsee ) {
            traverseExp( eenv, depth, ifExp->elsee );
        }
    } break;
    case A::Exp::Kind::INT: {
        auto intExp = reinterpret_cast< A::IntExp* >( e );
    } break;
    case A::Exp::Kind::LET: {
        auto letExp = reinterpret_cast< A::LetExp* >( e );
        auto decs   = letExp->decs;
        while ( decs ) {
            auto dec = decs->head;
            decs     = decs->tail;
            traverseDec( eenv, depth, dec );
        }
        traverseExp( eenv, depth, letExp->body );
    } break;
    case A::Exp::Kind::NIL: {
        auto nilExp = reinterpret_cast< A::NilExp* >( e );
    } break;
    case A::Exp::Kind::OP: {
        auto opExp = reinterpret_cast< A::OpExp* >( e );
        traverseExp( eenv, depth, opExp->left );
        traverseExp( eenv, depth, opExp->right );
    } break;
    case A::Exp::Kind::RECORD: {
        auto recordExp = reinterpret_cast< A::RecordExp* >( e );
        auto fields    = recordExp->fields;
        while ( fields ) {
            traverseExp( eenv, depth, fields->head->exp );
            fields = fields->tail;
        }
    } break;
    case A::Exp::Kind::SEQ: {
        auto seqExp = reinterpret_cast< A::SeqExp* >( e );
        auto exps   = seqExp->seq;
        while ( exps ) {
            traverseExp( eenv, depth, exps->head );
            exps = exps->tail;
        }
    } break;
    case A::Exp::Kind::STRING: {
        auto stringExp = reinterpret_cast< A::StringExp* >( e );
    } break;
    case A::Exp::Kind::VAR: {
        auto varExp = reinterpret_cast< A::VarExp* >( e );
        traverseVar( eenv, depth, varExp->var );
    } break;
    case A::Exp::Kind::VOID: {
        auto voidExp = reinterpret_cast< A::VoidExp* >( e );
    } break;
    case A::Exp::Kind::WHILE: {
        auto whileExp = reinterpret_cast< A::WhileExp* >( e );
        traverseExp( eenv, depth, whileExp->test );
        traverseExp( eenv, depth, whileExp->body );
    } break;
    default:
        std::cerr << "invalid A::Exp kind " << e->kind << std::endl;
        assert( 0 );
        break;
    }
}

void traverseDec( S::Table< EscapeEntry >* eenv, int depth, A::Dec* d ) {
    switch ( d->kind ) {
    case A::Dec::Kind::FUNCTION: {
        auto functionDec = reinterpret_cast< A::FunctionDec* >( d );
        auto functions   = functionDec->functions;
        while ( functions ) {
            auto body = functions->head;
            functions = functions->tail;
            eenv->BeginScope();
            auto params = body->params;
            while ( params ) {
                auto param    = params->head;
                params        = params->tail;
                param->escape = false;
                eenv->Enter( param->name, new ESC::EscapeEntry( depth + 1, &param->escape ) );
            }
            traverseExp( eenv, depth + 1, body->body );
            eenv->EndScope();
        }
    } break;
    case A::Dec::Kind::TYPE: {
        auto typeDec = reinterpret_cast< A::TypeDec* >( d );
    } break;
    case A::Dec::Kind::VAR: {
        auto varDec = reinterpret_cast< A::VarDec* >( d );
        traverseExp( eenv, depth, varDec->init );
        varDec->escape = false;
        eenv->Enter( varDec->var, new ESC::EscapeEntry( depth, &varDec->escape ) );
    } break;
    default:
        std::cerr << "invalid A::Dec kind " << d->kind << std::endl;
        assert( 0 );
        break;
    }
}

void traverseVar( S::Table< EscapeEntry >* eenv, int depth, A::Var* v ) {
    switch ( v->kind ) {
    case A::Var::Kind::FIELD: {
        auto fieldVar = reinterpret_cast< A::FieldVar* >( v );
        traverseVar( eenv, depth, fieldVar->var );
    } break;
    case A::Var::Kind::SIMPLE: {
        auto simpleVar = reinterpret_cast< A::SimpleVar* >( v );
        auto symbol    = eenv->Look( simpleVar->sym );
        if ( symbol && depth > symbol->depth ) {
            *symbol->escape = true;
        }
    } break;
    case A::Var::Kind::SUBSCRIPT: {
        auto subscriptVar = reinterpret_cast< A::SubscriptVar* >( v );
        traverseVar( eenv, depth, subscriptVar->var );
        traverseExp( eenv, depth, subscriptVar->subscript );
    } break;
    default:
        std::cerr << "invalid A::Var kind " << v->kind << std::endl;
        assert( 0 );
        break;
    }
}  // namespace ESC

void FindEscape( A::Exp* exp ) {
    auto escapes = new S::Table< EscapeEntry >();
    traverseExp( escapes, 0, exp );
}

}  // namespace ESC