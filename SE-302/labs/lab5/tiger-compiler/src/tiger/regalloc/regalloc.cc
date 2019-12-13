#include "tiger/regalloc/regalloc.h"
#include "tiger/translate/translate.h"
#include <algorithm>
#include <vector>

namespace RA {

static AS::InstrList* spillTemp( F::Frame* f, AS::InstrList* instrL, TEMP::TempList* spillL ) {
    instrL = new AS::InstrList( nullptr, instrL );
    TEMP::TempList* tempL;
    auto            now = instrL->tail, prev = instrL;

    while ( now ) {
        auto as = now->head;

        if ( as->kind == AS::Instr::Kind::MOVE && reinterpret_cast< AS::MoveInstr* >( as )->src->head == reinterpret_cast< AS::MoveInstr* >( as )->dst->head ) {
            // Move(to: Here()), useless
            prev->tail = now->tail;
            // ignore this node
        }
        else {
            prev = now;
        }
        now = now->tail;
    }

    auto tl = spillL;
    while ( tl ) {
        std::cout << "[regalloc] in while(tl)" << std::endl;
        auto head   = tl->head;
        auto newAcc = TR::AllocLocalWrapped( f, "t" + std::to_string( head->Int() ) );
        tl          = tl->tail;
        int  offset = reinterpret_cast< F::InFrameAccess* >( newAcc )->offset;
        auto now = instrL->tail, prev = instrL;
        while ( now ) {
            std::cout << "[regalloc] in while(now)" << std::endl;
            TEMP::TempList *src, *dst;
            auto            head = now->head;
            if ( head->kind == AS::Instr::Kind::LABEL ) {
                // no need to spill anything
                prev = now;
                now  = now->tail;
                continue;
            }
            else if ( head->kind == AS::Instr::Kind::MOVE ) {
                src = reinterpret_cast< AS::MoveInstr* >( head )->src;
                dst = reinterpret_cast< AS::MoveInstr* >( head )->dst;
            }
            else if ( head->kind == AS::Instr::Kind::OPER ) {
                src = reinterpret_cast< AS::OperInstr* >( head )->src;
                dst = reinterpret_cast< AS::OperInstr* >( head )->dst;
            }
            else {
                std::cout << "[regalloc] invalid head->kind - " << head->kind << std::endl;
                assert( 0 );
            }

            while ( src ) {
                auto head = src->head;
                if ( head == tl->head ) {
                    auto temp  = TEMP::Temp::NewTemp();
                    auto load  = new AS::OperInstr( "movq " + std::to_string( offset ) + "(`s0), `d0", new TEMP::TempList( temp, nullptr ), new TEMP::TempList( f->framePointer(), nullptr ), nullptr );
                    src->head  = temp;
                    prev->tail = new AS::InstrList( load, now );
                    prev       = prev->tail;
                }
                src = src->tail;
            }

            while ( dst ) {
                auto head = dst->head;
                if ( head == tl->head ) {
                    auto temp = TEMP::Temp::NewTemp();

                    auto store = new AS::OperInstr( "movq `s1, " + std::to_string( offset ) + "(`s0)", nullptr, new TEMP::TempList( f->framePointer(), new TEMP::TempList( temp, nullptr ) ), nullptr );
                    dst->head  = temp;
                    prev       = now;
                    now->tail  = new AS::InstrList( store, now->tail );
                    now        = now->tail;
                }
                dst = dst->tail;
            }

            prev = now;
            now  = now->tail;
        }
        tl = tl->tail;
    }
    instrL = instrL->tail;
    return instrL;
}

Result RegAlloc( F::Frame* f, AS::InstrList* il ) {
    // TODO: Put your codes here (lab6).
    auto result     = Result();
    result.il       = il;
    result.coloring = TEMP::Map::Empty();

    // TEMP::TempList* temps = nullptr;
    std::vector< TEMP::Temp* > tempset;
    auto                       til = il;
    while ( til ) {
        std::cout << "[regalloc] in while(til)" << std::endl;
        auto head = til->head;
        til       = til->tail;

        switch ( head->kind ) {
        case AS::Instr::Kind::LABEL:
            // auto labelInstr = reinterpret_cast< AS::LabelInstr* >( head );
            // no available Temp* for LabelInstr.
            break;
        case AS::Instr::Kind::MOVE: {
            auto moveInstr = reinterpret_cast< AS::MoveInstr* >( head );
            {
                auto temps = moveInstr->dst;
                while ( temps ) {
                    if ( std::find( tempset.begin(), tempset.end(), temps->head ) == tempset.end() ) {
                        tempset.push_back( temps->head );
                    }
                    temps = temps->tail;
                }
            }

            {
                auto temps = moveInstr->src;
                while ( temps ) {
                    if ( std::find( tempset.begin(), tempset.end(), temps->head ) == tempset.end() ) {
                        tempset.push_back( temps->head );
                    }
                    temps = temps->tail;
                }
            }
        } break;
        case AS::Instr::Kind::OPER: {
            auto operInstr = reinterpret_cast< AS::OperInstr* >( head );

            {
                auto temps = operInstr->dst;
                while ( temps ) {
                    if ( std::find( tempset.begin(), tempset.end(), temps->head ) == tempset.end() ) {
                        tempset.push_back( temps->head );
                    }
                    temps = temps->tail;
                }
            }

            {
                auto temps = operInstr->src;
                while ( temps ) {
                    if ( std::find( tempset.begin(), tempset.end(), temps->head ) == tempset.end() ) {
                        tempset.push_back( temps->head );
                    }
                    temps = temps->tail;
                }
            }
        } break;
        default:
            std::cout << "[regalloc] invalid instr type " << head->kind << std::endl;
            assert( 0 );
            break;
        }
    }

    TEMP::TempList* tList = nullptr;

    for ( size_t i = 0; i < tempset.size(); i++ ) {
        // spill them all
        tList = new TEMP::TempList( tempset[ i ], tList );
    }

    auto spill = spillTemp( f, il, tList );
    result.il  = spill;
    // G::Gra           flow      = FG_AssemFlowGraph( il, f );
    // struct Live_graph liveness  = Live_liveness( flow );
    // struct COL_result colResult = COL_color( liveness.graph, F_initial(), F_registers(), liveness.moves, liveness.adjSet, liveness.table );
    // if ( colResult.spills != NULL ) {
    //     il = rewriteProgram( f, il, colResult.spills, colResult.tempAlias );
    // AS_printInstrList(stdout, il, Temp_layerMap(F_tempMap, Temp_name()));
    return result;
}

}  // namespace RA