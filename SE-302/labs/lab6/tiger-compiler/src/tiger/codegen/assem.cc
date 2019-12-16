#include "tiger/codegen/assem.h"
#include <map>
namespace {

TEMP::Temp* nth_temp( TEMP::TempList* list, int i ) {
    assert( list );
    if ( i == 0 )
        return list->head;
    else
        return nth_temp( list->tail, i - 1 );
}

TEMP::Label* nth_label( TEMP::LabelList* list, int i ) {
    assert( list );
    if ( i == 0 )
        return list->head;
    else
        return nth_label( list->tail, i - 1 );
}

}  // namespace

namespace AS {
/* first param is string created by this function by reading 'assem' string
 * and replacing `d `s and `j stuff.
 * Last param is function to use to determine what to do with each temp.
 */
static std::string format( std::string assem, TEMP::TempList* dst, TEMP::TempList* src, Targets* jumps, TEMP::Map* m ) {
    std::cout << "[instr] Format called. assem = " << assem << ", dst = " << dst << ", src = " << src << std::endl;
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
                    result += "t" + std::to_string( nth_temp( dst, n )->Int() );
                }
            } break;
            case 'j': {
                i++;
                assert( jumps );
                int n = assem.at( i ) - '0';
                std::cout << "\t[instr] [format] got a `j = " << nth_label( jumps->labels, n )->Name() << std::endl;
                std::string s = TEMP::LabelString( nth_label( jumps->labels, n ) );
                result += s;
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

static const std::string useless_craps[]    = { "movq (%r13), (%r13)", "movq (%r10), (%r10)", "movq (%r15), (%r15)" };
static const size_t      useless_crap_count = 3;

// movq (%r10), (%r15)
// movq (%r15), (%r10)
// movq (%r15), (%r13)
// movq (%r13), (%r15)

static const std::map< std::string, std::string > replacingPair = {
    { "movq (%r10), (%r13)", "movq (%r10), %r14\nmovq %r14, (%r13)" }, { "movq (%r13), (%r10)", "movq (%r13), %r14\nmovq %r14, (%r10)" },
    { "movq (%r10), (%r15)", "movq (%r10), %r14\nmovq %r14, (%r15)" }, { "movq (%r15), (%r13)", "movq (%r15), %r14\nmovq %r14, (%r13)" },
    { "movq (%r15), (%r10)", "movq (%r15), %r14\nmovq %r14, (%r10)" }, { "movq (%r13), (%r15)", "movq (%r13), %r14\nmovq %r14, (%r15)" }
};

static const std::string internalRegs = "%r14";

void OperInstr::Print( FILE* out, TEMP::Map* m ) const {

    std::cout << "[instr] OperInstr::Print called." << std::endl;
    std::string result = format( this->assem, this->dst, this->src, this->jumps, m );

    for ( size_t i = 0; i < useless_crap_count; i++ ) {
        if ( result == useless_craps[ i ] ) {
            return;
        }
    }

    auto find = replacingPair.find( result );

    if ( find != replacingPair.end() ) {
        fprintf( out, "%s\n", find->second.c_str() );
    }
    else {
        fprintf( out, "%s\n", result.c_str() );
    }
}

void LabelInstr::Print( FILE* out, TEMP::Map* m ) const {
    std::cout << "[instr] LabelInstr::Print called." << std::endl;
    std::string result = format( this->assem, nullptr, nullptr, nullptr, m );
    fprintf( out, "%s:\n", result.c_str() );
}

void MoveInstr::Print( FILE* out, TEMP::Map* m ) const {
    std::cout << "[instr] MoveInstr::Print called." << std::endl;
    if ( ( this->dst == nullptr ) && ( this->src == nullptr ) ) {
        std::size_t srcpos = this->assem.find_first_of( '%' );
        if ( srcpos != std::string::npos ) {
            std::size_t dstpos = this->assem.find_first_of( '%', srcpos + 1 );
            if ( dstpos != std::string::npos ) {
                if ( ( this->assem[ srcpos + 1 ] == this->assem[ dstpos + 1 ] ) && ( this->assem[ srcpos + 2 ] == this->assem[ dstpos + 2 ] )
                     && ( this->assem[ srcpos + 3 ] == this->assem[ dstpos + 3 ] ) )
                    return;
            }
        }
    }
    std::string result = format( this->assem, this->dst, this->src, nullptr, m );
    for ( size_t i = 0; i < useless_crap_count; i++ ) {
        if ( result == useless_craps[ i ] ) {
            return;
        }
    }
    fprintf( out, "%s\n", result.c_str() );
}

void InstrList::Print( FILE* out, TEMP::Map* m ) const {
    std::cout << "[instr] InstrList::Print called." << std::endl;
    const InstrList* p = this;
    for ( ; p; p = p->tail ) {
        p->head->Print( out, m );
    }
    fprintf( out, "\n" );
}

/* put list b at the end of list a */
InstrList* InstrList::Splice( InstrList* a, InstrList* b ) {
    InstrList* p;
    if ( a == nullptr )
        return b;
    for ( p = a; p->tail != nullptr; p = p->tail )
        ;
    p->tail = b;
    return a;
}

}  // namespace AS