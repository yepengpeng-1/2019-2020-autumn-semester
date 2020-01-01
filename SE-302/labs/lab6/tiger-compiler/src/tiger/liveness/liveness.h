#ifndef TIGER_LIVENESS_LIVENESS_H_
#define TIGER_LIVENESS_LIVENESS_H_

#include "tiger/codegen/assem.h"
#include "tiger/frame/frame.h"
#include "tiger/frame/temp.h"
#include "tiger/liveness/flowgraph.h"
#include "tiger/util/graph.h"
#include <algorithm>
#include <map>
#include <set>
#include <vector>

namespace LIVE {

static std::set< TEMP::Temp* >                                    tempSet;
static std::vector< G::Node< TEMP::Temp >* >                      tempNodes;
static std::map< G::Node< AS::Instr >*, std::set< TEMP::Temp* > > inLiveMap;
static std::map< G::Node< AS::Instr >*, std::set< TEMP::Temp* > > outLiveMap;

class MoveList {
public:
    G::Node< TEMP::Temp >*src, *dst;
    MoveList*             tail;

    MoveList( G::Node< TEMP::Temp >* src, G::Node< TEMP::Temp >* dst, MoveList* tail ) : src( src ), dst( dst ), tail( tail ) {}
};

class LiveGraph {
public:
    G::Graph< TEMP::Temp >* graph;
    MoveList*               moves;
};

LiveGraph Liveness( G::Graph< AS::Instr >* flowgraph );

}  // namespace LIVE

#endif