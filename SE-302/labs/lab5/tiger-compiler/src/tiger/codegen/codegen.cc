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

static AS::InstrList* munchStm( T::Stm* stmNode ) {
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

        auto e1munch = munchExp( e1 );
        auto e2munch = munchExp( e2 );

        auto instr = new AS::OperInstr( "STORE M[`s0+" + std::to_string( i ) + "] <- `s1\n", nullptr, new TEMP::TempList( e1munch.first, new TEMP::TempList( e2munch.first, nullptr ) ), nullptr );

        return new AS::InstrList( instr, combine( e1munch.second, e2munch.second ) );
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

        auto e1munch = munchExp( e1 );
        auto e2munch = munchExp( e2 );
        auto instr   = new AS::OperInstr( "STORE M[`s0+" + std::to_string( i ) + "] <- `s1\n", nullptr, new TEMP::TempList( e1munch.first, new TEMP::TempList( e2munch.first, nullptr ) ), nullptr );
        return new AS::InstrList( instr, combine( e1munch.second, e2munch.second ) );
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
        auto e1munch = munchExp( e1 );
        auto e2munch = munchExp( e2 );
        auto instr   = new AS::OperInstr( "MOVE M[`s0] <- M[`s1]\n", nullptr, new TEMP::TempList( e1munch.first, new TEMP::TempList( e2munch.first, nullptr ) ), nullptr );
        return new AS::InstrList( instr, combine( e1munch.second, e2munch.second ) );
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
        auto e2munch = munchExp( e2 );
        auto instr   = new AS::OperInstr( "STORE M[r0+" + std::to_string( i ) + "] <- `s0\n", nullptr, new TEMP::TempList( e2munch.first, nullptr ), nullptr );
        return new AS::InstrList( instr, e2munch.second );
    }
    else if ( stmNode->kind == T::Stm::Kind::MOVE && reinterpret_cast< T::MoveStm* >( stmNode )->dst->kind == T::Exp::Kind::MEM
              //   && reinterpret_cast< T::MoveStm* >( stmNode )->src->kind == T::Exp::Kind::TEMP
    ) {
        std::cout << "[codegen] fallen into MOVE(MEM(e1), e2)" << std::endl;
        // MOVE(MEM(e1), e2);
        auto e1 = reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp;
        auto e2 = reinterpret_cast< T::MoveStm* >( stmNode )->src;
        // auto r     = TEMP::Temp::NewTemp();
        auto e1munch = munchExp( e1 );
        auto e2munch = munchExp( e2 );
        auto instr   = new AS::OperInstr( "STORE M[`s0] <- `s1\n", nullptr, new TEMP::TempList( e1munch.first, new TEMP::TempList( e2munch.first, nullptr ) ), nullptr );
        return new AS::InstrList( instr, combine( e1munch.second, e2munch.second ) );
    }
    else if ( stmNode->kind == T::Stm::Kind::MOVE && reinterpret_cast< T::MoveStm* >( stmNode )->dst->kind == T::Exp::Kind::TEMP
              //   && reinterpret_cast< T::MoveStm* >( stmNode )->src->kind == T::Exp::Kind::TEMP
    ) {
        std::cout << "[codegen] fallen into MOVE(TEMP(t), e2)" << std::endl;
        // MOVE(TEMP(t), e2);
        auto t  = reinterpret_cast< T::TempExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->temp;
        auto e2 = reinterpret_cast< T::MoveStm* >( stmNode )->src;
        // auto r     = TEMP::Temp::NewTemp();
        auto e2munch = munchExp( e2 );
        auto instr   = new AS::OperInstr( "ADD `d0 <- `s0 + r0\n", nullptr, new TEMP::TempList( e2munch.first, nullptr ), nullptr );
        return new AS::InstrList( instr, e2munch.second );
    }
    else if ( stmNode->kind == T::Stm::LABEL ) {
        std::cout << "[codegen] fallen into LABEL(lab)" << std::endl;
        // LABEL(lab)
        auto lab   = reinterpret_cast< T::LabelStm* >( stmNode )->label;
        auto instr = new AS::LabelInstr( TEMP::LabelString( lab ) + ":\n", lab );
        return new AS::InstrList( instr, nullptr );
    }
    else if ( stmNode->kind == T::Stm::CJUMP ) {
        std::cout << "[codegen] fallen into CJUMP **WIP**" << std::endl;
    }
    else if ( stmNode->kind == T::Stm::EXP ) {
        std::cout << "[codegen] fallen into EXP **WIP**" << std::endl;
    }
    else if ( stmNode->kind == T::Stm::JUMP ) {
        std::cout << "[codegen] fallen into JUMP **WIP**" << std::endl;
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
    // std::cout << "[codegen] gonna quit from munchStm" << std::endl;
}

