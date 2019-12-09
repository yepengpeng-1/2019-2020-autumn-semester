#ifndef TIGER_CODEGEN_CODEGEN_H_
#define TIGER_CODEGEN_CODEGEN_H_

#include "tiger/codegen/assem.h"
#include "tiger/frame/frame.h"
#include "tiger/translate/tree.h"

namespace CG {
typedef std::pair< TEMP::Temp*, AS::InstrList* > smart_pair;

AS::InstrList*                                  Codegen( F::Frame* f, T::StmList* stmList );
static AS::InstrList*                           munchStm( T::Stm* stmNode );
static std::pair< TEMP::Temp*, AS::InstrList* > munchExp( T::Exp* expNode );

static AS::Proc* F_procEntryExit3( F::Frame* frame, AS::InstrList* body ) {
    // new AS::LabelInstr("", &frame->name);
    auto proc = new AS::Proc( std::string( "================= prologue ==============" ), new AS::InstrList( new AS::LabelInstr( "What's wrong with you?\n", &frame->name ), nullptr ),
                              std::string( "================ epilogue =============" ) );
}

}  // namespace CG
#endif