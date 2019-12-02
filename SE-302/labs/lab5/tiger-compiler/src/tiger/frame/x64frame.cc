#include "tiger/frame/frame.h"

#include <string>

namespace F {

class InFrameAccess : public Access {
public:
    int offset;

    InFrameAccess( int offset ) : Access( INFRAME ), offset( offset ) {}
};

class InRegAccess : public Access {
public:
    TEMP::Temp* reg;

    InRegAccess( TEMP::Temp* reg ) : Access( INREG ), reg( reg ) {}
};

class X64Frame : public Frame {
    // TODO: Put your codes here (lab6).
    X64Frame() {}
};

F::Access* InFrame( int offset ) {
    return new F::InFrameAccess( offset );
}

F::Frame* newFrame( TEMP::Label name, U::BoolList* formals ) {
    F::AccessList* accListHead = new F::AccessList( nullptr, nullptr );
    F::AccessList* accListTail = new F::AccessList( nullptr, nullptr );
    int            offset      = F::wordSize;
    int            argCnt      = 0;
    while ( formals->tail ) {
        formals          = formals->tail;
        F::AccessList* p = new F::AccessList( nullptr, nullptr );
        p->head          = InFrame( offset );
        p->tail          = NULL;
        if ( accListTail == nullptr ) {
            accListHead = p;
            accListTail = p;
        }
        else {
            accListTail->tail = p;
            accListTail       = p;
        }
        offset += F::wordSize;
        ++argCnt;
    }
    F::Frame* f      = new F::Frame();
    f->name          = name;
    f->formals       = accListHead;
    f->argumentCount = argCnt;
    f->localVarCount = 0;
    return f;
}

}  // namespace F