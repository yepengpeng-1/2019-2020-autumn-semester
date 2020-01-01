#ifndef TIGER_FRAME_FRAME_H_
#define TIGER_FRAME_FRAME_H_

#include <iostream>
#include <sstream>
#include <string>

#include "tiger/codegen/assem.h"
#include "tiger/translate/tree.h"
#include "tiger/util/util.h"

namespace F {

static int wordSize = 8;
class Access {
public:
    enum Kind { INFRAME, INREG };

    Kind kind;

    std::string sym;

    Access( Kind kind ) : kind( kind ) {}

    // Hints: You may add interface like
    // virtual T::Exp* ToExp( T::Exp* framePtr ) const = 0;
    virtual T::Exp* ToExp( T::Exp* framePtr ) const = 0;
};

class InFrameAccess : public Access {
public:
    int offset;

    InFrameAccess( int offset ) : Access( INFRAME ), offset( offset ) {}

    T::Exp* ToExp( T::Exp* framePtr ) const {
        std::cout << "ToExp called" << std::endl;
        return new T::MemExp( new T::BinopExp( T::BinOp::PLUS_OP, framePtr, new T::ConstExp( offset ) ) );
    };
};

class InRegAccess : public Access {
public:
    TEMP::Temp* reg;

    InRegAccess( TEMP::Temp* reg ) : Access( INREG ), reg( reg ) {}
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
    enum Kind { ARGUMENT, VARIABLE };

    Frame( TEMP::Label name ) : name( name ) {}

    TEMP::Label    name;
    int            argCount, varCount;
    F::AccessList *args, *vars;

    std::string functionName;

    F::Frame* lastFrame;

    F::Access* InFrame( int offset ) {
        return new F::InFrameAccess( offset );
    }  // namespace F

    TEMP::Map* registers() {
        static std::string regNames[] = { "%rbp", "%rsp", "%rax" };
        auto               map        = TEMP::Map::Empty();
        map->Enter( framePointer(), &regNames[ 0 ] );
        map->Enter( stackPointer(), &regNames[ 1 ] );
        map->Enter( returnValue(), &regNames[ 2 ] );
    }

    // %rbp
    static TEMP::Temp* framePointer() {
        // std::cout << "framePointer register requested" << std::endl;
        static TEMP::Temp* fp = nullptr;
        if ( !fp ) {
            std::cout << "gonna return new framePointer register" << std::endl;
            fp = TEMP::Temp::NewTemp();
        }
        else {
            // std::cout << "gonna return existed framePointer register" << std::endl;
        }
        return fp;
    }

    // %rsp
    static TEMP::Temp* stackPointer() {
        // std::cout << "stackPointer register requested" << std::endl;
        static TEMP::Temp* sp = nullptr;
        if ( !sp ) {
            std::cout << "gonna return new stackPointer register" << std::endl;
            sp = TEMP::Temp::NewTemp();
        }
        else {
            // std::cout << "gonna return existed stackPointer register" << std::endl;
        }
        return sp;
    }

    // %rax
    static TEMP::Temp* returnValue() {
        // std::cout << "returnValue register requested" << std::endl;
        static TEMP::Temp* rp = nullptr;
        if ( !rp ) {
            std::cout << "gonna return new returnValue register" << std::endl;
            rp = TEMP::Temp::NewTemp();
        }
        else {
            // std::cout << "gonna return existed returnValue register" << std::endl;
        }
        return rp;
    }

    static TEMP::Temp* RCX() {
        static TEMP::Temp* rcx = nullptr;
        if ( !rcx ) {
            rcx = TEMP::Temp::NewTemp();
        }
        return rcx;
    }

    static TEMP::Temp* RDX() {
        static TEMP::Temp* rdx = nullptr;
        if ( !rdx ) {
            rdx = TEMP::Temp::NewTemp();
        }
        return rdx;
    }

    static TEMP::Temp* RBX() {
        static TEMP::Temp* rbx = nullptr;
        if ( !rbx ) {
            rbx = TEMP::Temp::NewTemp();
        }
        return rbx;
    }

    static TEMP::Temp* RSI() {
        static TEMP::Temp* rsi = nullptr;
        if ( !rsi ) {
            rsi = TEMP::Temp::NewTemp();
        }
        return rsi;
    }

