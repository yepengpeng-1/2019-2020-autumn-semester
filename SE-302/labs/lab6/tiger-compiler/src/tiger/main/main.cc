#include <cstdio>
#include <fstream>
#include <string>

#include "tiger/absyn/absyn.h"
#include "tiger/canon/canon.h"
#include "tiger/codegen/assem.h"
#include "tiger/codegen/codegen.h"
#include "tiger/errormsg/errormsg.h"
#include "tiger/escape/escape.h"
#include "tiger/frame/frame.h"
#include "tiger/parse/parser.h"
#include "tiger/regalloc/regalloc.h"
#include "tiger/translate/tree.h"

extern EM::ErrorMsg errormsg;

A::Exp*       absyn_root;
std::ifstream infile;

namespace {

TEMP::Map* temp_map;

void do_proc( FILE* out, F::ProcFrag* procFrag ) {
    temp_map = TEMP::Map::Empty();
    // Init temp_map
    // remove %rbp later.

    static std::string regNames[] = { "%rbp", "%rsp", "%rax", "%r12", "%r13", "%r14", "%r15", "%r8", "%r9", "%rbx", "%rcx", "%rdi", "%rsi" };

    temp_map->Enter( procFrag->frame->framePointer(), &regNames[ 0 ] );
    temp_map->Enter( procFrag->frame->stackPointer(), &regNames[ 1 ] );
    temp_map->Enter( procFrag->frame->returnValue(), &regNames[ 2 ] );
    temp_map->Enter( procFrag->frame->R12(), &regNames[ 3 ] );
    temp_map->Enter( procFrag->frame->R13(), &regNames[ 4 ] );
    temp_map->Enter( procFrag->frame->R14(), &regNames[ 5 ] );
    temp_map->Enter( procFrag->frame->R15(), &regNames[ 6 ] );
    temp_map->Enter( procFrag->frame->R8(), &regNames[ 7 ] );
    temp_map->Enter( procFrag->frame->R9(), &regNames[ 8 ] );
    temp_map->Enter( procFrag->frame->RBX(), &regNames[ 9 ] );
    temp_map->Enter( procFrag->frame->RCX(), &regNames[ 10 ] );
    temp_map->Enter( procFrag->frame->RDI(), &regNames[ 11 ] );
    temp_map->Enter( procFrag->frame->RDX(), &regNames[ 12 ] );
    temp_map->Enter( procFrag->frame->RSI(), &regNames[ 13 ] );
    //  printf("doProc for function %s:\n", this->frame->label->Name().c_str());
    //  (new T::StmList(proc->body, nullptr))->Print(stdout);
    //  printf("-------====IR tree=====-----\n");

    T::StmList* stmList = C::Linearize( procFrag->body );
    //  stmList->Print(stdout);
    //  printf("-------====Linearlized=====-----\n");  /* 8 */
    struct C::Block blo = C::BasicBlocks( stmList );
    //  C::StmListList* stmLists = blo.stmLists;
    //  for (; stmLists; stmLists = stmLists->tail) {
    //  	stmLists->head->Print(stdout);
    // 	printf("------====Basic block=====-------\n");
    //  }
    stmList = C::TraceSchedule( blo );
    //  stmList->Print(stdout);
    //  printf("-------====trace=====-----\n");

    FILE* fptr;
    fptr = fopen( "canoned.s", "a" );
    fprintf( fptr, "\n\n\n============================\n\n\n\n" );
    stmList->Print( fptr );
    std::cout << " ~~~~ Completed Printing ~~~~" << std::endl;
    fclose( fptr );

    // lab5&lab6: code generation
    AS::InstrList* iList = CG::Codegen( procFrag->frame, stmList, temp_map ); /* 9 */
    //  AS_printInstrList(stdout, iList, Temp::Map::LayerMap(temp_map,
    //  Temp_name()));
    std::cout << "Code gen complete!" << std::endl;

    auto forgeIlist = iList;
    while ( forgeIlist ) {
        auto head  = forgeIlist->head;
        forgeIlist = forgeIlist->tail;
    }

    // lab6: register allocation
    RA::Result allocation = RA::RegAlloc( procFrag->frame, iList ); /* 11 */
    std::cout << "regAlloc skipped" << std::endl;

    AS::Proc* proc = CG::F_procEntryExit3( procFrag->frame, allocation.il );
    std::cout << "F_procEntryExit3 done" << std::endl;

    std::string procName = procFrag->frame->name.Name();
    std::cout << "procName = " << procName << std::endl;

    fprintf( out, ".globl %s\n", procName.c_str() );
    fprintf( out, ".type %s, @function\n", procName.c_str() );
    // prologue
    fprintf( out, "%s", proc->prolog.c_str() );
    // body
    proc->body->Print( out, TEMP::Map::LayerMap( temp_map, allocation.coloring ) );

    FILE* fptr_c;
    fptr_c = fopen( "unallocated.s", "a" );
    fprintf( fptr_c, "\n\n\n============================\n\n\n\n" );
    proc->body->Print( fptr_c, TEMP::Map::Empty() );
    std::cout << " ~~~~ Completed Printing ~~~~" << std::endl;
    fclose( fptr_c );

    // epilog
    fprintf( out, "%s", proc->epilog.c_str() );
    fprintf( out, ".size %s, .-%s\n", procName.c_str(), procName.c_str() );
    std::cout << "All done" << std::endl;
}

void do_str( FILE* out, F::StringFrag* strFrag ) {

    /*
    .globl	s
    .type	s, @object
    .size	s, 7
s:
    .string	"abcdef"
    */
    int length = strFrag->str.size();

    // fprintf( out, ".globl %s\n", strFrag->label->Name().c_str() );
    // fprintf( out, ".type %s, @object\n", strFrag->label->Name().c_str() );
    // fprintf( out, ".size %s, %d\n", strFrag->label->Name().c_str(), length );
    fprintf( out, "%s:\n", strFrag->label->Name().c_str() );
    fprintf( out, ".long %d\n", length );

    // it may contains zeros in the middle of string. To keep this work, we need
    // to print all the charactors instead of using fprintf(str)

    fprintf( out, ".string \"" );
    for ( int i = 0; i < length; i++ ) {
        if ( strFrag->str[ i ] == '\n' ) {
            fprintf( out, "\\n" );
        }
        else if ( strFrag->str[ i ] == '\t' ) {
            fprintf( out, "\\t" );
        }
        else if ( strFrag->str[ i ] == '\"' ) {
            fprintf( out, "\\\"" );
        }
        else {
            fprintf( out, "%c", strFrag->str[ i ] );
        }
    }
    fprintf( out, "\"\n" );
}

}  // namespace