static std::pair< TEMP::Temp*, AS::InstrList* > munchExp( T::Exp* expNode ) {

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
        auto e1munch = munchExp( e1 );
        auto instr   = new AS::OperInstr( "LOAD `d0 <- M[`s0+" + std::to_string( i ) + "]\n", new TEMP::TempList( r, nullptr ), new TEMP::TempList( e1munch.first, nullptr ), nullptr );
        return smart_pair( r, new AS::InstrList( instr, e1munch.second ) );
    }
    else if ( expNode->kind == T::Exp::MEM && reinterpret_cast< T::MemExp* >( expNode )->exp->kind == T::Exp::BINOP
              && reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( expNode )->exp )->op == T::PLUS_OP
              && reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( expNode )->exp )->left->kind == T::Exp::CONST ) {
        std::cout << "[codegen] fallen into MEM(BINOP(PLUS, CONST(i), e1))" << std::endl;
        // MEM(BINOP(PLUS, CONST(i), e1))
        auto e1      = reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( expNode )->exp )->right;
        auto i       = reinterpret_cast< T::ConstExp* >( reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( expNode )->exp )->left )->consti;
        auto r       = TEMP::Temp::NewTemp();
        auto e1munch = munchExp( e1 );
        auto instr   = new AS::OperInstr( "LOAD `d0 <- M[`s0+" + std::to_string( i ) + "]\n", new TEMP::TempList( r, nullptr ), new TEMP::TempList( e1munch.first, nullptr ), nullptr );
        return smart_pair( r, new AS::InstrList( instr, e1munch.second ) );
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
        auto e1munch = munchExp( e1 );
        auto instr   = new AS::OperInstr( "LOAD `d0 <- M[`s0+0]\n", new TEMP::TempList( r, nullptr ), new TEMP::TempList( e1munch.first, nullptr ), nullptr );
        return smart_pair( r, new AS::InstrList( instr, e1munch.second ) );
    }
    else if ( expNode->kind == T::Exp::BINOP && reinterpret_cast< T::BinopExp* >( expNode )->op == T::PLUS_OP && reinterpret_cast< T::BinopExp* >( expNode )->right->kind == T::Exp::CONST ) {
        std::cout << "[codegen] fallen into BINOP(PLUS, e1, CONST(i))" << std::endl;
        // BINOP(PLUS, e1, CONST(i))
        auto e1      = reinterpret_cast< T::BinopExp* >( expNode )->left;
        auto i       = reinterpret_cast< T::ConstExp* >( reinterpret_cast< T::BinopExp* >( expNode )->right )->consti;
        auto r       = TEMP::Temp::NewTemp();
        auto e1munch = munchExp( e1 );
        auto instr   = new AS::OperInstr( "ADDI `d0 <- `s0+" + std::to_string( i ) + "\n", new TEMP::TempList( r, nullptr ), new TEMP::TempList( e1munch.first, nullptr ), nullptr );
        return smart_pair( r, new AS::InstrList( instr, e1munch.second ) );
    }
    else if ( expNode->kind == T::Exp::BINOP && reinterpret_cast< T::BinopExp* >( expNode )->op == T::PLUS_OP && reinterpret_cast< T::BinopExp* >( expNode )->left->kind == T::Exp::CONST ) {
        std::cout << "[codegen] fallen into BINOP(PLUS(CONST(i), e1)" << std::endl;
        // BINOP(PLUS, CONST(i), e1)
        auto e1      = reinterpret_cast< T::BinopExp* >( expNode )->right;
        auto i       = reinterpret_cast< T::ConstExp* >( reinterpret_cast< T::BinopExp* >( expNode )->left )->consti;
        auto r       = TEMP::Temp::NewTemp();
        auto e1munch = munchExp( e1 );
        auto instr   = new AS::OperInstr( "ADDI `d0 <- `s0+" + std::to_string( i ) + "\n", new TEMP::TempList( r, nullptr ), new TEMP::TempList( e1munch.first, nullptr ), nullptr );
        return smart_pair( r, new AS::InstrList( instr, e1munch.second ) );
    }
    else if ( expNode->kind == T::Exp::CONST ) {
        std::cout << "[codegen] fallen into CONST(i) **WIP**" << std::endl;
        // // CONST(i)
        // auto i     = reinterpret_cast< T::ConstExp* >( expNode )->consti;
        // auto r     = TEMP::Temp::NewTemp();
        // auto instr = new AS::OperInstr( "ADDI `d0 <- r0+" + std::to_string( i ) + "\n", new TEMP::TempList( r, nullptr ), new TEMP::TempList( munchExp( e1 ).first, nullptr ), nullptr );
        // return std::pair( r, instr );
        // ? A single const cannot generate that standalone.
    }
    else if ( expNode->kind == T::Exp::BINOP && reinterpret_cast< T::BinopExp* >( expNode )->op == T::PLUS_OP ) {
        std::cout << "[codegen] fallen into BINOP(PLUS(e1, e2)" << std::endl;
        // BINOP(PLUS, e1, e2)
        auto e1      = reinterpret_cast< T::BinopExp* >( expNode )->left;
        auto e2      = reinterpret_cast< T::BinopExp* >( expNode )->right;
        auto r       = TEMP::Temp::NewTemp();
        auto e1munch = munchExp( e1 );
        auto e2munch = munchExp( e2 );
        auto instr   = new AS::OperInstr( "ADD `d0 <- `s0+`s1\n", new TEMP::TempList( r, nullptr ), new TEMP::TempList( e1munch.first, new TEMP::TempList( e2munch.first, nullptr ) ), nullptr );
        return smart_pair( r, new AS::InstrList( instr, combine( e1munch.second, e2munch.second ) ) );
    }
    else if ( expNode->kind == T::Exp::TEMP ) {
        std::cout << "[codegen] fallen into TEMP(t) **WIP**" << std::endl;
        // TEMP(t)
        auto t = reinterpret_cast< T::TempExp* >( expNode )->temp;
    }
    else if ( expNode->kind == T::Exp::CALL ) {
        std::cout << "[codegen] fallen into CALL **WIP**" << std::endl;
    }
    else if ( expNode->kind == T::Exp::ESEQ ) {
        std::cout << "[codegen] fallen into ESEQ **WIP**" << std::endl;
    }
    else if ( expNode->kind == T::Exp::MEM ) {
        std::cout << "[codegen] fallen into MEM **WIP**" << std::endl;
    }
    else if ( expNode->kind == T::Exp::NAME ) {
        std::cout << "[codegen] fallen into NAME **WIP**" << std::endl;
    }
    else {
        std::cout << "unknown T::Exp::Kind " << expNode->kind << std::endl;
        assert( 0 );
    }
    // std::cout << "[codegen] gonna quit from munchExp" << std::endl;
}

AS::InstrList* Codegen( F::Frame* f, T::StmList* stmList ) {
    if ( stmList == nullptr ) {
        return nullptr;
    }
    std::cout << "[as] [codegen] stmList called" << std::endl;
    AS::InstrList* node    = nullptr;
    auto           stmNode = stmList->head;
    node                   = munchStm( stmNode );
    assert( node );
    return combine( node, Codegen( f, stmList->tail ) );
}  // namespace CG

AS::InstrList* Codegen( F::Frame* f, T::ExpList* expList ) {
    if ( expList == nullptr ) {
        return nullptr;
    }
    std::cout << "[as] [codegen] expList called" << std::endl;
    AS::InstrList* node    = nullptr;
    auto           expNode = expList->head;
    node                   = munchExp( expNode ).second;
    assert( node );
    return combine( node, Codegen( f, expList->tail ) );
}

}  // namespace CG