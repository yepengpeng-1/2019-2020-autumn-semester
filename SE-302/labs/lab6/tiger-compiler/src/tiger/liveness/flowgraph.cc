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

template < class T > inline G::Node< T >* findNodeByInfo( std::vector< G::Node< T >* > vec, T* infoP ) {
    for ( const auto& node : vec ) {
        if ( node->NodeInfo() == infoP ) {
            return node;
        }
    }
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
    for ( auto& node : nodes ) {
        auto info = node->NodeInfo();
        switch ( info->kind ) {
        case AS::Instr::Kind::LABEL: {
            auto labelNode = reinterpret_cast< AS::LabelInstr* >( info );
        } break;
        case AS::Instr::Kind::MOVE:
            auto moveNode = reinterpret_cast< AS::MoveInstr* >( info );
            break;
        case AS::Instr::Kind::OPER:
            auto operNode = reinterpret_cast< AS::OperInstr* >( info );
            break;
        }
    }
}

}  // namespace FG
