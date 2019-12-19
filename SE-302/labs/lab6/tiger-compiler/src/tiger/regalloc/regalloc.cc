#include "tiger/regalloc/regalloc.h"
#include "tiger/codegen/assem.h"
#include "tiger/translate/translate.h"
#include <algorithm>
#include <map>
#include <utility>
#include <vector>

namespace RA {

TEMP::Temp* nth_temp( TEMP::TempList* list, int i ) {
    assert( list );
    if ( i == 0 )
        return list->head;
    else
        return nth_temp( list->tail, i - 1 );
}

static std::string formatAssembly( std::string assem, TEMP::TempList* dst, TEMP::TempList* src, TEMP::Map* m ) {
    std::cout << "[instr] reduced format called. assem = " << assem << ", dst = " << dst << ", src = " << src << std::endl;

    std::string result;
    for ( int i = 0; i < assem.size(); i++ ) {
        char ch = assem.at( i );
        if ( ch == '`' ) {
            i++;
            switch ( assem.at( i ) ) {
            case 's': {
                i++;
                int n = assem.at( i ) - '0';
                std::cout << "\t[instr] [format] got a `s = " << nth_temp( src, n )->Int() << std::endl;
                std::string* s = m->Look( nth_temp( src, n ) );
                if ( s ) {
                    result += *s;
                }
                else {
                    std::cout << "**** 灾变 **** cannot find the " << n << "th param of the src. original assem: " << assem << std::endl;
                    result += "t" + std::to_string( nth_temp( src, n )->Int() );
                }
            } break;
            case 'd': {
                i++;
                int n = assem.at( i ) - '0';
                std::cout << "\t[instr] [format] got a `d = " << nth_temp( dst, n )->Int() << std::endl;
                std::string* s = m->Look( nth_temp( dst, n ) );
                if ( s ) {
                    result += *s;
                }
                else {
                    std::cout << "**** 灾变 **** cannot find the " << n << "th param of the dst. original assem: " << assem << std::endl;
                    result += "t" + std::to_string( nth_temp( dst, n )->Int() );
                }
            } break;
            case 'j': {
                result += "j";
            } break;
            case '`': {
                result += '`';
            } break;
            default:
                assert( 0 );
            }
        }
        else {
            result += ch;
        }
    }
    return result;
}

// static bool smartRegisterAlter = false;
// static int  idiotRegisterAlter = 0;

static std::string stringBuffers[] = { "%rbp", "%rsp", "%rax" };

static AS::InstrList* spillTempFoolishly( F::Frame* f, AS::InstrList* instrL, TEMP::TempList* spillL ) {
    // warning: this function is extremely foolish.
    // intelligence quantity collapsing may occur.
    // read it at your own risk.

    std::cout << "[regalloc] entered apillTempFoolishly." << std::endl;
    std::cout << "\tcurrently, framePointer = t" << f->framePointer()->Int() << std::endl;
    std::cout << "\t           stackPointer = t" << f->stackPointer()->Int() << std::endl;
    std::cout << "\t           returnValue = t" << f->returnValue()->Int() << std::endl;
    std::vector< AS::Instr* > instrs;

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

    std::map< TEMP::Temp*, std::string > offset_pair;

    auto tl = spillL;
    while ( tl ) {
        // std::cout << "[regalloc] handling temp t" << tl->head->Int << std::endl;
        // std::cout << "[regalloc] in while(tl). tl = " << tl << std::endl;
        auto head   = tl->head;
        auto newAcc = TR::AllocLocalWrapped( f, "t" + std::to_string( head->Int() ) );
        int  offset = reinterpret_cast< F::InFrameAccess* >( newAcc )->offset;
        offset_pair.insert( { head, std::to_string( offset ) + "(%rbp)" } );
        std::cout << "[regalloc] spill out t" << head->Int() << " => " << offset << "(%rbp)." << std::endl;
        tl = tl->tail;
    }

    offset_pair.insert( { f->framePointer(), "%rbp" } );
    offset_pair.insert( { f->stackPointer(), "%rsp" } );
    offset_pair.insert( { f->returnValue(), "%rax" } );

    auto instrLT = instrL;
    while ( instrLT ) {
        std::string globalUselessRegs[] = { "%r10", "%r11" };
        auto        head                = instrLT->head;
        instrLT                         = instrLT->tail;

        if ( head->kind == AS::Instr::MOVE ) {
            auto                       moveInstr = reinterpret_cast< AS::MoveInstr* >( head );
            std::vector< TEMP::Temp* > unmatchedTempsReadAndWrite;
            std::vector< TEMP::Temp* > unmatchedTempsReadOnly;
            auto                       d = moveInstr->dst;
            while ( d ) {
                if ( d->head != f->framePointer() ) {
                    unmatchedTempsReadOnly.push_back( d->head );
                    unmatchedTempsReadAndWrite.push_back( d->head );
                }
                d = d->tail;
            }

            auto s = moveInstr->src;
            while ( s ) {
                if ( s->head != f->framePointer() ) {
                    unmatchedTempsReadOnly.push_back( s->head );
                }
                s = s->tail;
            }

            std::cout << "going to assert unmatchedTemps count = " << unmatchedTempsReadOnly.size() << ". should < 3" << std::endl;
            assert( unmatchedTempsReadOnly.size() < 3 );

            auto map = TEMP::Map::Empty();

            TEMP::Temp* tempBuffers[] = { f->framePointer(), f->stackPointer(), f->returnValue() };
            for ( size_t i = 0; i < 3; i++ ) {
                map->Enter( tempBuffers[ i ], &stringBuffers[ i ] );
            }

            AS::InstrList* finalInstr = nullptr;
            for ( size_t i = 0; i < unmatchedTempsReadOnly.size(); i++ ) {
                auto pair_find = offset_pair.find( unmatchedTempsReadOnly[ i ] );
                std::cout << "satisfying the #" << i << " (t" << unmatchedTempsReadOnly[ i ]->Int() << ") unmatchedTemps." << std::endl;
                assert( pair_find != offset_pair.end() );
                instrs.push_back( new AS::MoveInstr( "movq " + pair_find->second + ", " + globalUselessRegs[ i ], nullptr, nullptr ) );
                std::cout << "[regalloc] [move] 起头, assem = "
                          << "movq " + pair_find->second + ", " + globalUselessRegs[ i ] << std::endl;
                map->Enter( unmatchedTempsReadOnly[ i ], &globalUselessRegs[ i ] );
            }

            instrs.push_back( new AS::MoveInstr( formatAssembly( moveInstr->assem, moveInstr->dst, moveInstr->src, map ), nullptr, nullptr ) );

            for ( size_t i = 0; i < unmatchedTempsReadAndWrite.size(); i++ ) {
                auto pair_find = offset_pair.find( unmatchedTempsReadAndWrite[ i ] );
                std::cout << "satisfying the #" << i << " (t" << unmatchedTempsReadAndWrite[ i ]->Int() << ") unmatchedTemps." << std::endl;
                assert( pair_find != offset_pair.end() );
                instrs.push_back( new AS::MoveInstr( "movq " + globalUselessRegs[ i ] + ", " + pair_find->second, nullptr, nullptr ) );

                std::cout << "[regalloc] [move] 收尾, assem = "
                          << "movq " + globalUselessRegs[ i ] + ", " + pair_find->second << std::endl;
                map->Enter( unmatchedTempsReadAndWrite[ i ], &globalUselessRegs[ i ] );
            }
        }
        else if ( head->kind == AS::Instr::OPER ) {
            auto operInstr = reinterpret_cast< AS::OperInstr* >( head );

            std::vector< TEMP::Temp* > unmatchedTempsReadAndWrite;
            std::vector< TEMP::Temp* > unmatchedTempsReadOnly;

            std::string ass = operInstr->assem;

            bool isLeaq = false;
            if ( ass.size() >= 4 && ass[ 0 ] == 'l' && ass[ 1 ] == 'e' && ass[ 2 ] == 'a' && ass[ 3 ] == 'q' ) {
                isLeaq = true;
            }

            auto d = operInstr->dst;
            while ( d ) {
                unmatchedTempsReadAndWrite.push_back( d->head );
                unmatchedTempsReadOnly.push_back( d->head );
                d = d->tail;
            }

            auto s = operInstr->src;
            while ( s ) {
                unmatchedTempsReadOnly.push_back( s->head );
                s = s->tail;
            }

            std::cout << "going to assert unmatchedTemps count = " << unmatchedTempsReadOnly.size() << ". should < 3" << std::endl;
            assert( unmatchedTempsReadOnly.size() < 3 );

            auto map = TEMP::Map::Empty();

            if ( isLeaq ) {
                AS::InstrList* finalInstr = nullptr;
                for ( size_t i = 0; i < unmatchedTempsReadOnly.size(); i++ ) {
                    auto pair_find = offset_pair.find( unmatchedTempsReadOnly[ i ] );
                    std::cout << "satisfying the #" << i << " (t" << unmatchedTempsReadOnly[ i ]->Int() << ") unmatchedTemps." << std::endl;
                    assert( pair_find != offset_pair.end() );
                    instrs.push_back( new AS::MoveInstr( "leaq " + pair_find->second + ", " + globalUselessRegs[ i ], nullptr, nullptr ) );
                    std::cout << "[regalloc] [oper] 起头, assem = "
                              << "leaq " + pair_find->second + ", " + globalUselessRegs[ i ] << std::endl;
                    map->Enter( unmatchedTempsReadOnly[ i ], &globalUselessRegs[ i ] );
                }
            }
            else {
                AS::InstrList* finalInstr = nullptr;
                for ( size_t i = 0; i < unmatchedTempsReadOnly.size(); i++ ) {
                    auto pair_find = offset_pair.find( unmatchedTempsReadOnly[ i ] );
                    std::cout << "satisfying the #" << i << " (t" << unmatchedTempsReadOnly[ i ]->Int() << ") unmatchedTemps." << std::endl;
                    assert( pair_find != offset_pair.end() );
                    instrs.push_back( new AS::MoveInstr( "movq " + pair_find->second + ", " + globalUselessRegs[ i ], nullptr, nullptr ) );
                    std::cout << "[regalloc] [oper] 起头, assem = "
                              << "movq " + pair_find->second + ", " + globalUselessRegs[ i ] << std::endl;
                    map->Enter( unmatchedTempsReadOnly[ i ], &globalUselessRegs[ i ] );
                }
            }
            instrs.push_back( new AS::OperInstr( formatAssembly( operInstr->assem, operInstr->dst, operInstr->src, map ), nullptr, nullptr, operInstr->jumps ) );

            for ( size_t i = 0; i < unmatchedTempsReadAndWrite.size(); i++ ) {
                auto pair_find = offset_pair.find( unmatchedTempsReadAndWrite[ i ] );
                std::cout << "satisfying the #" << i << " (t" << unmatchedTempsReadAndWrite[ i ]->Int() << ") unmatchedTemps." << std::endl;
                assert( pair_find != offset_pair.end() );
                instrs.push_back( new AS::MoveInstr( "movq " + globalUselessRegs[ i ] + ", " + pair_find->second, nullptr, nullptr ) );
                std::cout << "[regalloc] [oper] 收尾, assem = "
                          << "movq " + globalUselessRegs[ i ] + ", " + pair_find->second << std::endl;
                map->Enter( unmatchedTempsReadAndWrite[ i ], &globalUselessRegs[ i ] );
            }
        }
        else if ( head->kind == AS::Instr::LABEL ) {
            instrs.push_back( head );
        }
        else {
            // who are you?
            assert( 0 );
        }
    }

    AS::InstrList *head = nullptr, *node = nullptr;

    for ( size_t i = 0; i < instrs.size(); i++ ) {
        if ( node ) {
            node->tail = new AS::InstrList( instrs[ i ], nullptr );
            node       = node->tail;
        }
        else {
            node = new AS::InstrList( instrs[ i ], nullptr );
            head = node;
        }
    }

    return head;
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
                        if ( std::find( tempset.begin(), tempset.end(), temps->head ) == tempset.end() ) {
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
                        if ( std::find( tempset.begin(), tempset.end(), temps->head ) == tempset.end() ) {
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
                        if ( std::find( tempset.begin(), tempset.end(), temps->head ) == tempset.end() ) {
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
                        if ( std::find( tempset.begin(), tempset.end(), temps->head ) == tempset.end() ) {
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
            il = spillTempFoolishly( f, il, tList );
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