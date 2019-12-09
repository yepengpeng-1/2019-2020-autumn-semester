#include "tiger/codegen/codegen.h"

namespace CG {

static AS::InstrList* combine( AS::InstrList* as1, AS::InstrList* as2 ) {
    if ( !as1 ) {
        return as2;
    }

    auto head = as1;
    while ( as1->tail ) {
        as1 = as1->tail;
    }

    as1->tail = as2;
    return head;
}

static AS::InstrList* munchArgs( F::Frame* f, int index, T::ExpList* args ) {
    if ( !args ) {
        return nullptr;
    }

    auto next  = CG::munchArgs( f, index + 1, args->tail );
    auto r     = munchExp( f, args->head );
    auto instr = AS::OperInstr( "pushl `s0", nullptr, new TEMP::TempList( r.first, nullptr ), nullptr );

    return combine( r.second, next );
}

static AS::InstrList* munchStm( F::Frame* f, T::Stm* stmNode ) {
    std::cout << "[codegen] entered munchStm. stmNode: " << stmNode << std::endl;
    if ( stmNode->kind == T::Stm::Kind::MOVE && reinterpret_cast< T::MoveStm* >( stmNode )->dst->kind == T::Exp::Kind::MEM
         && reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp->kind == T::Exp::Kind::BINOP
         && reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp )->op == T::BinOp::PLUS_OP
         //  && reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp )->left->kind == T::Exp::Kind::TEMP
         && reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp )->right->kind == T::Exp::Kind::CONST
         //  && reinterpret_cast< T::MoveStm* >( stmNode )->src->kind == T::Exp::Kind::TEMP
    ) {
        std::cout << "[codegen] fallen into MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)" << std::endl;
        // MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2);
        auto e1 = reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp )->left;
        auto e2 = reinterpret_cast< T::MoveStm* >( stmNode )->src;
        auto i  = reinterpret_cast< T::ConstExp* >( reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp )->right )->consti;
        // auto r  = TEMP::Temp::NewTemp();

        auto e1munch = munchExp( f, e1 );
        auto e2munch = munchExp( f, e2 );

        auto instr = new AS::OperInstr( "STORE M[`s0+" + std::to_string( i ) + "] <- `s1\n", nullptr, new TEMP::TempList( e1munch.first, new TEMP::TempList( e2munch.first, nullptr ) ), nullptr );

        return combine( combine( e1munch.second, e2munch.second ), new AS::InstrList( instr, nullptr ) );
    }
    else if ( stmNode->kind == T::Stm::Kind::MOVE && reinterpret_cast< T::MoveStm* >( stmNode )->dst->kind == T::Exp::Kind::MEM
              && reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp->kind == T::Exp::Kind::BINOP
              && reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp )->op == T::BinOp::PLUS_OP
              //   && reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp )->right->kind == T::Exp::Kind::TEMP
              && reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp )->left->kind == T::Exp::Kind::CONST
              //   && reinterpret_cast< T::MoveStm* >( stmNode )->src->kind == T::Exp::Kind::TEMP
    ) {
        std::cout << "[codegen] fallen into MOVE(MEM(BINOP(PLUS, CONST(i), e1)), e2)" << std::endl;
        // MOVE(MEM(BINOP(PLUS, CONST(i), e1)), e2);
        auto e1 = reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp )->right;
        auto e2 = reinterpret_cast< T::MoveStm* >( stmNode )->src;
        auto i  = reinterpret_cast< T::ConstExp* >( reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp )->left )->consti;
        // auto r  = TEMP::Temp::NewTemp();

        auto e1munch = munchExp( f, e1 );
        auto e2munch = munchExp( f, e2 );
        auto instr   = new AS::OperInstr( "STORE M[`s0+" + std::to_string( i ) + "] <- `s1\n", nullptr, new TEMP::TempList( e1munch.first, new TEMP::TempList( e2munch.first, nullptr ) ), nullptr );
        return combine( combine( e1munch.second, e2munch.second ), new AS::InstrList( instr, nullptr ) );
    }
    else if ( stmNode->kind == T::Stm::Kind::MOVE
              && reinterpret_cast< T::MoveStm* >( stmNode )->src->kind == T::Exp::Kind::MEM
              //   && reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->src )->exp->kind == T::Exp::Kind::TEMP
              && reinterpret_cast< T::MoveStm* >( stmNode )->dst->kind == T::Exp::Kind::MEM
              //   && reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp->kind == T::Exp::Kind::TEMP
    ) {
        std::cout << "[codegen] fallen into MOVE(MEM(e1), MEM(e2)" << std::endl;
        // MOVE(MEM(e1), MEM(e2));
        auto e1 = reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp;
        auto e2 = reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->src )->exp;
        // auto r     = TEMP::Temp::NewTemp();
        auto e1munch = munchExp( f, e1 );
        auto e2munch = munchExp( f, e2 );
        auto instr   = new AS::OperInstr( "MOVE M[`s0] <- M[`s1]\n", nullptr, new TEMP::TempList( e1munch.first, new TEMP::TempList( e2munch.first, nullptr ) ), nullptr );
        return combine( combine( e1munch.second, e2munch.second ), new AS::InstrList( instr, nullptr ) );
    }
    else if ( stmNode->kind == T::Stm::Kind::MOVE && reinterpret_cast< T::MoveStm* >( stmNode )->dst->kind == T::Exp::Kind::MEM
              && reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp->kind == T::Exp::Kind::CONST
              //   && reinterpret_cast< T::MoveStm* >( stmNode )->src->kind == T::Exp::Kind::TEMP
    ) {
        std::cout << "[codegen] fallen into MOVE(MEM(CONST(i)), e2)" << std::endl;
        // MOVE(MEM(CONST(i)), e2);
        auto i  = reinterpret_cast< T::ConstExp* >( reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp )->consti;
        auto e2 = reinterpret_cast< T::MoveStm* >( stmNode )->src;
        // auto r     = TEMP::Temp::NewTemp();
        auto e2munch = munchExp( f, e2 );
        auto instr   = new AS::OperInstr( "STORE M[r0+" + std::to_string( i ) + "] <- `s0\n", nullptr, new TEMP::TempList( e2munch.first, nullptr ), nullptr );
        return combine( e2munch.second, new AS::InstrList( instr, nullptr ) );
    }
    else if ( stmNode->kind == T::Stm::Kind::MOVE && reinterpret_cast< T::MoveStm* >( stmNode )->dst->kind == T::Exp::Kind::MEM
              //   && reinterpret_cast< T::MoveStm* >( stmNode )->src->kind == T::Exp::Kind::TEMP
    ) {
        std::cout << "[codegen] fallen into MOVE(MEM(e1), e2)" << std::endl;
        // MOVE(MEM(e1), e2);
        auto e1 = reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp;
        auto e2 = reinterpret_cast< T::MoveStm* >( stmNode )->src;
        // auto r     = TEMP::Temp::NewTemp();
        auto e1munch = munchExp( f, e1 );
        auto e2munch = munchExp( f, e2 );
        auto instr   = new AS::OperInstr( "STORE M[`s0] <- `s1\n", nullptr, new TEMP::TempList( e1munch.first, new TEMP::TempList( e2munch.first, nullptr ) ), nullptr );
        return combine( combine( e1munch.second, e2munch.second ), new AS::InstrList( instr, nullptr ) );
    }
    else if ( stmNode->kind == T::Stm::Kind::MOVE && reinterpret_cast< T::MoveStm* >( stmNode )->dst->kind == T::Exp::Kind::TEMP
              //   && reinterpret_cast< T::MoveStm* >( stmNode )->src->kind == T::Exp::Kind::TEMP
    ) {
        std::cout << "[codegen] fallen into MOVE(TEMP(t), e2)" << std::endl;
        // MOVE(TEMP(t), e2);
        auto t  = reinterpret_cast< T::TempExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->temp;
        auto e2 = reinterpret_cast< T::MoveStm* >( stmNode )->src;
        // auto r     = TEMP::Temp::NewTemp();
        auto e2munch = munchExp( f, e2 );
        auto instr   = new AS::OperInstr( "ADD `d0 <- `s0 + r0\n", nullptr, new TEMP::TempList( e2munch.first, nullptr ), nullptr );
        return combine( e2munch.second, new AS::InstrList( instr, nullptr ) );
    }
    else if ( stmNode->kind == T::Stm::LABEL ) {
        std::cout << "[codegen] fallen into LABEL" << std::endl;
        auto lab = reinterpret_cast< T::LabelStm* >( stmNode )->label;
        std::cout << "I'm trying to find the label " << lab->Name() << std::endl;
        auto instr = new AS::LabelInstr( TEMP::LabelString( lab ) + ":\n", lab );
        return new AS::InstrList( instr, nullptr );
    }
    else if ( stmNode->kind == T::Stm::CJUMP ) {
        std::cout << "[codegen] fallen into CJUMP" << std::endl;
        std::string assem;
        auto        e     = reinterpret_cast< T::CjumpStm* >( stmNode );
        auto        left  = e->left;
        auto        right = e->right;
        switch ( e->op ) {
        case T::EQ_OP:
            assem = "je";
            break;
        case T::NE_OP:
            assem = "jne";
            break;
        case T::LT_OP:
            assem = "jl";
            break;
        case T::GT_OP:
            assem = "jg";
            break;
        case T::LE_OP:
            assem = "jle";
            break;
        case T::GE_OP:
            assem = "jge";
            break;
        default:
            std::cout << "No idea what logical op it is: " << e->op << std::endl;
            assert( 0 );
            break;
        }
        auto leftMunch = munchExp( f, left ), rightMunch = munchExp( f, right );

        auto compareInstr = new AS::OperInstr( "cmpl `s1, `s0", nullptr, new TEMP::TempList( leftMunch.first, new TEMP::TempList( rightMunch.first, nullptr ) ), nullptr );
        auto cjumpInstr   = new AS::OperInstr( assem, nullptr, nullptr, new AS::Targets( new TEMP::LabelList( e->true_label, new TEMP::LabelList( e->false_label, nullptr ) ) ) );

        auto instrList = new AS::InstrList( compareInstr, new AS::InstrList( cjumpInstr, nullptr ) );
        return combine( leftMunch.second, combine( rightMunch.second, instrList ) );
    }
    else if ( stmNode->kind == T::Stm::EXP ) {
        std::cout << "[codegen] fallen into EXP" << std::endl;
        auto e = reinterpret_cast< T::ExpStm* >( stmNode )->exp;

        if ( e->kind == T::Exp::CALL ) {
            // void function call, fallen as ExpStm
            return munchExp( f, e ).second;
        }
        else {
            return nullptr;
        }
    }
    else if ( stmNode->kind == T::Stm::JUMP ) {
        std::cout << "[codegen] fallen into JUMP" << std::endl;

        auto je   = reinterpret_cast< T::JumpStm* >( stmNode );
        auto jexp = je->jumps;
        std::cout << "gotta jexp = " << jexp << std::endl;
        auto jmpTo = jexp->head;
        std::cout << "gotta jmpTo = " << jmpTo << std::endl;
        auto instr = new AS::OperInstr( "jmp " + TEMP::LabelString( jmpTo ), nullptr, nullptr, new AS::Targets( je->jumps ) );
        std::cout << "escaped from instr = " << instr << std::endl;
        return new AS::InstrList( instr, nullptr );
    }
    else if ( stmNode->kind == T::Stm::MOVE ) {
        std::cout << "[codegen] fallen into MOVE **WIP**" << std::endl;
    }
    else if ( stmNode->kind == T::Stm::SEQ ) {
        std::cout << "[codegen] fallen into SEQ **WIP**" << std::endl;
    }
    else {
        std::cout << "完蛋. unknown T::Stm::Kind " << stmNode->kind << std::endl;
        assert( 0 );
    }
    std::cout << "[codegen] gonna quit from munchStm" << std::endl;
    assert( 0 );
}  // namespace CG

