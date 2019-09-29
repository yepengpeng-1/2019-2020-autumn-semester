#include "slp.h"
#include <iostream>

namespace A {
int A::CompoundStm::MaxArgs() const {
    int argsCount = std::max( stm1->MaxArgs(), stm2->MaxArgs() );
    return argsCount;
}

Table* A::CompoundStm::Interp( Table* t ) const {
    return stm2->Interp( stm1->Interp( t ) );
}

int A::AssignStm::MaxArgs() const {
    return exp->MaxArgs();
}

Table* A::AssignStm::Interp( Table* t ) const {
    IntAndTable* expResult = exp->Interp( t );
    return expResult->t->Update( id, expResult->i );
}

int A::PrintStm::MaxArgs() const {
    return exps->NumExps();
}

Table* A::PrintStm::Interp( Table* t ) const {
    return exps->prInterp( t );
}

int Table::Lookup( std::string key ) const {
    if ( id == key ) {
        return value;
    }
    else if ( tail != nullptr ) {
        return tail->Lookup( key );
    }
    else {
        assert( false );
    }
}

int A::PairExpList::NumExps() const {
    return 1 + tail->NumExps();
}

int A::PairExpList::MaxArgs() const {
    return std::max( head->MaxArgs(), tail->MaxArgs() );
}

IntAndTable* A::PairExpList::Interp( Table* t ) const {
    IntAndTable* node  = head->Interp( t );
    int          value = node->i;
    node               = tail->Interp( node->t );
    return new IntAndTable( value, node->t );
}

int A::LastExpList::NumExps() const {
    return 1;
}

int A::LastExpList::MaxArgs() const {
    return last->MaxArgs();
}

IntAndTable* A::LastExpList::Interp( Table* t ) const {
    IntAndTable* node = last->Interp( t );
    return new IntAndTable( node->i, node->t );
}

int A::IdExp::MaxArgs() const {
    return 0;
}

IntAndTable* A::IdExp::Interp( Table* t ) const {
    return new IntAndTable( t->Lookup( id ), t );
}

int A::NumExp::MaxArgs() const {
    return 0;
}

IntAndTable* A::NumExp::Interp( Table* t ) const {
    return new IntAndTable( num, t );
}

int A::OpExp::MaxArgs() const {
    return 0;
}

IntAndTable* A::OpExp::Interp( Table* t ) const {
    int          result = 0;
    IntAndTable* node;

    int lValue = 0, rValue = 0;

    node   = left->Interp( t );
    lValue = node->i;

    node   = right->Interp( node->t );
    rValue = node->i;

    switch ( oper ) {
    case PLUS:
        result = lValue + rValue;
        break;
    case MINUS:
        result = lValue - rValue;
        break;
    case TIMES:
        result = lValue * rValue;
        break;
    case DIV:
        result = lValue / rValue;
        break;
    }
    return new IntAndTable( result, node->t );
}

int A::EseqExp::MaxArgs() const {
    return std::max( stm->MaxArgs(), exp->MaxArgs() );
}

IntAndTable* A::EseqExp::Interp( Table* t ) const {
    Table* node = stm->Interp( t );
    return exp->Interp( node );
}

Table* A::PairExpList::prInterp( Table* t ) const {
    IntAndTable* node = this->Interp( t );
    std::cout << node->i << ' ';
    tail->prInterp( node->t );
    return node->t;
}

Table* A::LastExpList::prInterp( Table* t ) const {
    IntAndTable* node = this->Interp( t );
    std::cout << node->i << std::endl;
    return node->t;
}

Table* Table::Update( std::string key, int value ) const {
    return new Table( key, value, this );
}
}  // namespace A
