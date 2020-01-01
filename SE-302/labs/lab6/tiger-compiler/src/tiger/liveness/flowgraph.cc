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
    for ( const auto& node : vec ) {
        if ( node->NodeInfo()->kind == AS::Instr::Kind::LABEL ) {
            auto labelInstr = reinterpret_cast< AS::LabelInstr* >( node->NodeInfo() );
            if ( labelInstr->label == label ) {
                return node;
            }
        }
    }
    return nullptr;
}

// template < class T > inline void appendNode( G::NodeList< T >*& nodeL, const G::Node< T >* node ) {
//     nodeL = new G::NodeList< T >( node, nodeL );
// }

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

    // shouldn't be different, anyway
    assert( nodes.size() == graph->nodecount );

    size_t counter = 0, limit = nodes.size();
    for ( auto& node : nodes ) {
        auto info = node->NodeInfo();
        switch ( info->kind ) {
        case AS::Instr::Kind::LABEL: {
            auto labelNode = reinterpret_cast< AS::LabelInstr* >( info );
            if ( counter != limit - 1 ) {
                // appendNode<>( node->Succ(), nodes[ counter + 1 ] );
                graph->AddEdge( node, nodes[ counter + 1 ] );
            }
        } break;
        case AS::Instr::Kind::MOVE: {
            auto moveNode = reinterpret_cast< AS::MoveInstr* >( info );
            if ( counter != limit - 1 ) {
                // appendNode<>( node->Succ(), nodes[ counter + 1 ] );
                graph->AddEdge( node, nodes[ counter + 1 ] );
            }
        } break;
        case AS::Instr::Kind::OPER: {
            auto operNode = reinterpret_cast< AS::OperInstr* >( info );
            auto target   = operNode->jumps->labels;
            while ( target ) {
                auto head      = target->head;
                target         = target->tail;
                auto labelNode = findLabel( nodes, head );
                if ( labelNode ) {
                    graph->AddEdge( node, labelNode );
                }
            }
        } break;
        }
        ++counter;
    }
}

}  // namespace FG
