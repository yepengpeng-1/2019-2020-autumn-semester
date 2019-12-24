Called TranslateProgram(A::Exp* root).
Entered LetExp::Translate.
[translate] [letexp] while!
Entered VarDec::Translate. going to declare var: a
Entered AllocLocal. escape? 1
create newAcc fine
Entered IntExp::Translate.
implicit type: 0x5651f64f2104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return new framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x5651f6c8e990
[translate] [letexp] while out, stms going to push_back Nx's UnNx() called
0x5651f6c8e960
Nx's UnNx() called
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Entered ForExp::Translate.
Entered IntExp::Translate.
loTrans success. loTrans.exp = 0x5651f6c8ea80
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze a
gotta varP: 0x5651f6c8e350
gotta acc: 0x5651f6c8e2f0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x5651f6c8eaa0
with a INFRAME access
hiTrans success. hiTrans.exp = 0x5651f6c8eb50
Entered AllocLocal. escape? 1
create newAcc fine
Entered SeqExp::Translate.
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x5651f6c8ec20
gotta acc: 0x5651f6c8ec00
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x5651f6c8ed00
with a INFRAME access
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x5651f6c8be50
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x5651f6c8ec20
gotta acc: 0x5651f6c8ec00
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x5651f6c8edd0
with a INFRAME access
Ex's UnEx() called
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: EQ_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x5651f6c8ec20
gotta acc: 0x5651f6c8ec00
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x5651f6c8ef50
with a INFRAME access
Analyzed leftT, which.exp = 0x5651f6c8f000
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x5651f6c8f040
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x5651f6c8f0e0
this->elsee = empty. 
Entered BreakExp::Translate.
(no else) translated then, exp = 0x5651f6c8f130
Cx's UnCx() called
IfExp: has no return type!
Ex's UnNx() called
[translate] [seq] exp.size = 2
Ex's UnNx() called
Nx's UnEx() called
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x5651f6c8f2f0
with a INFRAME access
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x5651f6c8f420
with a INFRAME access
Ex's UnEx() called
Ex's UnEx() called
Ex's UnNx() called
[translate] [seq] exp.size = 1
LetExp translated bodyT, which.exp = 0x5651f6c8f740
Nx's UnEx() called
Ex's UnNx() called
[translate] [frag] called add fragment. kind: PROC
 ~~~~ Completed Translation ~~~~
Ex's UnEx() called
gonna print a EseqExp~
My stm = 0x5651f6c8e960, exp = 0x5651f6c8f780
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x5651f6c8f710, exp = 0x5651f6c8f760
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a SeqStm~
gonna print a LabelStm~
gonna print a SeqStm~
gonna print a ExpStm~
gonna print a EseqExp~
My stm = 0x5651f6c8ef30, exp = 0x5651f6c8f330
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x5651f6c8f2a0, exp = 0x5651f6c8f310
gonna print a SeqStm~
gonna print a CjumpStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a SeqStm~
gonna print a LabelStm~
gonna print a SeqStm~
gonna print a ExpStm~
gonna print a ConstExp~
gonna print a LabelStm~
gonna print a ConstExp~
gonna print a SeqStm~
gonna print a CjumpStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a SeqStm~
gonna print a JumpStm~
gonna print a NameExp~
gonna print a LabelStm~
gonna print a ConstExp~
 ~~~~ Completed Printing ~~~~
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x5651f6c8f4b0, 0x5651f6c8f6e0
[canon] SeqStm::Canon called. this->left, right = 0x5651f6c8f4e0, 0x5651f6c8f6b0
[canon] SeqStm::Canon called. this->left, right = 0x5651f6c8f510, 0x5651f6c8f680
[canon] SeqStm::Canon called. this->left, right = 0x5651f6c8f530, 0x5651f6c8f650
[canon] SeqStm::Canon called. this->left, right = 0x5651f6c8f550, 0x5651f6c8f620
[canon] SeqStm::Canon called. this->left, right = 0x5651f6c8f5d0, 0x5651f6c8f600
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5651f6c8f2f0, 0x5651f6c8f3b0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5651f6c8f420, 0x5651f6c8f440
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x5651f6c8f060, 0x5651f6c8f270
[canon] SeqStm::Canon called. this->left, right = 0x5651f6c8f1e0, 0x5651f6c8f240
[canon] SeqStm::Canon called. this->left, right = 0x5651f6c8f200, 0x5651f6c8f220
[canon] LabelStm::Canon called
[canon] ExpStm::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5651f6c8ef50, 0x5651f6c8ef90
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5651f6c8edd0, 0x5651f6c8ee10
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5651f6c8f2f0, 0x5651f6c8f3b0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5651f6c8f420, 0x5651f6c8f440
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5651f6c8eaa0, 0x5651f6c8eae0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5651f6c8e8d0, 0x5651f6c8e8f0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5651f6c922b0
[codegen] fallen into LABEL
I'm trying to find the label L9
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5651f6c8e960
[codegen] fallen into MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)
[codegen] entered munchExp. expNode: 0x5651f6c8e8d0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x5651f6c8e310
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5651f6c8f4b0
[codegen] fallen into MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)
[codegen] entered munchExp. expNode: 0x5651f6c8f420
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x5651f6c8eb30
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x5651f6c8eaa0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5651f6c8f4e0
[codegen] fallen into MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)
[codegen] entered munchExp. expNode: 0x5651f6c8f2f0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x5651f6c8ea60
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5651f6c8f510
[codegen] fallen into LABEL
I'm trying to find the label L3
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5651f6c8ef30
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x5651f6c8eee0
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x5651f6c8ee60
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x5651f6c8edd0
[codegen] fallen into TEMP(t)
returnValue register requested
gonna return new returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5651f6c8f060
[codegen] fallen into CJUMP
[codegen] entered munchExp. expNode: 0x5651f6c8efe0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x5651f6c8ef50
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x5651f6c8f020
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5651f6c8f220
[codegen] fallen into LABEL
I'm trying to find the label L6
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5651f6c8f550
[codegen] fallen into CJUMP
[codegen] entered munchExp. expNode: 0x5651f6c8f400
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x5651f6c8f2f0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x5651f6c8f490
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x5651f6c8f420
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5651f6c8f600
[codegen] fallen into LABEL
I'm trying to find the label L2
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5651f6c924c0
[codegen] fallen into JUMP
gotta jexp = 0x5651f6c924a0
gotta jmpTo = 0x5651f6c92250
escaped from instr = 0x5651f6c93e60
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5651f6c8f1e0
[codegen] fallen into LABEL
I'm trying to find the label L5
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5651f6c923c0
[codegen] fallen into JUMP
gotta jexp = 0x5651f6c923a0
gotta jmpTo = 0x5651f6c8f180
escaped from instr = 0x5651f6c93f50
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5651f6c92440
[codegen] fallen into LABEL
I'm trying to find the label L10
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5651f6c8f5d0
[codegen] fallen into JUMP
gotta jexp = 0x5651f6c8f5b0
gotta jmpTo = 0x5651f6c8ea00
escaped from instr = 0x5651f6c94040
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5651f6c92c40
[codegen] fallen into LABEL
I'm trying to find the label L8
