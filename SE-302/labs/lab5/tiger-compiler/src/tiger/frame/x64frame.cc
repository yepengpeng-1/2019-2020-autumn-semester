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
    F::AccessList* formalAcList = nullptr;
    int            argCount     = 0;
    while ( formals->tail ) {
        ++argCount;
        formalAcList = new F::AccessList( new F::InFrameAccess( /* offset: */ argCount * F::wordSize ), formalAcList );
        formals      = formals->tail;
    }

    F::Frame* f = new F::Frame( name );
    f->putInfo( F::Frame::Kind::ARGUMENT, argCount, formalAcList );
    f->putInfo( F::Frame::Kind::VARIABLE, 0, nullptr );
    return f;
}

}  // namespace F