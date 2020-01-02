#include "tiger/liveness/liveness.h"

namespace LIVE {

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

inline void pushTempList( TEMP::TempList* tL ) {
    auto list = tL;
    while ( list ) {
        auto body = list->head;
        list      = list->tail;
        // std::cout << "  pushed one @ " << body << std::endl;
        tempSet.insert( body );
    }
}

inline void pushLabel( TEMP::Label* ) {}

inline void appendNode( G::Node< AS::Instr >* node ) {
    switch ( node->NodeInfo()->kind ) {
    case AS::Instr::Kind::LABEL:
        // auto labelInstr = reinterpret_cast< AS::LabelInstr* >( node->NodeInfo() );
        // pushLabel( labelInstr->label );
        break;
    case AS::Instr::Kind::MOVE: {
        // std::cout << "append MOVE" << std::endl;
        auto moveInstr = reinterpret_cast< AS::MoveInstr* >( node->NodeInfo() );
        pushTempList( moveInstr->src );
        pushTempList( moveInstr->dst );
    } break;
    case AS::Instr::Kind::OPER: {
        // std::cout << "append OPER" << std::endl;
        auto operInstr = reinterpret_cast< AS::OperInstr* >( node->NodeInfo() );
        pushTempList( operInstr->src );
        pushTempList( operInstr->dst );
    } break;
    default:
        assert( 0 );
        break;
    }
}

template < class T > inline G::Node< T >* findNodeByTemp( const std::vector< G::Node< T >* >& vec, const T* temp ) {
    for ( auto it = vec.begin(); it != vec.end(); it++ ) {
        // std::cout << " [fNbT] compare " << *it << " and " << temp << std::endl;
        if ( ( *it )->NodeInfo() == temp ) {
            return *it;
        }
    }
    // std::cout << "You asked me to find " << temp << ", but nothing..." << std::endl;
    assert( 0 );
    return nullptr;
}

inline void createMove( G::Node< AS::Instr >* node, G::Graph< AS::Instr >* instrGraph, LiveGraph& liveGraph ) {
    switch ( node->NodeInfo()->kind ) {
    case AS::Instr::Kind::LABEL:
        /* absolutely no initial active variables */
        break;
    case AS::Instr::Kind::MOVE: {
        auto moveInstr = reinterpret_cast< AS::MoveInstr* >( node->NodeInfo() );
        // std::cout << "createMove here" << std::endl;
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

inline void addSelfConflicts( G::Graph< TEMP::Temp >* graph, const std::set< TEMP::Temp* >& set ) {
    std::cout << "self conflicter going on " << std::endl;
    for ( const auto& lnode : set ) {
        auto lNode = findNodeByTemp<>( tempNodes, lnode );
        for ( const auto& rnode : set ) {
            auto rNode = findNodeByTemp<>( tempNodes, rnode );
            std::cout << "checking if it's appropriate to add conflicts between t" << lNode->NodeInfo()->Int() << " and t" << rnode->Int() << std::endl;
            if ( lNode != rNode ) {
                graph->AddEdge( lNode, rNode );
            }
        }
    }
}

LiveGraph Liveness( G::Graph< AS::Instr >* flowgraph ) {

    // clear static reusable containers
    tempSet.clear();
    tempNodes.clear();
    inLiveMap.clear();
    outLiveMap.clear();

    auto liveGraph  = LiveGraph();
    liveGraph.graph = new G::Graph< TEMP::Temp >();
    liveGraph.moves = nullptr;
    auto tempGraph  = liveGraph.graph;
    auto moveList   = liveGraph.moves;

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
        tempGraph->NewNode( *it );
    }

    auto genNodes = tempGraph->Nodes();
    while ( genNodes ) {
        // std::cout << "genNodes = " << genNodes << ", its last = " << genNodes->tail << std::endl;
        auto head = genNodes->head;
        genNodes  = genNodes->tail;
        // std::cout << "bump node " << head << std::endl;
        tempNodes.push_back( head );
    }

    // build Use and Def counting graph
    auto insNode = flowgraph->Nodes();
    while ( insNode ) {
        auto node = insNode->head;
        insNode   = insNode->tail;

        auto useChain = FG::Use( node ), defChain = FG::Def( node );
        while ( useChain ) {
            auto content = useChain->head;
            useChain     = useChain->tail;

            auto foundNode = findNodeByTemp( tempNodes, content );
            if ( LIVE::maps.find( foundNode ) == maps.end() ) {
                LIVE::maps.insert( { foundNode, std::pair< size_t, size_t >( 1, 0 ) } );
            }
            else {
                LIVE::maps[ foundNode ].first += 1;
            }
        }

        while ( defChain ) {
            auto content = defChain->head;
            defChain     = defChain->tail;

            auto foundNode = findNodeByTemp( tempNodes, content );
            if ( LIVE::maps.find( foundNode ) == maps.end() ) {
                LIVE::maps.insert( { foundNode, std::pair< size_t, size_t >( 0, 1 ) } );
            }
            else {
                LIVE::maps[ foundNode ].second += 1;
            }
        }
    }

    // std::cout << "tempNodes has " << tempNodes.size() << " elements. They are: " << std::endl;
    // for ( auto it = tempNodes.begin(); it != tempNodes.end(); it++ ) {
    // std::cout << " - " << ( *it )->NodeInfo() << std::endl;
    // }

    // 2nd - create move items
    instrs = flowgraph->Nodes();
    while ( instrs ) {
        auto body = instrs->head;
        createMove( body, flowgraph, liveGraph );
        instrs = instrs->tail;
    }

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
            if ( ( origin_in.size() == mod_in.size() ) && ( origin_out.size() == mod_out.size() ) ) {
                // never modified anything
                // std::cout << "untouched round" << std::endl;
            }
            else {
                // std::cout << "touched!" << std::endl;
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
            untouched      = true;
        }
    }
    {
        auto instrs = flowgraph->Nodes();
        while ( instrs ) {
            std::cout << "+++ Basic Block " << instrs << " +++" << std::endl;
            auto head = instrs->head;

            std::cout << "Raw assembly: ";
            auto content = head->NodeInfo();
            switch ( content->kind ) {
            case AS::Instr::Kind::LABEL:
                std::cout << "(LABEL)" << reinterpret_cast< AS::LabelInstr* >( content )->label->Name() << std::endl;
                break;
            case AS::Instr::Kind::MOVE:
                std::cout << "(MOVE)" << reinterpret_cast< AS::MoveInstr* >( content )->assem << std::endl;
                break;
            case AS::Instr::Kind::OPER:
                std::cout << "(OPER)" << reinterpret_cast< AS::OperInstr* >( content )->assem << std::endl;
                break;
            default:
                assert( 0 );
            }

            std::cout << "it has pred nodes ";
            auto pred = head->Pred();
            while ( pred ) {
                std::cout << pred->head << std::endl;
                pred = pred->tail;
            }
            std::cout << std::endl;

            std::cout << "it has succ nodes ";
            auto succ = head->Succ();
            while ( succ ) {
                std::cout << succ->head << std::endl;
                succ = succ->tail;
            }
            std::cout << std::endl;

            instrs = instrs->tail;
            std::cout << "    [use]" << std::endl;
            auto usage = FG::Use( head );
            while ( usage ) {
                std::cout << "#t" << usage->head->Int() << ", ";
                usage = usage->tail;
            }
            std::cout << std::endl;

            std::cout << "    [def]" << std::endl;
            auto def = FG::Def( head );
            while ( def ) {
                std::cout << "#t" << def->head->Int() << ", ";
                def = def->tail;
            }
            std::cout << std::endl;

            std::cout << "    [inLive]" << std::endl;
            auto inLive = inLiveMap[ head ];
            for ( const auto& i : inLive ) {
                std::cout << "#t" << i->Int() << ", ";
            }
            std::cout << std::endl;

            std::cout << "    [outLive]" << std::endl;
            auto outLive = outLiveMap[ head ];
            for ( const auto& i : outLive ) {
                std::cout << "#t" << i->Int() << ", ";
            }
            std::cout << std::endl;

            std::cout << "+++ Analyze over +++" << std::endl;
        }
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
            auto defNode = FG::Def( body )->head;

            auto outLive = outLiveMap[ body ];

            addSelfConflicts( tempGraph, U( inLiveMap[ body ], outLiveMap[ body ] ) );

            for ( auto it = outLive.begin(); it != outLive.end(); it++ ) {
                if ( *it == moveSrc ) {
                    // ignore a <- c cases
                    continue;
                }
                auto edgeFrom = findNodeByTemp<>( tempNodes, defNode );
                auto edgeTo   = findNodeByTemp<>( tempNodes, *it );
                // std::cout << "MOVE here" << std::endl;
                std::cout << " [ live ] MOVE: build a edge between t" << edgeFrom->NodeInfo()->Int() << " and t" << edgeTo->NodeInfo()->Int() << std::endl;
                tempGraph->AddEdge( edgeFrom, edgeTo );
            }
        } break;
        case AS::Instr::Kind::OPER: {
            auto defTl   = FG::Def( body );
            auto outLive = outLiveMap[ body ];

            addSelfConflicts( tempGraph, U( inLiveMap[ body ], outLiveMap[ body ] ) );

            while ( defTl ) {
                auto defNode = defTl->head;
                defTl        = defTl->tail;
                for ( auto it = outLive.begin(); it != outLive.end(); it++ ) {
                    // std::cout << "OPER here" << std::endl;
                    auto edgeFrom = findNodeByTemp<>( tempNodes, defNode );
                    auto edgeTo   = findNodeByTemp<>( tempNodes, *it );
                    std::cout << " [ live ] OPER: build a edge between t" << edgeFrom->NodeInfo()->Int() << " and t" << edgeTo->NodeInfo()->Int() << std::endl;
                    tempGraph->AddEdge( edgeFrom, edgeTo );
                }
            }
        } break;
        }
    }
    // std::cout << "Over!" << std::endl;
    return liveGraph;
}

}  // namespace LIVE