#ifndef TIGER_REGALLOC_COLOR_H_
#define TIGER_REGALLOC_COLOR_H_

#include "tiger/frame/temp.h"
#include "tiger/liveness/liveness.h"
#include "tiger/util/graph.h"

#include <set>
#include <vector>

namespace COL {

class Result {
public:
    TEMP::Map*      coloring;
    TEMP::TempList* spills;
};

// register count
static size_t K = 11;

// static std::string RegisterNames[] = { "%1", "%2", "%3", "%4", "%5", "%6", "%7", "%8", "%9", "%10" };
static std::string RegisterNames[] = { "%r12", "%r13", "%r14", "%r15", "%r8", "%r9", "%rbx", "%rcx", "%rdi", "%rdx", "%rsi" };
// { f->R12(), f->R13(), f->R14(), f->R15(), f->R8(), f->R9(), f->RBX(), f->RCX(), f->RDI(), f->RDX(), f->RSI() };

typedef G::Node< TEMP::Temp >             tempNode;
typedef std::pair< tempNode*, tempNode* > Move;
typedef Move                              Edge;
Result                                    Color( G::Graph< TEMP::Temp >* ig, std::set< COL::tempNode* > initiall, TEMP::TempList* regs, LIVE::MoveList* moves );

static std::set< tempNode* >    precolored;
static std::set< tempNode* >    initial;
static std::set< tempNode* >    simplifyWorklist;
static std::set< tempNode* >    freezeWorkList;
static std::set< tempNode* >    spillWorkList;
static std::set< tempNode* >    spilledNodes;
static std::set< tempNode* >    coalescedNodes;
static std::set< tempNode* >    coloredNodes;
static std::vector< tempNode* > selectedStack;

static std::set< Move > coalescedMoves;
static std::set< Move > constrainedMoves;
static std::set< Move > frozenMoves;
static std::set< Move > worklistMoves;
static std::set< Move > activeMoves;

static std::set< Edge >                             adjSet;
static std::map< tempNode*, std::set< tempNode* > > adjList;
static std::map< tempNode*, size_t >                degree;
static std::map< tempNode*, std::set< Move > >      moveList;
static std::map< tempNode*, tempNode* >             alias;
static std::map< tempNode*, size_t >                color;

void Main( G::Graph< TEMP::Temp >* );
void Build( G::NodeList< TEMP::Temp >* );
void AddEdge( G::Node< TEMP::Temp >*, G::Node< TEMP::Temp >* );
void MakeWorklist( G::NodeList< TEMP::Temp >* );
void Simplify();
void DecrementDegree( tempNode* );
void EnableMove( tempNode* );
void EnableMoves( std::set< tempNode* > );
void Coalesce();
void AddWorkList( tempNode* );
void Freeze();
void Combine( tempNode*, tempNode* );
void FreezeMoves( tempNode* );
void SelectSpill();
void AssignColors();

std::set< COL::tempNode* > Adjacent( tempNode* );
std::set< COL::Move >      NodeMoves( tempNode* );
COL::tempNode*             GetAlias( tempNode* );

bool MoveRelated( tempNode* );
bool OK( tempNode*, tempNode* );
bool Conservative( std::set< tempNode* > );

}  // namespace COL

#endif