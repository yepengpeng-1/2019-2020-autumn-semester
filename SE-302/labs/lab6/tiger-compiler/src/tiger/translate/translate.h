#ifndef TIGER_TRANSLATE_TRANSLATE_H_
#define TIGER_TRANSLATE_TRANSLATE_H_

#include "tiger/absyn/absyn.h"
#include "tiger/frame/frame.h"

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

static F::Access* AllocLocalWrapped( F::Frame* f, std::string sym ) {
    std::cout << "Entered AllocLocalWrapped." << std::endl;
    F::Access* newAcc;

    f->varCount += 1;
    newAcc      = f->InFrame( -f->varCount * F::wordSize );
    newAcc->sym = sym;

    std::cout << "create newAcc fine" << std::endl;
    f->vars = new F::AccessList( newAcc, f->vars );
    return newAcc;
}

Level* Outermost();

F::FragList* TranslateProgram( A::Exp* );

}  // namespace TR

#endif
