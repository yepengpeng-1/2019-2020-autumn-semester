#include "tiger/regalloc/color.h"

namespace COL {

template < class T > std::set< T > U( const std::set< T >& s1, const std::set< T >& s2 ) {
    std::set< T > rs;
    std::set_union( s1.begin(), s1.end(), s2.begin(), s2.end(), inserter( rs, rs.begin() ) );
    return rs;
}

template < class T > std::set< T > I( const std::set< T >& s1, const std::set< T >& s2 ) {
    std::set< T > rs;
    std::set_intersection( s1.begin(), s1.end(), s2.begin(), s2.end(), inserter( rs, rs.begin() ) );
    return rs;
}

template < class T > std::set< T > D( const std::set< T >& s1, const std::set< T >& s2 ) {
    std::set< T > rs;
    std::set_difference( s1.begin(), s1.end(), s2.begin(), s2.end(), inserter( rs, rs.begin() ) );
    return rs;
}

void assertDegree() {
    auto bigUnion = U( simplifyWorklist, U( freezeWorkList, spillWorkList ) );
    for ( auto it = bigUnion.begin(); it != bigUnion.end(); it++ ) {
        assert( degree[ *it ] == I( adjList[ *it ], U( precolored, U( simplifyWorklist, U( freezeWorkList, spillWorkList ) ) ) ).size() );
    }
}

void assertSimplify() {
    for ( auto it = simplifyWorklist.begin(); it != simplifyWorklist.end(); it++ ) {
        assert( degree[ *it ] < K );
        assert( I( moveList[ *it ], U( activeMoves, worklistMoves ) ).size() == 0 );
    }
}

void assertFreeze() {
    for ( auto it = freezeWorkList.begin(); it != freezeWorkList.end(); it++ ) {
        assert( degree[ *it ] < K );
        assert( I( moveList[ *it ], U( activeMoves, worklistMoves ) ).size() != 0 );
    }
}

void assertSpill() {
    for ( auto it = spilledNodes.begin(); it != spilledNodes.end(); it++ ) {
        assert( degree[ *it ] >= K );
    }
}

void assertAll() {
    assertDegree();
    assertSimplify();
    assertFreeze();
    assertSpill();
}

// cleans all static containers
void sweepEnv() {
    precolored.clear();
    initial.clear();
    simplifyWorklist.clear();
    freezeWorkList.clear();
    spillWorkList.clear();
    spilledNodes.clear();
    coalescedMoves.clear();
    selectedStack.clear();

    coalescedMoves.clear();
    constrainedMoves.clear();
    frozenMoves.clear();
    worklistMoves.clear();
    activeMoves.clear();

    adjSet.clear();
    adjList.clear();
    degree.clear();
    moveList.clear();
    alias.clear();
    color.clear();
}

#define ALL_SPILL 1

Result Color( G::Graph< TEMP::Temp >* ig, TEMP::Map* initiall /* deliberately misspell */, TEMP::TempList* regs, LIVE::MoveList* moves ) {
    auto result     = Result();
    result.coloring = TEMP::Map::Empty();
    // result.spills   = nullptr;

    if ( ALL_SPILL ) {
        // for debugging's hack only. don't use it in lab6 release.
        auto            node = ig->Nodes();
        TEMP::TempList* list = nullptr;
        while ( node ) {
            auto head = node->head;
            node      = node->tail;
            list      = new TEMP::TempList( head->NodeInfo(), list );
        }
        // dirty!
        result.spills = list;
    }
    else {
    }
    return result;
}

}  // namespace COL
