#include "tiger/codegen/codegen.h"

namespace CG {

AS::InstrList* Codegen( F::Frame* f, T::StmList* stmList ) {
    if ( stmList == nullptr ) {
        return nullptr;
    }
    std::cout << "[as] [codegen] stmList called" << std::endl;
    AS::Instr* node    = nullptr;
    auto       stmNode = stmList->head;
    if ( stmNode->kind == T::Stm::Kind::MOVE && reinterpret_cast< T::MoveStm* >( stmNode )->dst->kind == T::Exp::Kind::MEM
         && reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp->kind == T::Exp::Kind::BINOP
         && reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp )->op == T::BinOp::PLUS_OP
         //  && reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp )->left->kind == T::Exp::Kind::TEMP
         && reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp )->right->kind == T::Exp::Kind::CONST
         //  && reinterpret_cast< T::MoveStm* >( stmNode )->src->kind == T::Exp::Kind::TEMP
    ) {
        // MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2);
        auto e1 = reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp )->left;
        auto e2 = reinterpret_cast< T::MoveStm* >( stmNode )->src;
        auto i  = reinterpret_cast< T::ConstExp* >( reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp )->right )->consti;
    }
    else if ( stmNode->kind == T::Stm::Kind::MOVE && reinterpret_cast< T::MoveStm* >( stmNode )->dst->kind == T::Exp::Kind::MEM
              && reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp->kind == T::Exp::Kind::BINOP
              && reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp )->op == T::BinOp::PLUS_OP
              //   && reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp )->right->kind == T::Exp::Kind::TEMP
              && reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp )->left->kind == T::Exp::Kind::CONST
              //   && reinterpret_cast< T::MoveStm* >( stmNode )->src->kind == T::Exp::Kind::TEMP
    ) {
        // MOVE(MEM(BINOP(PLUS, CONST(i), e1)), e2);
        auto e1 = reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp )->right;
        auto e2 = reinterpret_cast< T::MoveStm* >( stmNode )->src;
        auto i  = reinterpret_cast< T::ConstExp* >( reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp )->left )->consti;
    }
    else if ( stmNode->kind == T::Stm::Kind::MOVE
              && reinterpret_cast< T::MoveStm* >( stmNode )->src->kind == T::Exp::Kind::MEM
              //   && reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->src )->exp->kind == T::Exp::Kind::TEMP
              && reinterpret_cast< T::MoveStm* >( stmNode )->dst->kind == T::Exp::Kind::MEM
              //   && reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp->kind == T::Exp::Kind::TEMP
    ) {
        // MOVE(MEM(e1), MEM(e2));
        auto e1 = reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp;
        auto e2 = reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->src )->exp;
    }
    else if ( stmNode->kind == T::Stm::Kind::MOVE && reinterpret_cast< T::MoveStm* >( stmNode )->dst->kind == T::Exp::Kind::MEM
              && reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp->kind == T::Exp::Kind::CONST
              //   && reinterpret_cast< T::MoveStm* >( stmNode )->src->kind == T::Exp::Kind::TEMP
    ) {
        // MOVE(MEM(CONST(i)), e2);
        auto i  = reinterpret_cast< T::ConstExp* >( reinterpret_cast< T::MemExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->exp )->consti;
        auto e2 = reinterpret_cast< T::MoveStm* >( stmNode )->src;
    }
    else if ( stmNode->kind == T::Stm::Kind::MOVE && reinterpret_cast< T::MoveStm* >( stmNode )->dst->kind == T::Exp::Kind::TEMP
              //   && reinterpret_cast< T::MoveStm* >( stmNode )->src->kind == T::Exp::Kind::TEMP
    ) {
        // MOVE(TEMP(t), e2);
        auto t  = reinterpret_cast< T::TempExp* >( reinterpret_cast< T::MoveStm* >( stmNode )->dst )->temp;
        auto e2 = reinterpret_cast< T::MoveStm* >( stmNode )->src;
    }
    else if ( stmNode->kind == T::Stm::LABEL ) {
        // LABEL(lab)
        auto lab = reinterpret_cast< T::LabelStm* >( stmNode )->label;
    }
    else if ( stmNode->kind == T::Stm::CJUMP ) {
    }
    else if ( stmNode->kind == T::Stm::EXP ) {
    }
    else if ( stmNode->kind == T::Stm::JUMP ) {
    }
    else if ( stmNode->kind == T::Stm::MOVE ) {
    }
    else if ( stmNode->kind == T::Stm::SEQ ) {
    }
    else {
        std::cout << "unknown T::Stm::Kind " << stmList->head->kind << std::endl;
        assert( 0 );
    }

    assert( node );
    return new AS::InstrList( node, Codegen( f, stmList->tail ) );
}  // namespace CG

