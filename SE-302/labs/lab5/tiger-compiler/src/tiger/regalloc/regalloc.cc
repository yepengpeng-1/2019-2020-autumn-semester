#include "tiger/regalloc/regalloc.h"

namespace RA {

Result RegAlloc( F::Frame* f, AS::InstrList* il ) {
    // TODO: Put your codes here (lab6).
    auto result     = Result();
    result.il       = il;
    result.coloring = TEMP::Map::Empty();
    return result;
}

}  // namespace RA