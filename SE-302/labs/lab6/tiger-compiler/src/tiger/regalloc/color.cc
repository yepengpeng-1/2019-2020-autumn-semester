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

template < class T > inline void Sweep( std::set< T >& set, T key ) {
    auto find = set.find( key );
    if ( find != set.end() ) {
        set.erase( find );
    }
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
    assertAll();
    std::cout << "[regalloc] going to make worklist" << std::endl;
    MakeWorklist( ig->Nodes() );
    std::cout << "[regalloc] completed making worklist." << std::endl;
    do {
        if ( simplifyWorklist.size() ) {
            std::cout << "\t[simplify]" << std::endl;
            Simplify();
        }
        else if ( worklistMoves.size() ) {
            std::cout << "\t[coalesce]" << std::endl;
            Coalesce();
        }
        else if ( freezeWorkList.size() ) {
            std::cout << "\t[freeze]" << std::endl;
            Freeze();
        }
        else if ( spillWorkList.size() ) {
            std::cout << "\t[selectspill]" << std::endl;
            SelectSpill();
        }
    } while ( simplifyWorklist.size() || worklistMoves.size() || freezeWorkList.size() || spillWorkList.size() );
    std::cout << "[regalloc] going to assign colors" << std::endl;
    AssignColors();
    std::cout << "[regalloc] assigned colors" << std::endl;
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
        // special: remove from a set when traversing it.
        // don't replace it with Sweep
        it = initial.erase( it );
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
    std::set< COL::tempNode* > stackContents;
    for ( const auto& item : selectedStack ) {
        stackContents.insert( item );
    }
    return D( adjList[ n ], U( stackContents, coalescedNodes ) );
}

std::set< COL::Move > NodeMoves( COL::tempNode* n ) {
    return I( moveList[ n ], U( activeMoves, worklistMoves ) );
}

bool MoveRelated( COL::tempNode* n ) {
    std::cout << "[regalloc] evil MoveRelated call" << std::endl;
    return NodeMoves( n ).size() != 0;
}

void Simplify() {
    std::cout << "[regalloc] Simplify called" << std::endl;

    auto n = *simplifyWorklist.begin();
    Sweep( simplifyWorklist, n );

    std::cout << "[regalloc] going to append selectedStack: " << n << std::endl;
    selectedStack.push_back( n );
    auto adjacents = Adjacent( n );
    std::cout << "[regalloc] got adjacents ok" << std::endl;
    for ( auto& m : adjacents ) {
        DecrementDegree( m );
    }
    std::cout << "[regalloc] simplify over" << std::endl;
}

void DecrementDegree( COL::tempNode* m ) {
    std::cout << "[regalloc] decrementdegree called" << std::endl;
    size_t d    = degree[ m ];
    degree[ m ] = d - 1;
    if ( d == K ) {
        // c++'s foolish initializing rules.
        std::set< COL::tempNode* > mSet{ m };
        EnableMoves( U( Adjacent( m ), mSet ) );
        std::cout << "[regalloc] done enablemoves, spillWorkList.size() = " << spillWorkList.size() << std::endl;
        // spillWorkList.erase( spillWorkList.find( m ) );
        Sweep( spillWorkList, m );
        std::cout << "erased " << std::endl;
        if ( MoveRelated( m ) ) {
            std::cout << "moverelated done, true branch" << std::endl;
            // freezeWorkList.erase( freezeWorkList.find( m ) );
            freezeWorkList.insert( m );
        }
        else {
            std::cout << "moverelated done, false branch" << std::endl;
            // simplifyWorklist.erase( simplifyWorklist.find( m ) );
            simplifyWorklist.insert( m );
        }
    }
    std::cout << "[regalloc] quit from decrementdegree" << std::endl;
}

void EnableMove( COL::tempNode* n ) {
    for ( auto m : NodeMoves( n ) ) {
        if ( Contains( activeMoves, m ) ) {
            Sweep( activeMoves, m );
            worklistMoves.insert( m );
            // activeMoves.erase( activeMoves.find( m ) );
            // worklistMoves.erase( worklistMoves.find( m ) );
        }
    }
}

