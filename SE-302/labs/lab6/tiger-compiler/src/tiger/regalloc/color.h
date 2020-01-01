#ifndef TIGER_REGALLOC_COLOR_H_
#define TIGER_REGALLOC_COLOR_H_

#include "tiger/frame/temp.h"
#include "tiger/liveness/liveness.h"
#include "tiger/util/graph.h"

#include <vector>

namespace COL {

class Result {
public:
    TEMP::Map*      coloring;
    TEMP::TempList* spills;
};

// register count
static const size_t K = 10;

typedef G::Node< TEMP::Temp >             tempNode;
typedef std::pair< tempNode*, tempNode* > Move;
typedef Move                              Edge;
Result                                    Color( G::Graph< TEMP::Temp >* ig, TEMP::Map* initiall, TEMP::TempList* regs, LIVE::MoveList* moves );

static std::set< tempNode > precolored;
static std::set< tempNode > initial;
static std::set< tempNode > simplifyWorklist;
static std::set< tempNode > freezeWorkList;
static std::set< tempNode > spillWorkList;
static std::set< tempNode > spilledNodes;
static std::set< tempNode > coalescedNodes;
static std::set< tempNode > selectedStack;

static std::set< Move > coalescedMoves;
static std::set< Move > constrainedMoves;
static std::set< Move > frozenMoves;
static std::set< Move > worklistMoves;
static std::set< Move > activeMoves;

static std::set< Edge >                           adjSet;
static std::map< tempNode, std::set< tempNode > > adjList;
static std::map< tempNode, size_t >               degree;
static std::map< tempNode, std::set< Move > >     moveList;
static std::map< tempNode, tempNode >             alias;
static std::map< tempNode, std::string* >         color;
}  // namespace COL

#endif