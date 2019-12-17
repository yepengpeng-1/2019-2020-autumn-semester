#include "tiger/regalloc/regalloc.h"
#include "tiger/translate/translate.h"
#include <algorithm>
#include <vector>

namespace RA {

static bool smartRegisterAlter = false;
static int  idiotRegisterAlter = 0;

static AS::InstrList* spillTemp( F::Frame* f, AS::InstrList* instrL, TEMP::TempList* spillL ) {
    auto now = instrL->tail, prev = instrL;

    while ( now ) {
        auto as = now->head;

        if ( as->kind == AS::Instr::Kind::MOVE && reinterpret_cast< AS::MoveInstr* >( as )->src->head == reinterpret_cast< AS::MoveInstr* >( as )->dst->head ) {
            // 原地 tp
            prev->tail = now->tail;
            // ignore this node
        }
        else {
            prev = now;
        }
        now = now->tail;
    }

    // now = instrL->tail, prev = instrL;
    auto tl = spillL;
    while ( tl ) {
        // std::cout << "[regalloc] handling temp t" << tl->head->Int << std::endl;
        // std::cout << "[regalloc] in while(tl). tl = " << tl << std::endl;
        auto head   = tl->head;
        auto newAcc = TR::AllocLocalWrapped( f, "t" + std::to_string( head->Int() ) );

        int  offset = reinterpret_cast< F::InFrameAccess* >( newAcc )->offset;
        auto now = instrL->tail, prev = instrL;
        while ( now ) {
            // std::cout << "[regalloc] in while(now). now = " << now << std::endl;
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

            bool onlyOnceFlag = false;
            while ( src ) {

                if ( RA::idiotRegisterAlter % 3 == 0 ) {

                    // std::cout << "while loop of src: " << src << ", which->head = " << src->head << std::endl;
                    // auto head = src->head;
                    if ( src->head == tl->head ) {
                        std::cout << "[regalloc] handling temp t" << tl->head->Int() << " as a src, using idiotRegister()" << std::endl;
                        // auto temp  = TEMP::Temp::NewTemp();
                        auto load  = new AS::OperInstr( "movq " + std::to_string( offset ) + "(`s0), `d0", new TEMP::TempList( f->idiotRegister(), nullptr ),
                                                       new TEMP::TempList( f->framePointer(), nullptr ), nullptr );
                        src->head  = f->idiotRegister();
                        prev->tail = new AS::InstrList( load, now );
                        prev       = prev->tail;
                        ++idiotRegisterAlter;
                        onlyOnceFlag = true;
                        break;
                    }
                }
                else if ( RA::idiotRegisterAlter % 3 == 1 ) {
                    if ( src->head == tl->head ) {
                        std::cout << "[regalloc] handling temp t" << tl->head->Int() << " as a src, using idiotRegister2()" << std::endl;
                        // auto temp  = TEMP::Temp::NewTemp();
                        auto load  = new AS::OperInstr( "movq " + std::to_string( offset ) + "(`s0), `d0", new TEMP::TempList( f->idiotRegister2(), nullptr ),
                                                       new TEMP::TempList( f->framePointer(), nullptr ), nullptr );
                        src->head  = f->idiotRegister2();
                        prev->tail = new AS::InstrList( load, now );
                        prev       = prev->tail;
                        ++idiotRegisterAlter;
                        onlyOnceFlag = true;
                        break;
                    }
                }
                else {
                    if ( src->head == tl->head ) {
                        // auto temp  = TEMP::Temp::NewTemp();
                        std::cout << "[regalloc] handling temp t" << tl->head->Int() << " as a src, using idiotRegister3()" << std::endl;
                        auto load  = new AS::OperInstr( "movq " + std::to_string( offset ) + "(`s0), `d0", new TEMP::TempList( f->idiotRegister3(), nullptr ),
                                                       new TEMP::TempList( f->framePointer(), nullptr ), nullptr );
                        src->head  = f->idiotRegister3();
                        prev->tail = new AS::InstrList( load, now );
                        prev       = prev->tail;
                        ++idiotRegisterAlter;
                        onlyOnceFlag = true;
                        break;
                    }
                }

                src = src->tail;
            }
            if ( onlyOnceFlag ) {
                continue;
            }

            while ( dst ) {

                if ( RA::smartRegisterAlter ) {
                    // std::cout << "while loop of dst: " << dst << std::endl;
                    // auto head = dst->head;
                    if ( dst->head == tl->head ) {
                        std::cout << "[regalloc] handling temp t" << tl->head->Int() << " as a dst, using smartRegister()" << std::endl;
                        // auto temp  = TEMP::Temp::NewTemp();
                        auto store         = new AS::OperInstr( "movq `s1, " + std::to_string( offset ) + "(`s0)", nullptr,
                                                        new TEMP::TempList( f->framePointer(), new TEMP::TempList( f->smartRegister(), nullptr ) ), nullptr );
                        dst->head          = f->smartRegister();
                        prev               = now;
                        now->tail          = new AS::InstrList( store, now->tail );
                        now                = now->tail;
                        smartRegisterAlter = !smartRegisterAlter;
                        break;
                    }
                }
                else {
                    if ( dst->head == tl->head ) {
                        // auto temp  = TEMP::Temp::NewTemp();
                        std::cout << "[regalloc] handling temp t" << tl->head->Int() << " as a dst, using smartRegister2()" << std::endl;
                        auto store         = new AS::OperInstr( "movq `s1, " + std::to_string( offset ) + "(`s0)", nullptr,
                                                        new TEMP::TempList( f->framePointer(), new TEMP::TempList( f->smartRegister2(), nullptr ) ), nullptr );
                        dst->head          = f->smartRegister2();
                        prev               = now;
                        now->tail          = new AS::InstrList( store, now->tail );
                        now                = now->tail;
                        smartRegisterAlter = !smartRegisterAlter;
                        break;
                    }
                }

                dst = dst->tail;
            }

            prev = now;
            now  = now->tail;
        }
        tl = tl->tail;
    }
    return instrL;
}

inline bool isExcept( F::Frame* f, TEMP::Temp* temp ) {
    static const TEMP::Temp* excepts[] = { f->framePointer(),  f->idiotRegister(),  f->returnValue(),    f->stackPointer(),  f->smartRegister(),
                                           f->radioRegister(), f->smartRegister2(), f->idiotRegister2(), f->idiotRegister3() };
    for ( size_t i = 0; i < 9; i++ ) {
        if ( temp == excepts[ i ] ) {
            return true;
        }
    }
    return false;
}

Result RegAlloc( F::Frame* f, AS::InstrList* il ) {
    // TODO: Put your codes here (lab6).
    auto result     = Result();
    result.coloring = TEMP::Map::Empty();

    std::vector< TEMP::Temp* > tempset;
    while ( true ) {

        // TEMP::TempList* temps = nullptr;
        auto til = il;
        while ( til ) {
            std::cout << "[regalloc] in while(til)" << std::endl;
            auto head = til->head;
            std::cout << "this instr kind = " << head->kind << std::endl;
            til = til->tail;

            switch ( head->kind ) {
            case AS::Instr::Kind::LABEL: {
                auto labelInstr = reinterpret_cast< AS::LabelInstr* >( head );
                std::cout << "[regalloc] [spillcheck] gotta an LabelInstr, name = " << labelInstr->label->Name() << std::endl;
                // no available Temp* for LabelInstr.
                break;
            }
            case AS::Instr::Kind::MOVE: {
                auto moveInstr = reinterpret_cast< AS::MoveInstr* >( head );
                {
                    auto temps = moveInstr->dst;
                    while ( temps ) {
                        std::cout << "[regalloc] [spillcheck] on t" << temps->head->Int() << std::endl;
                        if ( true || std::find( tempset.begin(), tempset.end(), temps->head ) == tempset.end() ) {
                            if ( !isExcept( f, temps->head ) ) {
                                tempset.push_back( temps->head );
                            }
                        }
                        temps = temps->tail;
                    }
                }

                {
                    auto temps = moveInstr->src;
                    while ( temps ) {
                        std::cout << "[regalloc] [spillcheck] on t" << temps->head->Int() << std::endl;
                        if ( true || std::find( tempset.begin(), tempset.end(), temps->head ) == tempset.end() ) {
                            if ( !isExcept( f, temps->head ) ) {
                                tempset.push_back( temps->head );
                            }
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
                        std::cout << "[regalloc] [spillcheck] on t" << temps->head->Int() << std::endl;
                        if ( true || std::find( tempset.begin(), tempset.end(), temps->head ) == tempset.end() ) {
                            if ( !isExcept( f, temps->head ) ) {
                                tempset.push_back( temps->head );
                            }
                        }
                        temps = temps->tail;
                    }
                }

                {
                    auto temps = operInstr->src;
                    while ( temps ) {
                        std::cout << "[regalloc] [spillcheck] on t" << temps->head->Int() << std::endl;
                        if ( true || std::find( tempset.begin(), tempset.end(), temps->head ) == tempset.end() ) {
                            if ( !isExcept( f, temps->head ) ) {
                                tempset.push_back( temps->head );
                            }
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

        if ( tempset.size() != 0 ) {
            TEMP::TempList* tList = nullptr;
            std::cout << "\n\n\n\nSPILLED TEMP SHOW\n\n" << std::endl;
            for ( int i = tempset.size() - 1; i >= 0; --i ) {
                // spill them all
                tList = new TEMP::TempList( tempset[ i ], tList );
                std::cout << "gotta spilled temp #" << i << ": t" << tempset[ i ]->Int() << std::endl;
            }
            std::cout << "\n\n\n\nSPILLED TEMP SHOW OVER\n\n" << std::endl;

            std::cout << "[regalloc] relsama houwy" << std::endl;
            // relsama houwy
            il = spillTemp( f, il, tList );
        }
        else {
            std::cout << "[regalloc] over then, I suppose." << std::endl;
            // no more spilled nodes. bye
            result.il = il;
            break;
        }
        // ...or, re-scan the program, again and again.
        tempset.clear();
    }
    return result;
}

}  // namespace RA