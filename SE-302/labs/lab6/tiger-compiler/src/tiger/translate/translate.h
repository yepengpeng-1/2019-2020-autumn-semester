#ifndef TIGER_TRANSLATE_TRANSLATE_H_
#define TIGER_TRANSLATE_TRANSLATE_H_

#include "tiger/absyn/absyn.h"
#include "tiger/frame/frame.h"
#include <utility>
#include <vector>
/* Forward Declarations */
namespace A {
class Exp;
}  // namespace A

namespace TR {

class Exp;
class ExpAndTy;
class Level;

class Access;
class Level;

static Access* AllocLocal( Level* level, bool escape, std::string sym );

typedef std::pair< std::string, F::Access* > valaPair;
static std::vector< valaPair >               pairs;
static void                                  addMemoryTempMappingPair( std::string sym, F::Access* acc ) {
    pairs.push_back( valaPair( sym, acc ) );
}

static bool checkExistedPair( std::string sym, F::Access* acc ) {
    for ( size_t i = 0; i < pairs.size(); i++ ) {
        if ( pairs[ i ].first == sym && pairs[ i ].second == acc ) {
            return true;
        }
    }
    return false;
}

static F::Access* AllocLocalWrapped( F::Frame* f, std::string sym ) {
    std::cout << "Entered AllocLocalWrapped." << std::endl;
    F::Access* newAcc;

    f->varCount += 1;
    newAcc      = f->InFrame( -f->varCount * F::wordSize );
    newAcc->sym = sym;

    std::cout << "create newAcc fine" << std::endl;
    addMemoryTempMappingPair( sym, newAcc );
    f->vars = new F::AccessList( newAcc, f->vars );
    return newAcc;
}

Level* Outermost();

F::FragList* TranslateProgram( A::Exp* );

}  // namespace TR

#endif