AS::InstrList* Codegen( F::Frame* f, T::ExpList* expList ) {
    if ( expList == nullptr ) {
        return nullptr;
    }
    std::cout << "[as] [codegen] expList called" << std::endl;
    AS::Instr* node    = nullptr;
    auto       expNode = expList->head;
    if ( expNode->kind == T::Exp::MEM && reinterpret_cast< T::MemExp* >( expNode )->exp->kind == T::Exp::BINOP
         && reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( expNode )->exp )->op == T::PLUS_OP
         && reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( expNode )->exp )->right->kind == T::Exp::CONST )

    {
        // MEM(BINOP(PLUS, e1, CONST(i)))
        auto e1 = reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( expNode )->exp )->left;
        auto i  = reinterpret_cast< T::ConstExp* >( reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( expNode )->exp )->right )->consti;
    }
    else if ( expNode->kind == T::Exp::MEM && reinterpret_cast< T::MemExp* >( expNode )->exp->kind == T::Exp::BINOP
              && reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( expNode )->exp )->op == T::PLUS_OP
              && reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( expNode )->exp )->left->kind == T::Exp::CONST ) {

        // MEM(BINOP(PLUS, CONST(i), e1))
        auto e1 = reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( expNode )->exp )->right;
        auto i  = reinterpret_cast< T::ConstExp* >( reinterpret_cast< T::BinopExp* >( reinterpret_cast< T::MemExp* >( expNode )->exp )->left )->consti;
    }
    else if ( expNode->kind == T::Exp::MEM && reinterpret_cast< T::ExpStm* >( expNode )->exp->kind == T::Exp::CONST ) {
        // MEM(CONST(i))
        auto i = reinterpret_cast< T::ConstExp* >( reinterpret_cast< T::ExpStm* >( expNode )->exp )->consti;
    }
    else if ( expNode->kind == T::Exp::MEM ) {
        // MEM(e1)
        auto e1 = reinterpret_cast< T::ExpStm* >( expNode )->exp;
    }
    else if ( expNode->kind == T::Exp::BINOP && reinterpret_cast< T::BinopExp* >( expNode )->op == T::PLUS_OP && reinterpret_cast< T::BinopExp* >( expNode )->right->kind == T::Exp::CONST ) {
        // BINOP(PLUS, e1, CONST(i))
        auto e1 = reinterpret_cast< T::BinopExp* >( expNode )->left;
        auto i  = reinterpret_cast< T::ConstExp* >( reinterpret_cast< T::BinopExp* >( expNode )->right )->consti;
    }
    else if ( expNode->kind == T::Exp::BINOP && reinterpret_cast< T::BinopExp* >( expNode )->op == T::PLUS_OP && reinterpret_cast< T::BinopExp* >( expNode )->left->kind == T::Exp::CONST ) {
        // BINOP(PLUS, CONST(i), e1)
        auto e1 = reinterpret_cast< T::BinopExp* >( expNode )->right;
        auto i  = reinterpret_cast< T::ConstExp* >( reinterpret_cast< T::BinopExp* >( expNode )->left )->consti;
    }
    else if ( expNode->kind == T::Exp::CONST ) {
        // CONST(i)
        auto i = reinterpret_cast< T::ConstExp* >( expNode )->consti;
    }
    else if ( expNode->kind == T::Exp::BINOP && reinterpret_cast< T::BinopExp* >( expNode )->op == T::PLUS_OP ) {
        // BINOP(PLUS, e1, e2)
        auto e1 = reinterpret_cast< T::BinopExp* >( expNode )->left;
        auto e2 = reinterpret_cast< T::BinopExp* >( expNode )->right;
    }
    else if ( expNode->kind == T::Exp::TEMP ) {
        // TEMP(t)
        auto t = reinterpret_cast< T::TempExp* >( expNode )->temp;
    }
    else if ( expNode->kind == T::Exp::CALL ) {
    }
    else if ( expNode->kind == T::Exp::ESEQ ) {
    }
    else if ( expNode->kind == T::Exp::MEM ) {
    }
    else if ( expNode->kind == T::Exp::NAME ) {
    }
    else {
        std::cout << "unknown T::Exp::Kind " << expList->head->kind << std::endl;
        assert( 0 );
    }
    assert( node );
    return new AS::InstrList( node, Codegen( f, expList->tail ) );
}

}  // namespace CG