static std::pair< TEMP::Temp*, AS::InstrList* > munchExp( F::Frame* f, T::Exp* expNode ) {

    std::cout << "[codegen] entered munchExp. expNode: " << expNode << std::endl;
    if ( expNode->kind == T::Exp::MEM && reinterpret_cast< T::MemExp* >( expNode )->exp->kind == T::Exp::BINOP
         && reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( expNode )->exp )->op == T::PLUS_OP
         && reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( expNode )->exp )->right->kind == T::Exp::CONST )

    {
        std::cout << "[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))" << std::endl;
        // MEM(BINOP(PLUS, e1, CONST(i)))
        auto e1      = reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( expNode )->exp )->left;
        auto i       = reinterpret_cast< T::ConstExp* >( reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( expNode )->exp )->right )->consti;
        auto r       = TEMP::Temp::NewTemp();
        auto e1munch = munchExp( f, e1 );
        auto instr   = new AS::OperInstr( "LOAD `d0 <- M[`s0+" + std::to_string( i ) + "]\n", new TEMP::TempList( r, nullptr ), new TEMP::TempList( e1munch.first, nullptr ), nullptr );
        return smart_pair( r, combine( e1munch.second, new AS::InstrList( instr, nullptr ) ) );
    }
    else if ( expNode->kind == T::Exp::MEM && reinterpret_cast< T::MemExp* >( expNode )->exp->kind == T::Exp::BINOP
              && reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( expNode )->exp )->op == T::PLUS_OP
              && reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( expNode )->exp )->left->kind == T::Exp::CONST ) {
        std::cout << "[codegen] fallen into MEM(BINOP(PLUS, CONST(i), e1))" << std::endl;
        // MEM(BINOP(PLUS, CONST(i), e1))
        auto e1      = reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( expNode )->exp )->right;
        auto i       = reinterpret_cast< T::ConstExp* >( reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( expNode )->exp )->left )->consti;
        auto r       = TEMP::Temp::NewTemp();
        auto e1munch = munchExp( f, e1 );
        auto instr   = new AS::OperInstr( "LOAD `d0 <- M[`s0+" + std::to_string( i ) + "]\n", new TEMP::TempList( r, nullptr ), new TEMP::TempList( e1munch.first, nullptr ), nullptr );
        return smart_pair( r, combine( e1munch.second, new AS::InstrList( instr, nullptr ) ) );
    }
    else if ( expNode->kind == T::Exp::MEM && reinterpret_cast< T::ExpStm* >( expNode )->exp->kind == T::Exp::CONST ) {
        std::cout << "[codegen] fallen into MEM(CONST(i))" << std::endl;
        // MEM(CONST(i))
        auto i     = reinterpret_cast< T::ConstExp* >( reinterpret_cast< T::ExpStm* >( expNode )->exp )->consti;
        auto r     = TEMP::Temp::NewTemp();
        auto instr = new AS::OperInstr( "LOAD `d0 <- M[r0+" + std::to_string( i ) + "]\n", new TEMP::TempList( r, nullptr ), nullptr, nullptr );
        return smart_pair( r, new AS::InstrList( instr, nullptr ) );
    }
    else if ( expNode->kind == T::Exp::MEM ) {
        std::cout << "[codegen] fallen into MEM(e1)" << std::endl;
        // MEM(e1)
        auto e1      = reinterpret_cast< T::ExpStm* >( expNode )->exp;
        auto r       = TEMP::Temp::NewTemp();
        auto e1munch = munchExp( f, e1 );
        auto instr   = new AS::OperInstr( "LOAD `d0 <- M[`s0+0]\n", new TEMP::TempList( r, nullptr ), new TEMP::TempList( e1munch.first, nullptr ), nullptr );
        return smart_pair( r, combine( e1munch.second, new AS::InstrList( instr, nullptr ) ) );
    }
    else if ( expNode->kind == T::Exp::BINOP && reinterpret_cast< T::BinopExp* >( expNode )->op == T::PLUS_OP && reinterpret_cast< T::BinopExp* >( expNode )->right->kind == T::Exp::CONST ) {
        std::cout << "[codegen] fallen into BINOP(PLUS, e1, CONST(i))" << std::endl;
        // BINOP(PLUS, e1, CONST(i))
        auto e1      = reinterpret_cast< T::BinopExp* >( expNode )->left;
        auto i       = reinterpret_cast< T::ConstExp* >( reinterpret_cast< T::BinopExp* >( expNode )->right )->consti;
        auto r       = TEMP::Temp::NewTemp();
        auto e1munch = munchExp( f, e1 );
        auto instr   = new AS::OperInstr( "ADDI `d0 <- `s0+" + std::to_string( i ) + "\n", new TEMP::TempList( r, nullptr ), new TEMP::TempList( e1munch.first, nullptr ), nullptr );
        return smart_pair( r, combine( e1munch.second, new AS::InstrList( instr, nullptr ) ) );
    }
    else if ( expNode->kind == T::Exp::BINOP && reinterpret_cast< T::BinopExp* >( expNode )->op == T::PLUS_OP && reinterpret_cast< T::BinopExp* >( expNode )->left->kind == T::Exp::CONST ) {
        std::cout << "[codegen] fallen into BINOP(PLUS(CONST(i), e1)" << std::endl;
        // BINOP(PLUS, CONST(i), e1)
        auto e1      = reinterpret_cast< T::BinopExp* >( expNode )->right;
        auto i       = reinterpret_cast< T::ConstExp* >( reinterpret_cast< T::BinopExp* >( expNode )->left )->consti;
        auto r       = TEMP::Temp::NewTemp();
        auto e1munch = munchExp( f, e1 );
        auto instr   = new AS::OperInstr( "ADDI `d0 <- `s0+" + std::to_string( i ) + "\n", new TEMP::TempList( r, nullptr ), new TEMP::TempList( e1munch.first, nullptr ), nullptr );
        return smart_pair( r, combine( e1munch.second, new AS::InstrList( instr, nullptr ) ) );
    }
    else if ( expNode->kind == T::Exp::CONST ) {
        std::cout << "[codegen] fallen into CONST(i)" << std::endl;
        // // CONST(i)
        auto i = reinterpret_cast< T::ConstExp* >( expNode )->consti;
        // auto r     = TEMP::Temp::NewTemp();
        // auto instr = new AS::OperInstr( "ADDI `d0 <- r0+" + std::to_string( i ) + "\n", new TEMP::TempList( r, nullptr ), new TEMP::TempList( munchExp( e1 ).first, nullptr ), nullptr );
        // return std::pair( r, instr );
        // ? A single const cannot generate that standalone.

        // CONST(i)
        auto r     = TEMP::Temp::NewTemp();
        auto instr = new AS::OperInstr( "movl $" + std::to_string( i ) + ", `d0", new TEMP::TempList( r, nullptr ), nullptr, nullptr );
        return smart_pair( r, nullptr );
    }
    else if ( expNode->kind == T::Exp::BINOP && reinterpret_cast< T::BinopExp* >( expNode )->op == T::PLUS_OP ) {
        std::cout << "[codegen] fallen into BINOP(PLUS(e1, e2)" << std::endl;
        // BINOP(PLUS, e1, e2)
        auto e1      = reinterpret_cast< T::BinopExp* >( expNode )->left;
        auto e2      = reinterpret_cast< T::BinopExp* >( expNode )->right;
        auto r       = TEMP::Temp::NewTemp();
        auto e1munch = munchExp( f, e1 );
        auto e2munch = munchExp( f, e2 );
        auto instr   = new AS::OperInstr( "ADD `d0 <- `s0+`s1\n", new TEMP::TempList( r, nullptr ), new TEMP::TempList( e1munch.first, new TEMP::TempList( e2munch.first, nullptr ) ), nullptr );
        return smart_pair( r, combine( combine( e1munch.second, e2munch.second ), new AS::InstrList( instr, nullptr ) ) );
    }
    else if ( expNode->kind == T::Exp::BINOP ) {
        auto e  = reinterpret_cast< T::BinopExp* >( expNode );
        auto e1 = e->left, e2 = e->right;

        std::string assem;
        switch ( e->op ) {
        case T::PLUS_OP:
            assem = "addq";
            break;
        case T::MINUS_OP:
            assem = "subq";
            break;
        case T::MUL_OP:
            assem = "mulq";
            break;
        case T::DIV_OP:
            assem = "divq";
            break;
        default:
            std::cout << "No idea what op code it is. " << e->op << std::endl;
            assert( 0 );
            break;
        }
        auto var1 = munchExp( f, e1 );
        auto var2 = munchExp( f, e2 );
        auto r    = TEMP::Temp::NewTemp();
        assem += "`s1, `d0";

        auto instr = new AS::OperInstr( assem, new TEMP::TempList( r, nullptr ), new TEMP::TempList( r, new TEMP::TempList( var2.first, nullptr ) ), nullptr );
        return smart_pair( r, combine( var1.second, combine( var2.second, new AS::InstrList( instr, nullptr ) ) ) );
    }
    else if ( expNode->kind == T::Exp::TEMP ) {
        std::cout << "[codegen] fallen into TEMP(t)" << std::endl;
        // TEMP(t)
        auto t = reinterpret_cast< T::TempExp* >( expNode )->temp;
        return smart_pair( t, nullptr );
    }
    else if ( expNode->kind == T::Exp::CALL && reinterpret_cast< T::CallExp* >( expNode )->fun->kind == T::Exp::NAME ) {
        std::cout << "[codegen] fallen into CALL" << std::endl;
        auto args  = reinterpret_cast< T::CallExp* >( expNode )->args;
        auto l     = munchArgs( f, 0, args );
        auto instr = new AS::OperInstr( "CALL `s0\n", nullptr, nullptr, nullptr );
        return smart_pair( f->returnValue(), combine( l, new AS::InstrList( instr, nullptr ) ) );
        // if ( e->u.CALL.fun->kind == T_NAME ) {
        //     Temp_tempList l = munchArgs( 0, e->u.CALL.args );
        //     assert( l == NULL );  // in x86, don't use register to transfer args
        //     sprintf( as_buf, "call %s", Temp_labelstring( e->u.CALL.fun->u.NAME ) );
        //     string as = String( as_buf );
        //     emit( AS_Oper( as, L( F_SP(), F_callersaves() ), L( F_SP(), l ), NULL ) );  // callersaves includes F_RV()
        //     int       argCnt = 0;
        //     T_expList tmp;
        //     for ( tmp = e->u.CALL.args; tmp != NULL; tmp = tmp->tail ) {
        //         ++argCnt;
        //     }
        //     if ( argCnt != 0 ) {
        //         sprintf( as_buf, "addl $%d, `d0", argCnt * F_wordSize );
        //         as = String( as_buf );
        //         emit( AS_Oper( as, L( F_SP(), NULL ), L( F_SP(), NULL ), NULL ) );
        //     }
        //     return F_RV();
    }
    else if ( expNode->kind == T::Exp::ESEQ ) {
        std::cout << "[codegen] fallen into ESEQ **WIP**" << std::endl;
    }
    else if ( expNode->kind == T::Exp::MEM ) {
        std::cout << "[codegen] fallen into MEM **WIP**" << std::endl;
    }
    else if ( expNode->kind == T::Exp::NAME ) {
        std::cout << "[codegen] fallen into NAME" << std::endl;
        auto e     = reinterpret_cast< T::NameExp* >( expNode );
        auto r     = TEMP::Temp::NewTemp();
        auto instr = new AS::OperInstr( "movl $." + TEMP::LabelString( e->name ) + ", `d0", new TEMP::TempList( r, nullptr ), nullptr, nullptr );
        return smart_pair( r, new AS::InstrList( instr, nullptr ) );
    }
    else {
        std::cout << "unknown T::Exp::Kind " << expNode->kind << std::endl;
        assert( 0 );
    }
    std::cout << "[codegen] gonna quit from munchExp" << std::endl;
    assert( 0 );
}  // namespace CG

AS::InstrList* Codegen( F::Frame* f, T::StmList* stmList ) {
    if ( stmList == nullptr ) {
        return nullptr;
    }
    std::cout << "[as] [codegen] stmList called" << std::endl;
    AS::InstrList* node    = nullptr;
    auto           stmNode = stmList->head;
    node                   = munchStm( f, stmNode );

    // assert( node );
    if ( node ) {
        return combine( node, Codegen( f, stmList->tail ) );
    }
    else {
        return Codegen( f, stmList->tail );
    }
}  // namespace CG

AS::InstrList* Codegen( F::Frame* f, T::ExpList* expList ) {
    if ( expList == nullptr ) {
        return nullptr;
    }
    std::cout << "[as] [codegen] expList called" << std::endl;
    AS::InstrList* node    = nullptr;
    auto           expNode = expList->head;
    node                   = munchExp( f, expNode ).second;
    // assert( node );
    if ( node ) {
        return combine( node, Codegen( f, expList->tail ) );
    }
    else {
        return Codegen( f, expList->tail );
    }
}

}  // namespace CG