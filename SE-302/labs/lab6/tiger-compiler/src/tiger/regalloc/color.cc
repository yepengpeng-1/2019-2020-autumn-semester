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

template < class T > inline bool Contains( const std::set< T >& set, T key ) {
    return set.find( key ) != set.end();
}

template < class T > inline bool NotContains( const std::set< T >& set, T key ) {
    return set.find( key ) == set.end();
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
    coloredNodes.clear();
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

void Main( G::Graph< TEMP::Temp >* ig ) {
    MakeWorklist( ig->Nodes() );
    do {
        if ( simplifyWorklist.size() ) {
            Simplify();
        }
        else if ( worklistMoves.size() ) {
            Coalesce();
        }
        else if ( freezeWorkList.size() ) {
            Freeze();
        }
        else if ( spillWorkList.size() ) {
            SelectSpill();
        }
    } while ( simplifyWorklist.size() || worklistMoves.size() || freezeWorkList.size() || spillWorkList.size() );
    AssignColors();
}

void AddEdge( G::Node< TEMP::Temp >* u, G::Node< TEMP::Temp >* v ) {
    if ( NotContains( adjSet, Edge( u, v ) ) && u != v ) {
        adjSet.insert( Edge( u, v ) );
        adjSet.insert( Edge( v, u ) );
        if ( NotContains( precolored, u ) ) {
            adjList[ u ].insert( v );
            degree[ u ] += 1;
        }
        if ( NotContains( precolored, v ) ) {
            adjList[ v ].insert( u );
            degree[ v ] += 1;
        }
    }
}

void MakeWorklist( G::NodeList< TEMP::Temp >* nodes ) {
    for ( auto it = initial.begin(); it != initial.end(); /* do not use it++ here, but use erase's return value. */ ) {
        auto n = *it;
        it     = initial.erase( it );
        if ( degree[ n ] >= K ) {
            spillWorkList.insert( n );
        }
        else if ( MoveRelated( n ) ) {
            freezeWorkList.insert( n );
        }
        else {
            simplifyWorklist.insert( n );
        }
    }
}

std::set< COL::tempNode* > Adjacent( COL::tempNode* n ) {
    return D( adjList[ n ], U( std::set< COL::tempNode* >( selectedStack.begin(), selectedStack.end() ), coalescedNodes ) );
}

std::set< COL::Move > NodeMoves( COL::tempNode* n ) {
    return I( moveList[ n ], U( activeMoves, worklistMoves ) );
}

bool MoveRelated( COL::tempNode* n ) {
    return NodeMoves( n ).size() != 0;
}

void Simplify() {
    auto it = simplifyWorklist.begin();
    auto n  = *it;
    simplifyWorklist.erase( it );

    selectedStack.push_back( n );
    auto adjacents = Adjacent( n );
    for ( auto& m : adjacents ) {
        DecrementDegree( m );
    }
}

void DecrementDegree( COL::tempNode* m ) {
    size_t d    = degree[ m ];
    degree[ m ] = d - 1;
    if ( d == K ) {
        // c++'s foolish initializing rules.
        std::set< COL::tempNode* > mSet{ m };
        EnableMoves( U( Adjacent( m ), mSet ) );
        spillWorkList.erase( spillWorkList.find( m ) );
        if ( MoveRelated( m ) ) {
            freezeWorkList.erase( freezeWorkList.find( m ) );
        }
        else {
            simplifyWorklist.erase( simplifyWorklist.find( m ) );
        }
    }
}

void EnableMove( COL::tempNode* n ) {
    for ( auto m : NodeMoves( n ) ) {
        if ( Contains( activeMoves, m ) ) {
            activeMoves.erase( activeMoves.find( m ) );
            worklistMoves.erase( worklistMoves.find( m ) );
        }
    }
}

void EnableMoves( std::set< COL::tempNode* > nodes ) {
    for ( auto& n : nodes ) {
        for ( auto m : NodeMoves( n ) ) {
            if ( Contains( activeMoves, m ) ) {
                activeMoves.erase( activeMoves.find( m ) );
                worklistMoves.erase( worklistMoves.find( m ) );
            }
        }
    }
}

bool checkAdjacents( COL::tempNode* u, COL::tempNode* v ) {
    for ( auto t : Adjacent( v ) ) {
        if ( !OK( t, u ) ) {
            return false;
        }
    }
    return true;
}

void Coalesce() {
    auto           m = *worklistMoves.begin();
    COL::tempNode *x = GetAlias( m.first ), *y = GetAlias( m.second );
    // initialize them later.
    COL::tempNode *u = nullptr, *v = nullptr;
    if ( Contains( precolored, y ) ) {
        u = y, v = x;
    }
    else {
        u = x, v = y;
    }
    worklistMoves.erase( worklistMoves.find( m ) );
    if ( u == v ) {
        coalescedMoves.insert( m );
        AddWorkList( u );
    }
    else if ( Contains( precolored, v ) || Contains( adjSet, Edge( u, v ) ) ) {
        constrainedMoves.insert( m );
        AddWorkList( u );
        AddWorkList( v );
    }
    else if ( Contains( precolored, u ) && checkAdjacents( u, v ) || NotContains( precolored, u ) && Conservative( U( Adjacent( u ), Adjacent( v ) ) ) ) {
        coalescedMoves.insert( m );
        Combine( u, v );
        AddWorkList( u );
    }
    else {
        activeMoves.insert( m );
    }
}

void AddWorkList( COL::tempNode* u ) {
    if ( NotContains( precolored, u ) && !MoveRelated( u ) && degree[ u ] < K ) {
        freezeWorkList.erase( freezeWorkList.find( u ) );
        simplifyWorklist.insert( u );
    }
}

bool OK( COL::tempNode* t, COL::tempNode* r ) {
    return degree[ t ] < K || Contains( precolored, t ) || Contains( adjSet, Edge( t, r ) );
}

bool Conservative( std::set< COL::tempNode* > nodes ) {
    size_t k = 0;
    for ( auto& n : nodes ) {
        if ( degree[ n ] >= K ) {
            ++k;
        }
    }
    return k < K;
}

COL::tempNode* GetAlias( COL::tempNode* n ) {
    if ( Contains( coalescedNodes, n ) ) {
        return GetAlias( alias[ n ] );
    }
    return n;
}

void Combine( COL::tempNode* u, COL::tempNode* v ) {
    if ( Contains( freezeWorkList, v ) ) {
        freezeWorkList.erase( freezeWorkList.find( v ) );
    }
    else {
        spillWorkList.erase( spillWorkList.find( v ) );
    }

    coalescedNodes.insert( v );
    alias[ v ]    = u;
    moveList[ u ] = U( moveList[ u ], moveList[ v ] );
    EnableMove( v );
    for ( auto t : Adjacent( v ) ) {
        AddEdge( t, u );
        DecrementDegree( t );
        if ( degree[ u ] >= K && Contains( freezeWorkList, u ) ) {
            freezeWorkList.erase( freezeWorkList.find( u ) );
            spillWorkList.erase( spillWorkList.find( u ) );
        }
    }
}

void Freeze() {
    auto u = *freezeWorkList.begin();
    freezeWorkList.erase( freezeWorkList.find( u ) );
    simplifyWorklist.insert( u );
    FreezeMoves( u );
}

void FreezeMoves( COL::tempNode* u ) {
    COL::tempNode* v;
    for ( auto m : NodeMoves( u ) ) {
        auto x = m.first, y = m.second;
        if ( GetAlias( y ) == GetAlias( u ) ) {
            v = GetAlias( x );
        }
        else {
            v = GetAlias( y );
        }
        activeMoves.erase( activeMoves.find( m ) );
        frozenMoves.insert( m );
        if ( NodeMoves( v ).size() == 0 && degree[ v ] < K ) {
            freezeWorkList.erase( freezeWorkList.find( v ) );
            simplifyWorklist.insert( v );
        }
    }
}

void SelectSpill() {
    // todo: use some good strategy to decide which one to spill
    auto m = *spillWorkList.begin();
    spillWorkList.erase( spillWorkList.find( m ) );
    simplifyWorklist.insert( m );
    FreezeMoves( m );
}

void AssignColors() {
    while ( selectedStack.size() ) {
        auto n = selectedStack[ selectedStack.size() - 1 ];
        selectedStack.pop_back();
        auto okColors = std::vector< size_t >( K, 0 );
        for ( size_t i = 0; i < K; i++ ) {
            okColors[ i ] = i;
        }
        for ( auto& w : adjList[ n ] ) {
            if ( Contains( U( coloredNodes, precolored ), GetAlias( w ) ) ) {
                auto rmColor = color[ GetAlias( w ) ];
                auto v       = std::find( okColors.begin(), okColors.end(), rmColor );
                if ( v != okColors.end() ) {
                    okColors.erase( v );
                }
                else {
                    std::cerr << "try to erase unexisted " << rmColor << " from the vector" << std::endl;
                    assert( 0 );
                }
            }
        }
        if ( okColors.size() == 0 ) {
            spilledNodes.insert( n );
        }
        else {
            coloredNodes.insert( n );
            auto c     = okColors[ 0 ];
            color[ n ] = c;
        }
    }
    for ( auto& n : coalescedNodes ) {
        color[ n ] = color[ GetAlias( n ) ];
    }
}

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
        TEMP::TempList* spilled = nullptr;
        for ( auto it = spilledNodes.begin(); it != spilledNodes.end(); it++ ) {
            auto p  = *it;
            spilled = new TEMP::TempList( p->NodeInfo(), spilled );
        }
        result.spills = spilled;
    }
    return result;
}

}  // namespace COL
