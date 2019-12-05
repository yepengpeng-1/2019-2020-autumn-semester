#include "tiger/frame/frame.h"

#include <string>

namespace F {

class X64Frame : public Frame {

    // TODO: Put your codes here (lab6).

    F::Frame* newFrame( TEMP::Label name, U::BoolList* formals, F::Frame* lastFrame ) {
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
        f->lastFrame = lastFrame;
        return f;
    }
};
}  // namespace F
