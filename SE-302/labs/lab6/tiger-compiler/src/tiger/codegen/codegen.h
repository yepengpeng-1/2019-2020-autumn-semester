#ifndef TIGER_CODEGEN_CODEGEN_H_
#define TIGER_CODEGEN_CODEGEN_H_

#include "tiger/codegen/assem.h"
#include "tiger/frame/frame.h"
#include "tiger/translate/tree.h"
#include <sstream>
#include <utility>
#include <vector>

namespace CG {

// combine two instr linked list
static AS::InstrList* combine( AS::InstrList* as1, AS::InstrList* as2 ) {
    if ( !as1 ) {
        return as2;
    }

    auto head = as1;
    while ( as1->tail ) {
        as1 = as1->tail;
    }

    as1->tail = as2;
    return head;
}

typedef std::pair< TEMP::Temp*, AS::InstrList* > smart_pair;
// typedef std::pair< TEMP::TempList*, AS::Instr* > smart_args_pair;

static TEMP::Map* temp_map = nullptr;

AS::InstrList*                                  Codegen( F::Frame* f, T::StmList* stmList, TEMP::Map* map );
static AS::InstrList*                           munchArgs( F::Frame* f, int index, T::ExpList* args );
static AS::InstrList*                           munchStm( F::Frame* f, T::Stm* stmNode );
static std::pair< TEMP::Temp*, AS::InstrList* > munchExp( F::Frame* f, T::Exp* expNode );

static bool replace( std::string& str, const std::string& from, const std::string& to ) {
    size_t start_pos = str.find( from );
    if ( start_pos == std::string::npos )
        return false;
    str.replace( start_pos, from.length(), to );
    return true;
}

// they are rbp, rbx, r12 - r15.
static size_t calleeSavedRegsCount = 6;

static bool replaceImplicitRbp( AS::MoveInstr* instr, F::Frame* foundFrame ) {
    auto   src     = instr->src;
    size_t counter = 0;
    while ( src ) {
        auto head = src->head;
        src       = src->tail;

        if ( foundFrame->framePointer() == head ) {
            auto stackVarCount = ( foundFrame->argCount + foundFrame->varCount );
            // inverse it, avoid matching 0(%rbp) before -10(%rbp).
            for ( int i = stackVarCount - 1; i >= 0; --i ) {
                //

                //  ( stackVarCount + calleeSavedRegsCount - i ) * F::wordSize )
                std::cout << "attempting on replacing " << std::to_string( -i * F::wordSize ) + "(`s" + std::to_string( counter ) + ")"
                          << "   to    " << std::to_string( ( stackVarCount + calleeSavedRegsCount - i ) * F::wordSize ) + "(%rsp)" << std::endl;
                if ( replace( instr->assem, std::to_string( -i * F::wordSize ) + "(`s" + std::to_string( counter ) + ")",
                              std::to_string( ( stackVarCount + calleeSavedRegsCount - i ) * F::wordSize ) + "(%rsp)" ) ) {
                    return true;
                }
            }
        }
        ++counter;
    }
    return false;
}

static bool replaceImplicitRbp( AS::OperInstr* instr, F::Frame* foundFrame ) {
    auto   src     = instr->src;
    size_t counter = 0;
    while ( src ) {
        auto head = src->head;
        src       = src->tail;

        if ( foundFrame->framePointer() == head ) {
            auto stackVarCount = ( foundFrame->argCount + foundFrame->varCount );
            for ( int i = stackVarCount - 1; i >= 0; --i ) {
                //

                //  ( stackVarCount + calleeSavedRegsCount - i ) * F::wordSize )
                std::cout << "attempting on replacing " << std::to_string( -i * F::wordSize ) + "(`s" + std::to_string( counter ) + ")"
                          << "   to    " << std::to_string( ( stackVarCount + calleeSavedRegsCount - i ) * F::wordSize ) + "(%rsp)" << std::endl;
                if ( replace( instr->assem, std::to_string( -i * F::wordSize ) + "(`s" + std::to_string( counter ) + ")",
                              std::to_string( ( stackVarCount + calleeSavedRegsCount - i ) * F::wordSize ) + "(%rsp)" ) ) {
                    return true;
                }
            }
        }
        ++counter;
    }

    // movq %rbp, ...
    // leaq stack_size(%rsp), ...
    return false;
}

static AS::Proc* F_procEntryExit3( F::Frame* frame, AS::InstrList* body ) {

    std::stringstream prologue, epilogue;
    auto              procName = frame->name.Name();
    // prologue << std::endl;
    epilogue << std::endl;
    // prologue << ".text\n"
    //          << ".globl " << procName << "\n"
    //          << ".type " << procName << "\n"

    std::cout << "[[[ stack size = " << std::to_string( ( frame->varCount + frame->argCount + 1 ) * F::wordSize ) << " ]]]" << std::endl;
    std::cout << "[codegen] F_procEntryExit3 frame->functionName = " << frame->functionName << ", argCount = " << frame->argCount << std::endl;
    if ( frame->functionName == "" ) {
        prologue << procName << ":\n";
    }
    else {
        prologue << frame->functionName << ":\n";
    }

    typedef std::pair< std::string, std::string > ReplacePair;

    std::vector< ReplacePair > replacePairEverywhere;

    auto stackVarCount = ( frame->argCount + frame->varCount );
    for ( int i = stackVarCount - 1; i >= 0; i-- ) {
        replacePairEverywhere.push_back( ReplacePair( std::to_string( -i * F::wordSize ) + "(%rbp)", std::to_string( ( stackVarCount + calleeSavedRegsCount - i ) * F::wordSize ) + "(%rsp)" ) );
        std::cout << "inserting pair from " << std::to_string( -i * F::wordSize ) << "(%rbp) to " << std::to_string( ( stackVarCount + calleeSavedRegsCount - i ) * F::wordSize ) << "(%rsp)."
                  << std::endl;
    }

    auto argT = frame->args;

    auto manageStack      = new AS::OperInstr( "pushq `s0", new TEMP::TempList( frame->stackPointer(), nullptr ),
                                          new TEMP::TempList( frame->framePointer(), new TEMP::TempList( frame->stackPointer(), nullptr ) ), nullptr );
    auto moveCriticalRegs = new AS::OperInstr( "movq `s0, `d0", new TEMP::TempList( frame->framePointer(), nullptr ), new TEMP::TempList( frame->stackPointer(), nullptr ), nullptr );

    auto allocStack = new AS::OperInstr( "subq $" + std::to_string( ( frame->varCount + frame->argCount + 1 ) * F::wordSize ) + ", `d0", new TEMP::TempList( frame->stackPointer(), nullptr ),
                                         new TEMP::TempList( frame->stackPointer(), nullptr ), nullptr );

    prologue << "pushq %rbp" << std::endl << "movq %rsp, %rbp" << std::endl << "subq $" << std::to_string( ( frame->varCount + frame->argCount + 1 ) * F::wordSize ) << ", %rsp" << std::endl;
    prologue << "pushq %rbx\npushq %r12\npushq %r13\npushq %r14\npushq %r15" << std::endl;
    size_t                   argCounter = 0;
    static const std::string argRegs[]  = { "%rdi", "%rsi", "%rdx", "%rcx", "%r8", "%r9" };

    stackVarCount = ( frame->argCount + frame->varCount );
    while ( argT ) {
        auto head = argT->head;
        assert( head->kind == F::Access::INFRAME );
        auto argAccess = reinterpret_cast< F::InFrameAccess* >( head );
        // argAccess->offset;
        // auto manageArgInstr =
        // new AS::OperInstr( "movq " + argRegs[ argCounter ] + ", " + std::to_string( argAccess->offset ) + "(`s0)", nullptr, new TEMP::TempList( frame->framePointer(), nullptr ), nullptr );
        prologue << "movq " << argRegs[ frame->argCount - argCounter - 1 ] << ", " << ( stackVarCount + calleeSavedRegsCount ) * F::wordSize + argAccess->offset << "(%rsp)" << std::endl;
        std::cout << "make an argument move from " << argRegs[ frame->argCount - argCounter - 1 ] << " to " << ( stackVarCount + calleeSavedRegsCount ) * F::wordSize + argAccess->offset << "(%rsp)"
                  << std::endl;
        // prologue << "movq " << argRegs[ frame->argCount - argCounter - 1 ] << ", " << argAccess->offset << "(%rbp)" << std::endl;
        // std::cout << "[codegen] gotta a arg managing instr: movq " << argRegs[ frame->argCount - argCounter - 1 ] << ", " << ( stackVarCount + calleeSavedRegsCount ) * F::wordSize +
        // argAccess->offset
        //   << "(%rsp)" << std::endl;
        // std::cout << "[codegen] gotta a arg managing instr: movq " << argRegs[ frame->argCount - argCounter - 1 ] << ", " << argAccess->offset << "(%rbp)" << std::endl;
        argT = argT->tail;
        argCounter += 1;
    }

    auto instrList = body;
    while ( instrList ) {
        auto processBody = instrList->head;
        instrList        = instrList->tail;

        switch ( processBody->kind ) {
        case AS::Instr::Kind::LABEL:
            // needless to do anything with it
            break;
        case AS::Instr::Kind::MOVE: {
            auto moveInstr = reinterpret_cast< AS::MoveInstr* >( processBody );
            std::cout << "handling move assem = " << moveInstr->assem << std::endl;
            replaceImplicitRbp( moveInstr, frame );
            for ( const auto& pair : replacePairEverywhere ) {
                if ( replace( moveInstr->assem, pair.first, pair.second ) ) {
                    std::cout << "actually did a replace! now assem = " << moveInstr->assem << std::endl;
                }
            }
        } break;
        case AS::Instr::Kind::OPER: {
            auto operInstr = reinterpret_cast< AS::OperInstr* >( processBody );
            std::cout << "handling oper assem = " << operInstr->assem << std::endl;
            replaceImplicitRbp( operInstr, frame );
            for ( const auto& pair : replacePairEverywhere ) {
                if ( replace( operInstr->assem, pair.first, pair.second ) ) {
                    std::cout << "actually did a replace! now assem = " << operInstr->assem << std::endl;
                }
            }
        } break;
        default:
            break;
        }
    }
    // std::cout << "Generated prologue:\n" << prologue.str() << std::endl;

    // epilogue << "nop\n";
    std::cout << "Generated epilogue:\n" << epilogue.str() << std::endl;

    auto releaseStack = new AS::OperInstr( "addq $" + std::to_string( ( frame->varCount + frame->argCount + 1 ) * F::wordSize ) + ", `d0", new TEMP::TempList( frame->stackPointer(), nullptr ),
                                           new TEMP::TempList( frame->stackPointer(), nullptr ), nullptr );

    auto recoverCalleeSavedRegs = new AS::OperInstr(
        "popq %r15\npopq %r14\npopq %r13\npopq %r12\npopq %rbx",
        new TEMP::TempList( frame->R15(), new TEMP::TempList( frame->R14(), new TEMP::TempList( frame->R13(), new TEMP::TempList( frame->R12(), new TEMP::TempList( frame->RBX(), nullptr ) ) ) ) ),
        nullptr, nullptr );

    //    auto recoverCalleeSavedRegs = new AS::OperInstr("nop", nullptr, nullptr, nullptr);
    auto popRbp      = new AS::OperInstr( "popq %rbp", new TEMP::TempList( frame->framePointer(), nullptr ), nullptr, nullptr );
    auto returnInstr = new AS::OperInstr( "ret", nullptr, new TEMP::TempList( frame->returnValue(), nullptr ), nullptr );

    auto altogetherInstrs = new AS::Proc(
        prologue.str(),
        /* combine(  new AS::InstrList( manageStack, new AS::InstrList( moveCriticalRegs, new AS::InstrList( allocStack, nullptr ) ) ), */
        combine( body, new AS::InstrList( recoverCalleeSavedRegs, new AS::InstrList( releaseStack, new AS::InstrList( popRbp, new AS::InstrList( returnInstr, nullptr ) ) ) ) ), epilogue.str() );
    std::cout << "Generated altogether " << std::endl;
    return altogetherInstrs;
}

}  // namespace CG
#endif