    static TEMP::Temp* RDI() {
        static TEMP::Temp* rdi = nullptr;
        if ( !rdi ) {
            rdi = TEMP::Temp::NewTemp();
        }
        return rdi;
    }

    static TEMP::Temp* R8() {
        static TEMP::Temp* r8 = nullptr;
        if ( !r8 ) {
            r8 = TEMP::Temp::NewTemp();
        }
        return r8;
    }

    static TEMP::Temp* R9() {
        static TEMP::Temp* r9 = nullptr;
        if ( !r9 ) {
            r9 = TEMP::Temp::NewTemp();
        }
        return r9;
    }

    static TEMP::Temp* R12() {
        static TEMP::Temp* r12 = nullptr;
        if ( !r12 ) {
            r12 = TEMP::Temp::NewTemp();
        }
        return r12;
    }

    static TEMP::Temp* R13() {
        static TEMP::Temp* r13 = nullptr;
        if ( !r13 ) {
            r13 = TEMP::Temp::NewTemp();
        }
        return r13;
    }

    static TEMP::Temp* R14() {
        static TEMP::Temp* r14 = nullptr;
        if ( !r14 ) {
            r14 = TEMP::Temp::NewTemp();
        }
        return r14;
    }

    static TEMP::Temp* R15() {
        static TEMP::Temp* r15 = nullptr;
        if ( !r15 ) {
            r15 = TEMP::Temp::NewTemp();
        }
        return r15;
    }
    // static TEMP::Temp* radioRegister() {
    //     // std::cout << "radioRegister requested" << std::endl;
    //     static TEMP::Temp* rr = nullptr;
    //     if ( !rr ) {
    //         std::cout << "gonna return new radioRegister" << std::endl;
    //         rr = TEMP::Temp::NewTemp();
    //     }
    //     else {
    //         // std::cout << "gonna return existed radioRegister" << std::endl;
    //     }
    //     return rr;
    // }

    // static TEMP::Temp* idiotRegister() {
    //     // std::cout << "idiot register requested" << std::endl;
    //     static TEMP::Temp* ir = nullptr;
    //     if ( !ir ) {
    //         std::cout << "gonna return new idiot register" << std::endl;
    //         ir = TEMP::Temp::NewTemp();
    //     }
    //     else {
    //         // std::cout << "gonna return existed idiot register" << std::endl;
    //     }
    //     return ir;
    // }

    // static TEMP::Temp* idiotRegister2() {
    //     // std::cout << "idiot register2 requested" << std::endl;
    //     static TEMP::Temp* ir2 = nullptr;
    //     if ( !ir2 ) {
    //         std::cout << "gonna return new idiot register2" << std::endl;
    //         ir2 = TEMP::Temp::NewTemp();
    //     }
    //     else {
    //         // std::cout << "gonna return existed idiot register2" << std::endl;
    //     }
    //     return ir2;
    // }

    // static TEMP::Temp* idiotRegister3() {
    //     // std::cout << "idiot register2 requested" << std::endl;
    //     static TEMP::Temp* ir3 = nullptr;
    //     if ( !ir3 ) {
    //         std::cout << "gonna return new idiot register2" << std::endl;
    //         ir3 = TEMP::Temp::NewTemp();
    //     }
    //     else {
    //         // std::cout << "gonna return existed idiot register2" << std::endl;
    //     }
    //     return ir3;
    // }

    // static TEMP::Temp* smartRegister() {
    //     // std::cout << "smart register requested" << std::endl;
    //     static TEMP::Temp* sr = nullptr;
    //     if ( !sr ) {
    //         std::cout << "gonna return new smart register" << std::endl;
    //         sr = TEMP::Temp::NewTemp();
    //     }
    //     else {
    //         // std::cout << "gonna return existed smart register" << std::endl;
    //     }
    //     return sr;
    // }

    // static TEMP::Temp* smartRegister2() {
    //     // std::cout << "smart register2 requested" << std::endl;
    //     static TEMP::Temp* sr2 = nullptr;
    //     if ( !sr2 ) {
    //         std::cout << "gonna return new smart register2" << std::endl;
    //         sr2 = TEMP::Temp::NewTemp();
    //     }
    //     else {
    //         // std::cout << "gonna return existed smart register2" << std::endl;
    //     }
    //     return sr2;
    // }

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

// Frame* newFrame( TEMP::Label name, U::BoolList* formals );

}  // namespace F

#endif