void EnableMoves( std::set< COL::tempNode* > nodes ) {
    for ( auto& n : nodes ) {
        for ( auto m : NodeMoves( n ) ) {
            if ( Contains( activeMoves, m ) ) {
                Sweep( activeMoves, m );
                worklistMoves.insert( m );
                // activeMoves.erase( activeMoves.find( m ) );
                // worklistMoves.erase( worklistMoves.find( m ) );
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
    Sweep( worklistMoves, m );
    // worklistMoves.erase( worklistMoves.find( m ) );
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
        // freezeWorkList.erase( freezeWorkList.find( u ) );
        Sweep( freezeWorkList, u );
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
        // freezeWorkList.erase( freezeWorkList.find( v ) );
        Sweep( freezeWorkList, v );
    }
    else {
        // spillWorkList.erase( spillWorkList.find( v ) );
        Sweep( spillWorkList, v );
    }

    coalescedNodes.insert( v );
    alias.insert( { v, u } );
    moveList[ u ] = U( moveList[ u ], moveList[ v ] );
    EnableMove( v );
    for ( auto t : Adjacent( v ) ) {
        AddEdge( t, u );
        DecrementDegree( t );
        if ( degree[ u ] >= K && Contains( freezeWorkList, u ) ) {
            // freezeWorkList.erase( freezeWorkList.find( u ) );
            // spillWorkList.erase( spillWorkList.find( u ) );
            Sweep( freezeWorkList, u );
            spillWorkList.insert( u );
        }
    }
}

void Freeze() {
    auto u = *freezeWorkList.begin();
    // freezeWorkList.erase( freezeWorkList.find( u ) );
    Sweep( freezeWorkList, u );
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
        // activeMoves.erase( activeMoves.find( m ) );
        Sweep( activeMoves, m );
        frozenMoves.insert( m );
        if ( NodeMoves( v ).size() == 0 && degree[ v ] < K ) {
            // freezeWorkList.erase( freezeWorkList.find( v ) );
            Sweep( freezeWorkList, v );
            simplifyWorklist.insert( v );
        }
    }
}

void SelectSpill() {
    // todo: use some good strategy to decide which one to spill
    auto m = *spillWorkList.begin();
    // spillWorkList.erase( spillWorkList.find( m ) );
    Sweep( spillWorkList, m );
    simplifyWorklist.insert( m );
    FreezeMoves( m );
}

inline void DEBUG_printSet( const std::set< COL::tempNode* >& set ) {
    for ( const auto& i : set ) {
        std::cout << "gotta node " << i << " (as) t" << i->NodeInfo()->Int() << ", degree = " << i->Degree() << std::endl;
    }
}
void AssignColors() {
    std::cout << "[regalloc] selectedStack size = " << selectedStack.size() << std::endl;
    while ( selectedStack.size() ) {
        auto n = selectedStack[ selectedStack.size() - 1 ];
        selectedStack.pop_back();
        std::set< size_t > okColors;
        for ( size_t i = 0; i < K; i++ ) {
            okColors.insert( i );
        }

        std::cout << "+=================== COLORED NODES ==========================" << std::endl;
        for ( const auto& i : coloredNodes ) {
            std::cout << "\tnode: " << i << ", t" << i->NodeInfo()->Int() << ", color id = " << color[ i ] << std::endl;
        }
        std::cout << "+=================== COLORED OVER ==========================" << std::endl;

        // std::cout << "\t=============== PRECOLORED U COLOREDNODES ================ " << std::endl;
        DEBUG_printSet( U( coloredNodes, precolored ) );
        std::cout << "===========================================================" << std::endl;
        for ( auto w : adjList[ n ] ) {
            std::cout << "\t\ttring to find " << w << " (" << GetAlias( w ) << ") in the colored sets...." << std::endl;
            if ( Contains( U( coloredNodes, precolored ), GetAlias( w ) ) ) {
                auto rmColor = color[ GetAlias( w ) ];
                Sweep( okColors, rmColor );
                // auto v       = std::find( okColors.begin(), okColors.end(), rmColor );
                // if ( v != okColors.end() ) {
                //     std::cout << "decalre erase!" << std::endl;
                //     okColors.erase( v );
                // }
                // else {
                //     std::cerr << "try to erase unexisted " << rmColor << " from the vector" << std::endl;
                //     assert( 0 );
                // }
                std::cout << " [find] " << std::endl;
            }
            else {
                std::cout << " [not find] " << std::endl;
            }
        }
        std::cout << "possible colors size = " << okColors.size() << std::endl;
        // for ( size_t i = 0; i < okColors.size(); i++ ) {
        //     std::cout << "[regalloc] current okColor[" << i << "] = " << okColors[ i ] << std::endl;
        // }

        if ( okColors.size() == 0 ) {
            spilledNodes.insert( n );
        }
        else {
            // std::cout << "going to insert " << okColors[ 0 ] << std::endl;
            coloredNodes.insert( n );
            auto c     = *okColors.begin();
            color[ n ] = c;
        }
    }
    for ( auto n : coalescedNodes ) {
        color[ n ] = color[ GetAlias( n ) ];
    }
}

Result Color( G::Graph< TEMP::Temp >* ig, std::set< COL::tempNode* > initiall /* deliberately misspell */, std::set< TEMP::Temp* > regs, LIVE::MoveList* moves ) {
    auto result     = Result();
    result.coloring = TEMP::Map::Empty();
    // result.spills   = nullptr;

    // std::vector< std::string* > registerNames;
    // auto                        registers = regs;
    // while ( registers ) {
    //     registerNames.push_back( registers->head );
    //     registers = registers->tail;
    // }
    initial = initiall;

    auto graphNodes = ig->Nodes();

    std::cout << "===================== GRAPH ====================" << std::endl;

    while ( graphNodes ) {
        auto body  = graphNodes->head;
        graphNodes = graphNodes->tail;

        std::cout << " [ node " << body << " as t" << body->NodeInfo()->Int() << " has conflicts with: " << std::endl;

        if ( Contains( regs, body->NodeInfo() ) ) {
            continue;
        }

        moveList.insert( { body, std::set< Move >() } );

        // managing himself's pred and succ, then don't need to manage others.
        // they're all mutual.

        std::set< tempNode* > conflicts;

        auto preNode = body->Pred();
        while ( preNode ) {
            auto head = preNode->head;
            preNode   = preNode->tail;
            // std::cout << "[in] gonna insert " << head << std::endl;
            conflicts.insert( head );
            adjSet.insert( Edge( body, head ) );
        }
        // std::cout << "=== Summary of node #t" << body->NodeInfo()->Int() << "===" << std::endl;
        // std::cout << "Pre.size() = " << conflicts.size() << std::endl;
        size_t pre = conflicts.size();

        auto sucNode = body->Succ();
        while ( sucNode ) {
            auto head = sucNode->head;
            sucNode   = sucNode->tail;
            // std::cout << "[out] gonna insert " << head << std::endl;
            conflicts.insert( head );
            adjSet.insert( Edge( body, head ) );
        }
        // std::cout << "Suc.size() = " << conflicts.size() - pre << std::endl;

        degree.insert( { body, body->Degree() } );
        // std::cout << " [ degree ] " << body->Degree() << ", actual got " << conflicts.size() << std::endl;
        // std::cout << "indegree = " << body->InDegree() << ", outDegree = \n" << body->OutDegree() << std::endl;
        adjList.insert( { body, conflicts } );
        // std::cout << " [ conflicts ] " << std::endl;
        for ( const auto& c : conflicts ) {
            std::cout << "#t" << c->NodeInfo()->Int() << ", ";
        }
        std::cout << std::endl;
        // std::cout << " [ conflicts ] over" << std::endl;
        // std::cout << "=====================================" << std::endl;
    }

    std::cout << "===================== END GRAPH ====================" << std::endl;

    auto mov = moves;
    while ( mov ) {
        moveList[ mov->dst ].insert( Move( mov->src, mov->dst ) );
        moveList[ mov->src ].insert( Move( mov->src, mov->dst ) );
        mov = mov->tail;
    }

    Main( ig );
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

        std::cout << "[regalloc] coloredNodes count = " << coloredNodes.size() << std::endl;
        for ( auto it = coloredNodes.begin(); it != coloredNodes.end(); ++it ) {
            std::cout << "[regalloc] gotta " << *it << " for its color name " << color[ *it ] << std::endl;
            result.coloring->Enter( ( *it )->NodeInfo(), &RegisterNames[ color[ *it ] ] );
        }
    }
    return result;
}

}  // namespace COL