int main( int argc, char** argv ) {
    F::FragList* frags = nullptr;
    char         outfile[ 100 ];
    FILE*        out = stdout;
    if ( argc < 2 ) {
        fprintf( stderr, "usage: tiger-compiler file.tig\n" );
        exit( 1 );
    }

    errormsg.Reset( argv[ 1 ], infile );
    Parser parser( infile, std::cerr );
    parser.parse();

    if ( !absyn_root )
        return 1;

    // Lab 6: escape analysis
    // If you have implemented escape analysis, uncomment this
    // implement this for merge.tig and tfact.tig, which use recursive implementation
    ESC::FindEscape( absyn_root ); /* set varDec's escape field */

    // Lab5: translate IR tree
    frags = TR::TranslateProgram( absyn_root );
    if ( errormsg.anyErrors )
        return 1; /* don't continue */

    /* convert the filename */
    sprintf( outfile, "%s.s", argv[ 1 ] );
    out = fopen( outfile, "w" );

    fprintf( out, ".text\n" );
    for ( F::FragList* fragList = frags; fragList; fragList = fragList->tail ) {
        if ( fragList->head->kind == F::Frag::Kind::PROC ) {
            do_proc( out, static_cast< F::ProcFrag* >( fragList->head ) );
        }
    }
    fprintf( out, ".section .rodata\n" );
    for ( F::FragList* fragList = frags; fragList; fragList = fragList->tail ) {
        if ( fragList->head->kind == F::Frag::Kind::STRING ) {
            do_str( out, static_cast< F::StringFrag* >( fragList->head ) );
        }
    }
    fclose( out );
    return 0;
}