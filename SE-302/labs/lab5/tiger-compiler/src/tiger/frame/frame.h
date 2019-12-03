#ifndef TIGER_FRAME_FRAME_H_
#define TIGER_FRAME_FRAME_H_

#include <string>

#include "tiger/codegen/assem.h"
#include "tiger/translate/tree.h"
#include "tiger/util/util.h"

namespace F {

static size_t wordSize = 8;

class Access {
public:
    enum Kind { INFRAME, INREG };

    Kind kind;

    Access( Kind kind ) : kind( kind ) {}

    // Hints: You may add interface like
    // virtual T::Exp* ToExp( T::Exp* framePtr ) const = 0;
};

class AccessList {
public:
    Access*     head;
    AccessList* tail;

    AccessList() {}
    AccessList( Access* head, AccessList* tail ) : head( head ), tail( tail ) {}
};

class Frame {
public:
    Frame( TEMP::Label name ) : name( name ) {}

    TEMP::Label    name;
    int            argCount, varCount;
    F::AccessList *args, *vars;

    enum Kind { ARGUMENT, VARIABLE };

    inline void putInfo( F::Frame::Kind kind, int count, F::AccessList* list ) {
        switch ( kind ) {
        case F::Frame::Kind::VARIABLE:
            this->varCount = count;
            this->vars     = list;
            break;
        case F::Frame::Kind::ARGUMENT:
            this->argCount = count;
            this->args     = list;
            break;
        }
    }
};

/*
 * Fragments
 */

class Frag {
public:
    enum Kind { STRING, PROC };

    Kind kind;

    Frag( Kind kind ) : kind( kind ) {}
};

class StringFrag : public Frag {
public:
    TEMP::Label* label;
    std::string  str;

    StringFrag( TEMP::Label* label, std::string str ) : Frag( STRING ), label( label ), str( str ) {}
};

class ProcFrag : public Frag {
public:
    T::Stm* body;
    Frame*  frame;

    ProcFrag( T::Stm* body, Frame* frame ) : Frag( PROC ), body( body ), frame( frame ) {}
};

class FragList {
public:
    Frag*     head;
    FragList* tail;

    FragList( Frag* head, FragList* tail ) : head( head ), tail( tail ) {}
};

Frame* newFrame( TEMP::Label name, U::BoolList* formals );

}  // namespace F

#endif