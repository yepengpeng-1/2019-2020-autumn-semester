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
};

F::Access* InFrame( int offset ) {
    return new F::InFrameAccess( offset );
}

F::Frame* newFrame( TEMP::Label name, U::BoolList* formals ) {
    F::AccessList *accListHead = new F::AccessList(), *accListTail = new F::AccessList();
    int            offset = F::wordSize;
    int            argCnt = 0;
    while ( formals->tail ) {
        formals          = formals->tail;
        F::AccessList* p = new F::AccessList( InFrame( offset ), nullptr );
        if ( accListTail == nullptr ) {
            accListHead = accListTail = p;
        }
        else {
            accListTail->tail = p;
            accListTail       = p;
        }
        offset += F::wordSize;
        ++argCnt;
    }
    F::Frame* f = new F::Frame( name );
    f->putInfo( F::Frame::Kind::ARGUMENT, argCnt, accListHead );
    f->putInfo( F::Frame::Kind::VARIABLE, 0, nullptr );
    return f;
}

}  // namespace F