Called TranslateProgram(A::Exp* root).
Entered LetExp::Translate.
[translate] [letexp] while!
Entered VarDec::Translate. going to declare var: a
Entered AllocLocal. escape? 1
create newAcc fine
Entered IntExp::Translate.
implicit type: 0x564ba3c61104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return new framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x564ba3ed1a60
[translate] [letexp] while out, stms going to push_back Nx's UnNx() called
0x564ba3ed1a30
Nx's UnNx() called
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Entered WhileExp::Translate.
Entered OpExp::Translate. OpCode: GE_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze a
gotta varP: 0x564ba3ed1420
gotta acc: 0x564ba3ed13c0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x564ba3ed1aa0
with a INFRAME access
Analyzed leftT, which.exp = 0x564ba3ed1b50
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x564ba3ed1b90
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
called addLoop. 
Entered SeqExp::Translate.
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze a
gotta varP: 0x564ba3ed1420
gotta acc: 0x564ba3ed13c0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x564ba3ed1d40
with a INFRAME access
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x564ba3ecee50
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze a
gotta varP: 0x564ba3ed1420
gotta acc: 0x564ba3ed13c0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x564ba3ed1e10
with a INFRAME access
Ex's UnEx() called
Entered AssignExp::Translate.
Entered SimpleVar::Translate. ** Trying to analyze a
gotta varP: 0x564ba3ed1420
gotta acc: 0x564ba3ed13c0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x564ba3ed1f90
with a INFRAME access
translated varKind. which exp = 0x564ba3ed2040
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze a
gotta varP: 0x564ba3ed1420
gotta acc: 0x564ba3ed13c0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x564ba3ed2060
with a INFRAME access
Analyzed leftT, which.exp = 0x564ba3ed2110
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x564ba3ed2150
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated expT. which exp = 0x564ba3ed21a0
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze a
gotta varP: 0x564ba3ed1420
gotta acc: 0x564ba3ed13c0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x564ba3ed21c0
with a INFRAME access
Analyzed leftT, which.exp = 0x564ba3ed2270
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x564ba3ed22b0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Ex's UnEx() called
Ex's UnEx() called
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: EQ_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze a
gotta varP: 0x564ba3ed1420
gotta acc: 0x564ba3ed13c0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x564ba3ed1f70
with a INFRAME access
Analyzed leftT, which.exp = 0x564ba3ed2420
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x564ba3ed2460
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x564ba3ed2500
this->elsee = empty. 
Entered BreakExp::Translate.
(no else) translated then, exp = 0x564ba3ed2550
Cx's UnCx() called
IfExp: has no return type!
Ex's UnNx() called
Ex's UnNx() called
Ex's UnNx() called
Nx's UnNx() called
Nx's UnEx() called
called popLoop. 
Cx's UnCx() called
cond.stm = 0x564ba3ed1bb0
Ex's UnNx() called
[translate] [seq] exp.size = 1
LetExp translated bodyT, which.exp = 0x564ba3ed2a10
Nx's UnEx() called
Ex's UnNx() called
[translate] [frag] called add fragment. kind: PROC
 ~~~~ Completed Translation ~~~~
