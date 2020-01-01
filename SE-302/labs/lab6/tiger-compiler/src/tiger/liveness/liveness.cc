#include "tiger/liveness/liveness.h"

namespace LIVE {

inline std::set< TEMP::Temp* > flattenTempList( TEMP::TempList* tl ) {
    std::set< TEMP::Temp* > tset;
    while ( tl ) {
        tset.insert( tl->head );
        tl = tl->tail;
    }
    return tset;
}

inline std::set< TEMP::Temp* > unionTL( const std::set< TEMP::Temp* > s1, const std::set< TEMP::Temp* > s2 ) {
    std::set< TEMP::Temp* > result;
    std::set_union( s1.begin(), s1.end(), s2.begin(), s2.end(), inserter( result, result.begin() ) );
    return result;
}

inline std::set< TEMP::Temp* > interTL( const std::set< TEMP::Temp* > s1, const std::set< TEMP::Temp* > s2 ) {
    std::set< TEMP::Temp* > result;
    std::set_intersection( s1.begin(), s1.end(), s2.begin(), s2.end(), inserter( result, result.begin() ) );
    return result;
}

inline std::set< TEMP::Temp* > diffTL( const std::set< TEMP::Temp* > s1, const std::set< TEMP::Temp* > s2 ) {
    std::set< TEMP::Temp* > result;
    std::set_difference( s1.begin(), s1.end(), s2.begin(), s2.end(), inserter( result, result.begin() ) );
    return result;
}

inline void pushTempList( TEMP::TempList* list ) {
    while ( list ) {
        auto body = list->head;
        list      = list->tail;
        tempSet.insert( body );
    }
}

inline void appendNode( G::Node< AS::Instr >* node ) {
    TEMP::TempList* temps;
    switch ( node->NodeInfo()->kind ) {
    case AS::Instr::Kind::LABEL:
        /* absolutely doesn't provide active variables */
        break;
    case AS::Instr::Kind::MOVE: {
        auto moveInstr = reinterpret_cast< AS::MoveInstr* >( node->NodeInfo() );
        pushTempList( moveInstr->src );
        pushTempList( moveInstr->dst );
    } break;
    case AS::Instr::Kind::OPER: {
        auto operInstr = reinterpret_cast< AS::OperInstr* >( node->NodeInfo() );
        pushTempList( operInstr->src );
        pushTempList( operInstr->dst );
    } break;
    default:
        break;
    }
}

template < class T > inline G::Node< T >* findNodeByTemp( const std::vector< G::Node< T >* >& vec, T* temp ) {
    for ( auto it = vec.begin(); it != vec.end(); it++ ) {
        if ( ( *it )->NodeInfo() == temp ) {
            return *it;
        }
    }
    return nullptr;
}

inline void createMove( G::Node< AS::Instr >* node, G::Graph< AS::Instr >* instrGraph, LiveGraph& liveGraph ) {

    switch ( node->NodeInfo()->kind ) {
    case AS::Instr::Kind::LABEL:
        /* absolutely no initial active variables */
        break;
    case AS::Instr::Kind::MOVE: {
        auto moveInstr  = reinterpret_cast< AS::MoveInstr* >( node->NodeInfo() );
        liveGraph.moves = new LIVE::MoveList( findNodeByTemp( tempNodes, moveInstr->src->head ), findNodeByTemp( tempNodes, moveInstr->dst->head ), liveGraph.moves );
    } break;
    case AS::Instr::Kind::OPER:
        /* code */
        break;
    default:
        assert( 0 );
        break;
    }
}

LiveGraph Liveness( G::Graph< AS::Instr >* flowgraph ) {

    // clear static reusable containers
    tempSet.clear();
    tempNodes.clear();
    inLiveMap.clear();
    outLiveMap.clear();

    LiveGraph liveGraph;
    auto      tempGraph = liveGraph.graph;
    auto      moveList  = liveGraph.moves;

    // 1st - create temp nodes
    auto instrs = flowgraph->Nodes();
    while ( instrs ) {
        auto body = instrs->head;

        // init node graph
        appendNode( body );

        // init i/o live map
        inLiveMap.insert( std::make_pair( body, std::set< TEMP::Temp* >() ) );
        outLiveMap.insert( std::make_pair( body, std::set< TEMP::Temp* >() ) );
        instrs = instrs->tail;
    }

    for ( auto it = tempSet.begin(); it != tempSet.end(); it++ ) {
        tempNodes.push_back( tempGraph->NewNode( *it ) );
    }

    // 2nd - create move items
    instrs = flowgraph->Nodes();
    while ( instrs ) {
        auto body = instrs->head;
        createMove( body, flowgraph, liveGraph );
        instrs = instrs->tail;
    }

    instrs                = flowgraph->Nodes();
    size_t untouchedCount = 0;
    bool   untouched      = true;

    // 3nd - unless untouched continuously twice
    while ( untouchedCount < 2 ) {
        instrs = flowgraph->Nodes();
        while ( instrs ) {
            auto body = instrs->head;
            instrs    = instrs->tail;

            // update in map
            auto origin_in  = inLiveMap[ body ];
            auto origin_out = outLiveMap[ body ];

            auto mod_in  = unionTL( flattenTempList( FG::Use( body ) ), diffTL( origin_out, flattenTempList( FG::Def( body ) ) ) );
            auto mod_out = origin_out;

            auto succIt = body->Succ();
            while ( succIt ) {
                auto succBody = succIt->head;
                succIt        = succIt->tail;
                mod_out       = unionTL( mod_out, inLiveMap[ succBody ] );
            }
            // since in set and out set never changes...
            // we can just determine the difference by its size.
            if ( origin_in.size() == mod_in.size() && origin_out.size() == mod_out.size() ) {
                // never modified anything
            }
            else {
                untouched          = false;
                inLiveMap[ body ]  = mod_in;
                outLiveMap[ body ] = mod_out;
            }
        }
        if ( untouched ) {
            ++untouchedCount;
        }
        else {
            untouchedCount = 0;
        }
        untouched = true;
    }

    // 4th - generate the conflict graph
    instrs = flowgraph->Nodes();
    while ( instrs ) {
        auto body = instrs->head;
        instrs    = instrs->tail;

        switch ( body->NodeInfo()->kind ) {
        case AS::Instr::Kind::LABEL:
            // nothing to do, let's go
            break;
        case AS::Instr::Kind::MOVE: {
            // sure thing moveInstr has exactly 1 src and 1 dst
            auto moveSrc = reinterpret_cast< AS::MoveInstr* >( body->NodeInfo() )->src->head;
            auto defTl   = FG::Def( body );
            auto outLive = outLiveMap[ body ];
            while ( defTl ) {
                auto defNode = defTl->head;
                defTl        = defTl->tail;
                for ( auto it = outLive.begin(); it != outLive.end(); it++ ) {
                    if ( *it == moveSrc ) {
                        // ignore a <- c cases
                        continue;
                    }
                    tempGraph->AddEdge( findNodeByTemp<>( tempNodes, defNode ), findNodeByTemp<>( tempNodes, *it ) );
                }
            }
        } break;
        case AS::Instr::Kind::OPER: {
            auto defTl   = FG::Def( body );
            auto outLive = outLiveMap[ body ];
            while ( defTl ) {
                auto defNode = defTl->head;
                defTl        = defTl->tail;
                for ( auto it = outLive.begin(); it != outLive.end(); it++ ) {
                    tempGraph->AddEdge( findNodeByTemp<>( tempNodes, defNode ), findNodeByTemp<>( tempNodes, *it ) );
                }
            }
        } break;
        }
    }
    std::cout << "Over!" << std::endl;
    return liveGraph;
}

}  // namespace LIVE