Called TranslateProgram(A::Exp* root).
Entered LetExp::Translate.
[translate] [letexp] while!
Entered FunctionDec::Translate.
Analyzing function 0x55b9a2c31b30
called new level. label: nfactor
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
created new InFrameAccess. sym: n
gonna build formals.
buildFormals called. level->frame: 0x55b9a2c34870
f_accl = 0x55b9a2c34850
formals built.
while #3. name: n. fl, t, formals: 0x55b9a2c31bf0, 0x55b9a2c34680, 0x55b9a2c34900
while #3 end. 
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: EQ_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze n
gotta varP: 0x55b9a2c34920
gotta acc: 0x55b9a2c348e0
called findStaticLink 
framePointer register requested
gonna return new framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x55b9a2c34e20
with a INFRAME access
Analyzed leftT, which.exp = 0x55b9a2c34ed0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55b9a2c34f10
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x55b9a2c34fb0
this->elsee != empty. 
Entered IntExp::Translate.
(exists else) translated then, exp = 0x55b9a2c35000
Entered OpExp::Translate. OpCode: TIMES_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze n
gotta varP: 0x55b9a2c34920
gotta acc: 0x55b9a2c348e0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x55b9a2c35020
with a INFRAME access
Analyzed leftT, which.exp = 0x55b9a2c350d0
Entered CallExp::Translate.
found function nfactor
comparing arg->head and formals->head
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze n
gotta varP: 0x55b9a2c34920
gotta acc: 0x55b9a2c348e0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x55b9a2c35120
with a INFRAME access
Analyzed leftT, which.exp = 0x55b9a2c351d0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55b9a2c35210
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x55b9a2c321d0
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze n
gotta varP: 0x55b9a2c34920
gotta acc: 0x55b9a2c348e0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x55b9a2c35280
with a INFRAME access
Analyzed leftT, which.exp = 0x55b9a2c35330
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55b9a2c35370
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Ex's UnEx() called
Analyzed rightT, which.exp = 0x55b9a2c35450
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
(exists else) translated else, exp = 0x55b9a2c354a0
Entered AllocLocal. escape? 1
create newAcc fine
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x55b9a2c355d0
with a INFRAME access
Cx's UnCx() called
IfExp: has a return type!
Ex's UnEx() called
Ex's UnEx() called
returnValue register requested
gonna return new returnValue register
Ex's UnEx() called
Nx's UnNx() called
[translate] [letexp] while out, stms going to push_back Nx's UnNx() called
0x55b9a2c359a0
Nx's UnNx() called
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function nfactor
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x55b9a2c323c0
Entered IntExp::Translate.
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x55b9a2c32410
Entered CallExp::Translate.
found function nfactor
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x55b9a2c323c0
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
[translate] [seq] exp.size = 1
LetExp translated bodyT, which.exp = 0x55b9a2c35d50
Ex's UnEx() called
Ex's UnNx() called
[translate] [frag] called add fragment. kind: PROC
 ~~~~ Completed Translation ~~~~
Ex's UnEx() called
gonna print a EseqExp~
My stm = 0x55b9a2c359a0, exp = 0x55b9a2c35d20
gonna print a MoveStm~
gonna print a TempExp~
gonna print a EseqExp~
My stm = 0x55b9a2c35880, exp = 0x55b9a2c35640
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
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a SeqStm~
gonna print a JumpStm~
gonna print a NameExp~
gonna print a SeqStm~
gonna print a LabelStm~
gonna print a SeqStm~
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
gonna print a CallExp~
gonna print a NameExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a LabelStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a CallExp~
gonna print a NameExp~
gonna print a CallExp~
gonna print a NameExp~
gonna print a ConstExp~
 ~~~~ Completed Printing ~~~~
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] EseqExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55b9a2c355d0, 0x55b9a2c355f0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x55b9a2c34f30, 0x55b9a2c35850
[canon] SeqStm::Canon called. this->left, right = 0x55b9a2c35660, 0x55b9a2c35820
[canon] SeqStm::Canon called. this->left, right = 0x55b9a2c35680, 0x55b9a2c357f0
[canon] SeqStm::Canon called. this->left, right = 0x55b9a2c356f0, 0x55b9a2c357c0
[canon] SeqStm::Canon called. this->left, right = 0x55b9a2c35720, 0x55b9a2c35790
[canon] SeqStm::Canon called. this->left, right = 0x55b9a2c35740, 0x55b9a2c35770
[canon] LabelStm::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55b9a2c355d0, 0x55b9a2c355f0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55b9a2c350b0, 0x55b9a2c35420
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55b9a2c35020, 0x55b9a2c35060
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55b9a2c35310, 0x55b9a2c35350
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55b9a2c35280, 0x55b9a2c352c0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] MoveStm::Canon called
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55b9a2c34e20, 0x55b9a2c34e60
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55b9a2c38b30
[codegen] fallen into LABEL
I'm trying to find the label L6
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55b9a2c34f30
[codegen] fallen into CJUMP
[codegen] entered munchExp. expNode: 0x55b9a2c34eb0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55b9a2c34e20
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55b9a2c34ef0
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55b9a2c35720
[codegen] fallen into LABEL
I'm trying to find the label L3
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55b9a2c382b0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x55b9a2c35610
[codegen] fallen into BINOP(PLUS, e1, CONST(i))
[codegen] entered munchExp. expNode: 0x55b9a2c355d0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55b9a2c38150
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x55b9a2c350b0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55b9a2c35020
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55b9a2c37cb0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x55b9a2c35420
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x55b9a2c35390
[codegen] entered munchExp. expNode: 0x55b9a2c35310
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55b9a2c35280
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55b9a2c35350
[codegen] fallen into CONST(i)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55b9a2c35740
[codegen] fallen into MOVE(MEM(e1), e2)
[codegen] entered munchExp. expNode: 0x55b9a2c38270
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55b9a2c35470
[codegen] entered munchExp. expNode: 0x55b9a2c38110
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55b9a2c37ce0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55b9a2c35770
[codegen] fallen into LABEL
I'm trying to find the label L4
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55b9a2c359a0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x55b9a2c35640
[codegen] fallen into MEM(e1)
[codegen] entered munchExp. expNode: 0x55b9a2c38270
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55b9a2c375b0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x55b9a2c35c90
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x55b9a2c35c10
[codegen] fallen into CONST(i)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55b9a2c359f0
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x55b9a2c35d20
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x55b9a2c375e0
[codegen] fallen into TEMP(t)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55b9a2c38c40
[codegen] fallen into JUMP
gotta jexp = 0x55b9a2c38c20
gotta jmpTo = 0x55b9a2c38ad0
escaped from instr = 0x55b9a2c3a7b0
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55b9a2c35660
[codegen] fallen into LABEL
I'm trying to find the label L2
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55b9a2c35680
[codegen] fallen into MOVE(MEM(e1), e2)
[codegen] entered munchExp. expNode: 0x55b9a2c38270
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55b9a2c34fe0
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55b9a2c356f0
[codegen] fallen into JUMP
gotta jexp = 0x55b9a2c356d0
gotta jmpTo = 0x55b9a2c35520
escaped from instr = 0x55b9a2c3aa60
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55b9a2c392c0
[codegen] fallen into LABEL
I'm trying to find the label L5