Ex's UnEx() called
gonna print a EseqExp~
My stm = 0x564ba3ed1a30, exp = 0x564ba3ed2a50
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x564ba3ed29e0, exp = 0x564ba3ed2a30
gonna print a SeqStm~
gonna print a LabelStm~
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
gonna print a EseqExp~
My stm = 0x564ba3ed2370, exp = 0x564ba3ed2790
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x564ba3ed2770, exp = 0x564ba3ed27c0
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x564ba3ed2320, exp = 0x564ba3ed2810
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x564ba3ed26c0, exp = 0x564ba3ed27f0
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
gonna print a JumpStm~
gonna print a NameExp~
gonna print a LabelStm~
gonna print a ConstExp~
 ~~~~ Completed Printing ~~~~
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x564ba3ed2860, 0x564ba3ed29b0
[canon] SeqStm::Canon called. this->left, right = 0x564ba3ed1bb0, 0x564ba3ed2980
[canon] SeqStm::Canon called. this->left, right = 0x564ba3ed2880, 0x564ba3ed2950
[canon] SeqStm::Canon called. this->left, right = 0x564ba3ed28a0, 0x564ba3ed2920
[canon] SeqStm::Canon called. this->left, right = 0x564ba3ed2710, 0x564ba3ed2900
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x564ba3ed2480, 0x564ba3ed2690
[canon] SeqStm::Canon called. this->left, right = 0x564ba3ed2600, 0x564ba3ed2660
[canon] SeqStm::Canon called. this->left, right = 0x564ba3ed2620, 0x564ba3ed2640
[canon] LabelStm::Canon called
[canon] ExpStm::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x564ba3ed1f70, 0x564ba3ed23b0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x564ba3ed1f90, 0x564ba3ed1fd0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x564ba3ed20f0, 0x564ba3ed2130
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x564ba3ed2060, 0x564ba3ed20a0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x564ba3ed1e10, 0x564ba3ed1e50
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x564ba3ed1e10, 0x564ba3ed1e50
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x564ba3ed1aa0, 0x564ba3ed1ae0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x564ba3ed19a0, 0x564ba3ed19c0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x564ba3ed55d0
[codegen] fallen into LABEL
I'm trying to find the label L9
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x564ba3ed1a30
[codegen] fallen into MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)
[codegen] entered munchExp. expNode: 0x564ba3ed19a0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x564ba3ed13e0
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x564ba3ed2860
[codegen] fallen into LABEL
I'm trying to find the label L2
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x564ba3ed1bb0
[codegen] fallen into CJUMP
[codegen] entered munchExp. expNode: 0x564ba3ed1b30
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x564ba3ed1aa0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x564ba3ed1b70
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x564ba3ed2900
[codegen] fallen into LABEL
I'm trying to find the label L4
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x564ba3ed5770
[codegen] fallen into JUMP
gotta jexp = 0x564ba3ed5750
gotta jmpTo = 0x564ba3ed5570
escaped from instr = 0x564ba3ed6600
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x564ba3ed2880
[codegen] fallen into LABEL
I'm trying to find the label L3
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x564ba3ed2370
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x564ba3ed1f20
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x564ba3ed1ea0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x564ba3ed1e10
[codegen] fallen into TEMP(t)
returnValue register requested
gonna return new returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x564ba3ed2770
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x564ba3ed1f20
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x564ba3ed1ea0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x564ba3ed1e10
[codegen] fallen into TEMP(t)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x564ba3ed2320
[codegen] fallen into MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)
[codegen] entered munchExp. expNode: 0x564ba3ed1f90
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x564ba3ed2170
[codegen] entered munchExp. expNode: 0x564ba3ed20f0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x564ba3ed2060
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x564ba3ed2130
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x564ba3ed2480
[codegen] fallen into CJUMP
[codegen] entered munchExp. expNode: 0x564ba3ed2400
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x564ba3ed1f70
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x564ba3ed2440
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x564ba3ed2640
[codegen] fallen into LABEL
I'm trying to find the label L6
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x564ba3ed2710
[codegen] fallen into JUMP
gotta jexp = 0x564ba3ed28e0
gotta jmpTo = 0x564ba3ed1c60
escaped from instr = 0x564ba3ed73b0
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x564ba3ed2600
[codegen] fallen into LABEL
I'm trying to find the label L5
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x564ba3ed56e0
[codegen] fallen into JUMP
gotta jexp = 0x564ba3ed56c0
gotta jmpTo = 0x564ba3ed25a0
escaped from instr = 0x564ba3ed74a0
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x564ba3ed5ef0
[codegen] fallen into LABEL
I'm trying to find the label L8
