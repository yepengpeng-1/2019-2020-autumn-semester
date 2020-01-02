#include "tiger/liveness/flowgraph.h"
#include <vector>

namespace FG {

TEMP::TempList* Def( G::Node< AS::Instr >* n ) {
    auto node = n->NodeInfo();
    switch ( node->kind ) {
    case AS::Instr::Kind::LABEL:
        return nullptr;
    case AS::Instr::Kind::MOVE:
        return reinterpret_cast< AS::MoveInstr* >( node )->dst;
    case AS::Instr::Kind::OPER:
        return reinterpret_cast< AS::OperInstr* >( node )->dst;
    }
    assert( 0 );
    return nullptr;
}

TEMP::TempList* Use( G::Node< AS::Instr >* n ) {
    auto node = n->NodeInfo();
    switch ( node->kind ) {
    case AS::Instr::Kind::LABEL:
        return nullptr;
    case AS::Instr::Kind::MOVE:
        return reinterpret_cast< AS::MoveInstr* >( node )->src;
    case AS::Instr::Kind::OPER:
        return reinterpret_cast< AS::OperInstr* >( node )->src;
    }
    assert( 0 );
    return nullptr;
}

bool IsMove( G::Node< AS::Instr >* n ) {
    auto node = n->NodeInfo();
    return node->kind == AS::Instr::Kind::MOVE;
}

// 特化地 findLabel
inline G::Node< AS::Instr >* findLabel( const std::vector< G::Node< AS::Instr >* >& vec, const TEMP::Label* label ) {
    // std::cout << "entered findLabel" << std::endl;
    for ( const auto& node : vec ) {
        if ( node->NodeInfo()->kind == AS::Instr::Kind::LABEL ) {
            auto labelInstr = reinterpret_cast< AS::LabelInstr* >( node->NodeInfo() );
            if ( labelInstr->label == label ) {
                // std::cout << "found node = " << node << std::endl;
                return node;
            }
        }
    }
    std::cout << "find nothing" << std::endl;
    return nullptr;
}

// template < class T > inline void appendNode( G::NodeList< T >*& nodeL, const G::Node< T >* node ) {
//     nodeL = new G::NodeList< T >( node, nodeL );
// }

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

G::Graph< AS::Instr >* AssemFlowGraph( AS::InstrList* il, F::Frame* f ) {
    auto                                 instrList = il;
    auto                                 graph     = new G::Graph< AS::Instr >();
    std::vector< G::Node< AS::Instr >* > nodes;
    while ( instrList ) {
        auto head = instrList->head;
        instrList = instrList->tail;
        auto node = graph->NewNode( head );
        nodes.push_back( node );
    }
    // std::cout << "[cfg] generate nodes done" << std::endl;

    // shouldn't be different, anyway
    assert( nodes.size() == graph->nodecount );
    // std::cout << "[cfg] assert success. node count = " << nodes.size() << std::endl;

    size_t counter = 0, limit = nodes.size();
    for ( auto& node : nodes ) {
        auto info = node->NodeInfo();
        switch ( info->kind ) {
        case AS::Instr::Kind::LABEL: {
            // std::cout << "\tfallen into a LABEL" << std::endl;
            auto labelNode = reinterpret_cast< AS::LabelInstr* >( info );
            if ( counter < limit - 1 ) {
                // appendNode<>( node->Succ(), nodes[ counter + 1 ] );
                graph->AddEdge( node, nodes[ counter + 1 ] );
            }
        } break;
        case AS::Instr::Kind::MOVE: {
            // std::cout << "\tfallen into a MOVE" << std::endl;
            auto moveNode = reinterpret_cast< AS::MoveInstr* >( info );
            if ( counter < limit - 1 ) {
                // appendNode<>( node->Succ(), nodes[ counter + 1 ] );
                graph->AddEdge( node, nodes[ counter + 1 ] );
            }
        } break;
        case AS::Instr::Kind::OPER: {
            // std::cout << "\tfallen into an OPER" << std::endl;
            auto operNode = reinterpret_cast< AS::OperInstr* >( info );

            if ( operNode->jumps ) {
                auto target = operNode->jumps->labels;
                // std::cout << "target = " << target << std::endl;
                while ( target ) {
                    auto head      = target->head;
                    target         = target->tail;
                    auto labelNode = findLabel( nodes, head );
                    if ( labelNode ) {
                        graph->AddEdge( node, labelNode );
                    }
                    else {
                        assert( 0 );
                    }
                }
            }
            else {
                if ( counter < limit - 1 ) {
                    // appendNode<>( node->Succ(), nodes[ counter + 1 ] );
                    graph->AddEdge( node, nodes[ counter + 1 ] );
                }
            }
        } break;
        }
        ++counter;
    }
    return graph;
}

}  // namespace FG
