#ifndef TIGER_ESCAPE_ESCAPE_H_
#define TIGER_ESCAPE_ESCAPE_H_

#include "tiger/absyn/absyn.h"

namespace ESC {

class EscapeEntry {
public:
    int   depth;
    bool* escape;

    EscapeEntry( int depth, bool* escape ) : depth( depth ), escape( escape ) {}
};

void traverseExp( S::Table< EscapeEntry >*, int, A::Exp* );
void traverseDec( S::Table< EscapeEntry >*, int, A::Dec* );
void traverseVar( S::Table< EscapeEntry >*, int, A::Var* );

void FindEscape( A::Exp* exp );
}  // namespace ESC

#endif