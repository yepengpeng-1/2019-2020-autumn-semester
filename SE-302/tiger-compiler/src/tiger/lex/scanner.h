#ifndef TIGER_LEX_SCANNER_H_
#define TIGER_LEX_SCANNER_H_

#include <algorithm>
#include <iostream>
#include <stdexcept>
#include <string>

#include "scannerbase.h"
#include "tiger/errormsg/errormsg.h"
#include "tiger/parse/parserbase.h"

extern EM::ErrorMsg errormsg;

class Scanner : public ScannerBase {
public:
    explicit Scanner( std::istream& in = std::cin, std::ostream& out = std::cout );

    Scanner( std::string const& infile, std::string const& outfile );

    int lex();

private:
    int lex__();
    int executeAction__( size_t ruleNr );

    void print();
    void preCode();
    void postCode( PostEnum__ type );
    bool adjust();
    void adjustStr();
    void adjustInComments();

    int         commentLevel_;
    std::string stringBuf_;
    int         charPos_;
};

inline Scanner::Scanner( std::istream& in, std::ostream& out ) : ScannerBase( in, out ), charPos_( 1 ) {}

inline Scanner::Scanner( std::string const& infile, std::string const& outfile ) : ScannerBase( infile, outfile ), charPos_( 1 ) {}

inline int Scanner::lex() {
    return lex__();
}

static int layer = 0;

static int enter_dblquotes = 0;

inline void addCommentLayer() {
    ++layer;
    // std::cout << "layer+, now layer = " << layer << std::endl;
    // errormsg.Newline();
}

inline void reduceCommentLayer() {
    --layer;
    // std::cout << "layer-, now layer = " << layer << std::endl;
    // errormsg.Newline();
}

inline bool isInComments() {
    return layer != 0;
}

inline std::string replaceEscapeCharacters( const std::string& input ) {

    bool        multiline_mode = false;
    std::string res;
    auto        it = input.begin();
    while ( it != input.end() ) {
        char c = *it++;
        if ( c == '\\' && it != input.end() ) {
            multiline_mode = !multiline_mode;
            switch ( *it++ ) {
            case '\\':
                c = '\\';
                break;
            case 'n':
                c = '\n';
                break;
            case 't':
                c = '\t';
                break;
            case '^':
                // '\a' starts from 007
                c = *it & 63;
                ++it;
                break;
            case '\n':
                if ( multiline_mode ) {
                    continue;
                }
                c = '\n';
                break;
            case ' ':
                if ( multiline_mode ) {
                    continue;
                }
                c = ' ';
                break;
            case '\t':
                if ( multiline_mode ) {
                    continue;
                }
                c = '\t';
                break;
            case '\f':
                if ( multiline_mode ) {
                    continue;
                }
                c = '\f';
                break;
            case '0':
            case '1':
            case '2':
            case '3':
            case '4':
            case '5':
            case '6':
            case '7':
                char numbers[ 4 ];
                --it;
                numbers[ 0 ] = *( it );
                numbers[ 1 ] = *( ++it );
                numbers[ 2 ] = *( ++it );
                numbers[ 3 ] = '\0';
                ++it;
                int result;
                // std::cout << "Conversion string: " << std::stoi( std::string( numbers ), nullptr, 10 ) << std::endl;
                result = std::stoi( std::string( numbers ), nullptr, 10 );

                c = ( char )result;
                // std::cout << "Conversion char " << c << std::endl;
                break;
            default:
                // failed to escape. just ignore it.
                it--;
                continue;
            }
        }
        else {
            if ( c == '\n' || c == '\t' || c == ' ' || c == '\f' ) {
                if ( multiline_mode ) {
                    continue;
                }
            }
        }
        res += c;
    }

    return res;
}

inline void Scanner::preCode() {
    // optionally replace by your own code
}

inline void Scanner::postCode( PostEnum__ type ) {
    // optionally replace by your own code
}

inline void Scanner::print() {
    print__();
}

inline bool Scanner::adjust() {

    errormsg.tokPos = charPos_;
    charPos_ += length();
    if ( isInComments() ) {
        // printf( "in comments!" );
        return false;
    }
    return true;
}

inline void Scanner::adjustInComments() {
    errormsg.tokPos = charPos_;
    charPos_ += length();
}

inline void Scanner::adjustStr() {
    charPos_ += length();
}

#endif  // TIGER_LEX_SCANNER_H_
