#ifndef TIGER_CODEGEN_CODEGEN_H_
#define TIGER_CODEGEN_CODEGEN_H_

#include "tiger/codegen/assem.h"
#include "tiger/frame/frame.h"
#include "tiger/translate/tree.h"
#include <sstream>

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

AS::InstrList*                                  Codegen( F::Frame* f, T::StmList* stmList );
static AS::InstrList*                           munchArgs( F::Frame* f, int index, T::ExpList* args );
static AS::InstrList*                           munchStm( F::Frame* f, T::Stm* stmNode );
static std::pair< TEMP::Temp*, AS::InstrList* > munchExp( F::Frame* f, T::Exp* expNode );

static AS::Proc* F_procEntryExit3( F::Frame* frame, AS::InstrList* body ) {

    std::stringstream prologue, epilogue;
    auto              procName = frame->name.Name();
    prologue << ".text\n"
             << ".globl " << procName << "\n"
             << ".type " << procName << "\n"
             << "@function " << procName << ":\n";
    std::cout << "Generated prologue:\n" << prologue.str() << std::endl;

    epilogue << "nop\n";
    std::cout << "Generated epilogue:\n" << epilogue.str() << std::endl;

    auto manageStack      = new AS::OperInstr( "pushq `s0", new TEMP::TempList( frame->stackPointer(), nullptr ),
                                          new TEMP::TempList( frame->framePointer(), new TEMP::TempList( frame->stackPointer(), nullptr ) ), nullptr );
    auto moveCriticalRegs = new AS::OperInstr( "movq `s0, `d0", new TEMP::TempList( frame->framePointer(), nullptr ), new TEMP::TempList( frame->stackPointer(), nullptr ), nullptr );

    auto allocStack = new AS::OperInstr( "subq $" + std::to_string( frame->argCount * F::wordSize ) + ", `d0", new TEMP::TempList( frame->stackPointer(), nullptr ),
                                         new TEMP::TempList( frame->stackPointer(), nullptr ), nullptr );

    auto releaseStack = new AS::OperInstr( "addq $" + std::to_string( frame->argCount * F::wordSize ) + ", `d0", new TEMP::TempList( frame->stackPointer(), nullptr ),
                                           new TEMP::TempList( frame->stackPointer(), nullptr ), nullptr );
    auto returnInstr  = new AS::OperInstr( "ret", nullptr, nullptr, nullptr );

    auto altogetherInstrs = new AS::Proc( prologue.str(),
                                          combine( new AS::InstrList( manageStack, new AS::InstrList( moveCriticalRegs, new AS::InstrList( allocStack, nullptr ) ) ),
                                                   combine( body, new AS::InstrList( releaseStack, new AS::InstrList( returnInstr, nullptr ) ) ) ),
                                          epilogue.str() );
    std::cout << "Generated altogether " << std::endl;
    return altogetherInstrs;
}

}  // namespace CG
#endif