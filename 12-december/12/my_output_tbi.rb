Called TranslateProgram(A::Exp* root).
Entered LetExp::Translate.
[translate] [letexp] while!
Entered VarDec::Translate. going to declare var: N
Entered AllocLocal. escape? 1
create newAcc fine
Entered IntExp::Translate.
implicit type: 0x5563bc8e3104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return new framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x5563bd1e3200
[translate] [letexp] while out, stms going to push_back Nx's UnNx() called
0x5563bd1e31d0
Nx's UnNx() called
[translate] [letexp] while!
Entered FunctionDec::Translate.
Analyzing function 0x5563bd1dfba0
called new level. label: printb
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
gonna build formals.
buildFormals called. level->frame: 0x5563bd1e3370
f_accl = 0x5563bd1e3350
formals built.
while #3 end. 
Entered SeqExp::Translate.
Entered ForExp::Translate.
Entered IntExp::Translate.
loTrans success. loTrans.exp = 0x5563bd1e3490
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze N
gotta varP: 0x5563bd1e2bc0
gotta acc: 0x5563bd1e2b60
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x5563bd1e34b0
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x5563bd1e3750
with a INFRAME access
Analyzed leftT, which.exp = 0x5563bd1e3850
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x5563bd1e3890
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
hiTrans success. hiTrans.exp = 0x5563bd1e38e0
Entered AllocLocal. escape? 1
create newAcc fine
Entered SeqExp::Translate.
Entered ForExp::Translate.
Entered IntExp::Translate.
loTrans success. loTrans.exp = 0x5563bd1e3b10
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze N
gotta varP: 0x5563bd1e2bc0
gotta acc: 0x5563bd1e2b60
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x5563bd1e3b30
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x5563bd1e3dd0
with a INFRAME access
Analyzed leftT, which.exp = 0x5563bd1e3ed0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x5563bd1e3f10
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
hiTrans success. hiTrans.exp = 0x5563bd1e3f60
Entered AllocLocal. escape? 1
create newAcc fine
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: GT_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x5563bd1e39b0
gotta acc: 0x5563bd1e3990
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x5563bd1e4110
with a INFRAME access
Analyzed leftT, which.exp = 0x5563bd1e41c0
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze j
gotta varP: 0x5563bd1e4030
gotta acc: 0x5563bd1e4010
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x5563bd1e41e0
with a INFRAME access
Analyzed rightT, which.exp = 0x5563bd1e4290
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x5563bd1e4330
this->elsee != empty. 
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
(exists else) translated then, exp = 0x5563bd1e4410
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
(exists else) translated else, exp = 0x5563bd1e44e0
Entered AllocLocal. escape? 1
create newAcc fine
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x5563bd1e4610
with a INFRAME access
Cx's UnCx() called
IfExp: has a return type!
Ex's UnEx() called
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x5563bd1e0420
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: GT_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x5563bd1e39b0
gotta acc: 0x5563bd1e3990
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x5563bd1e4940
with a INFRAME access
Analyzed leftT, which.exp = 0x5563bd1e49f0
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze j
gotta varP: 0x5563bd1e4030
gotta acc: 0x5563bd1e4010
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x5563bd1e4a10
with a INFRAME access
Analyzed rightT, which.exp = 0x5563bd1e4ac0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x5563bd1e4b60
this->elsee != empty. 
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
(exists else) translated then, exp = 0x5563bd1e4c40
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
(exists else) translated else, exp = 0x5563bd1e4d10
Entered AllocLocal. escape? 1
create newAcc fine
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x5563bd1e4e40
with a INFRAME access
Cx's UnCx() called
IfExp: has a return type!
Ex's UnEx() called
Ex's UnEx() called
Ex's UnEx() called
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x5563bd1e5200
with a INFRAME access
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x5563bd1e5290
with a INFRAME access
Ex's UnEx() called
Ex's UnEx() called
Ex's UnNx() called
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x5563bd1e0550
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Ex's UnEx() called
[translate] [seq] exp.size = 2
Nx's UnNx() called
Ex's UnEx() called
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x5563bd1e5850
with a INFRAME access
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x5563bd1e5910
with a INFRAME access
Ex's UnEx() called
Ex's UnEx() called
Ex's UnNx() called
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x5563bd1e0700
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Ex's UnEx() called
[translate] [seq] exp.size = 2
Nx's UnNx() called
Ex's UnEx() called
Ex's UnNx() called
[translate] [letexp] while out, stms going to push_back Nx's UnNx() called
0x5563bd1e5f20
Nx's UnNx() called
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Entered CallExp::Translate.
found function printb
Call operation returns an 6
[callexp] start traversing rawExps
[translate] [seq] exp.size = 1
LetExp translated bodyT, which.exp = 0x5563bd1e5fc0
Ex's UnEx() called
Ex's UnNx() called
[translate] [frag] called add fragment. kind: PROC
 ~~~~ Completed Translation ~~~~
Ex's UnEx() called
gonna print a EseqExp~
My stm = 0x5563bd1e6000, exp = 0x5563bd1e5f90
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a ExpStm~
gonna print a EseqExp~
My stm = 0x5563bd1e5c00, exp = 0x5563bd1e5e80
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x5563bd1e3700, exp = 0x5563bd1e3730
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a TempExp~
gonna print a TempExp~
gonna print a ConstExp~
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
My stm = 0x5563bd1e5580, exp = 0x5563bd1e5800
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x5563bd1e3d80, exp = 0x5563bd1e3db0
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a TempExp~
gonna print a TempExp~
gonna print a ConstExp~
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
gonna print a CallExp~
gonna print a NameExp~
gonna print a EseqExp~
My stm = 0x5563bd1e50f0, exp = 0x5563bd1e4eb0
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
gonna print a LabelStm~
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a NameExp~
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
gonna print a NameExp~
gonna print a LabelStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
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
gonna print a CallExp~
gonna print a NameExp~
gonna print a NameExp~
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
gonna print a CallExp~
gonna print a NameExp~
gonna print a NameExp~
gonna print a CallExp~
gonna print a NameExp~
 ~~~~ Completed Printing ~~~~
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x5563bd1e31d0, 0x5563bd1e5f20
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x5563bd1e59a0, 0x5563bd1e5bd0
[canon] SeqStm::Canon called. this->left, right = 0x5563bd1e59d0, 0x5563bd1e5ba0
[canon] SeqStm::Canon called. this->left, right = 0x5563bd1e5a00, 0x5563bd1e5b70
[canon] SeqStm::Canon called. this->left, right = 0x5563bd1e5a20, 0x5563bd1e5b40
[canon] SeqStm::Canon called. this->left, right = 0x5563bd1e5a40, 0x5563bd1e5b10
[canon] SeqStm::Canon called. this->left, right = 0x5563bd1e5ac0, 0x5563bd1e5af0
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5563bd1e5850, 0x5563bd1e58a0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5563bd1e5910, 0x5563bd1e5930
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x5563bd1e5320, 0x5563bd1e5550
[canon] SeqStm::Canon called. this->left, right = 0x5563bd1e5350, 0x5563bd1e5520
[canon] SeqStm::Canon called. this->left, right = 0x5563bd1e5380, 0x5563bd1e54f0
[canon] SeqStm::Canon called. this->left, right = 0x5563bd1e53a0, 0x5563bd1e54c0
[canon] SeqStm::Canon called. this->left, right = 0x5563bd1e53c0, 0x5563bd1e5490
[canon] SeqStm::Canon called. this->left, right = 0x5563bd1e5440, 0x5563bd1e5470
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5563bd1e5200, 0x5563bd1e5220
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5563bd1e5290, 0x5563bd1e52b0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] EseqExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5563bd1e4e40, 0x5563bd1e4e60
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x5563bd1e4ae0, 0x5563bd1e50c0
[canon] SeqStm::Canon called. this->left, right = 0x5563bd1e4ed0, 0x5563bd1e5090
[canon] SeqStm::Canon called. this->left, right = 0x5563bd1e4ef0, 0x5563bd1e5060
[canon] SeqStm::Canon called. this->left, right = 0x5563bd1e4f60, 0x5563bd1e5030
[canon] SeqStm::Canon called. this->left, right = 0x5563bd1e4f90, 0x5563bd1e5000
[canon] SeqStm::Canon called. this->left, right = 0x5563bd1e4fb0, 0x5563bd1e4fe0
[canon] LabelStm::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5563bd1e4e40, 0x5563bd1e4e60
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] NameExp::Canon called
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5563bd1e4e40, 0x5563bd1e4e60
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] NameExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5563bd1e4940, 0x5563bd1e4980
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5563bd1e4a10, 0x5563bd1e4a50
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5563bd1e5200, 0x5563bd1e5220
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5563bd1e5290, 0x5563bd1e52b0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5563bd1e3eb0, 0x5563bd1e3ef0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5563bd1e3dd0, 0x5563bd1e3e60
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x5563bd1e3ce0, 0x5563bd1e3d50
[canon] MoveStm::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5563bd1e3b30, 0x5563bd1e3b50
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5563bd1e5850, 0x5563bd1e58a0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5563bd1e5910, 0x5563bd1e5930
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5563bd1e3830, 0x5563bd1e3870
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5563bd1e3750, 0x5563bd1e37e0
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x5563bd1e3660, 0x5563bd1e36d0
[canon] MoveStm::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5563bd1e34b0, 0x5563bd1e34d0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5563bd1e3140, 0x5563bd1e3160
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1ea8c0
[codegen] fallen into LABEL
I'm trying to find the label L23
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e31d0
[codegen] fallen into MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)
[codegen] entered munchExp. expNode: 0x5563bd1e3140
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x5563bd1e2b80
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1ea110
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x5563bd1e5950
[codegen] fallen into BINOP(PLUS, e1, CONST(i))
[codegen] entered munchExp. expNode: 0x5563bd1e5910
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e3660
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x5563bd1e3520
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x5563bd1e34b0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e36d0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x5563bd1e36b0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e59a0
[codegen] fallen into MOVE(MEM(e1), e2)
[codegen] entered munchExp. expNode: 0x5563bd1ea0d0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x5563bd1e38b0
[codegen] entered munchExp. expNode: 0x5563bd1e3830
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x5563bd1e3730
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x5563bd1e3870
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e59d0
[codegen] fallen into MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)
[codegen] entered munchExp. expNode: 0x5563bd1e5850
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x5563bd1e3470
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e5a00
[codegen] fallen into LABEL
I'm trying to find the label L3
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e96a0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x5563bd1e52d0
[codegen] fallen into BINOP(PLUS, e1, CONST(i))
[codegen] entered munchExp. expNode: 0x5563bd1e5290
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e3ce0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x5563bd1e3ba0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x5563bd1e3b30
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e3d50
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x5563bd1e3d30
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e5320
[codegen] fallen into MOVE(MEM(e1), e2)
[codegen] entered munchExp. expNode: 0x5563bd1e9660
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x5563bd1e3f30
[codegen] entered munchExp. expNode: 0x5563bd1e3eb0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x5563bd1e3db0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x5563bd1e3ef0
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e5350
[codegen] fallen into MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)
[codegen] entered munchExp. expNode: 0x5563bd1e5200
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x5563bd1e3af0
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e5380
[codegen] fallen into LABEL
I'm trying to find the label L6
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e4ae0
[codegen] fallen into CJUMP
[codegen] entered munchExp. expNode: 0x5563bd1e49d0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x5563bd1e4940
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x5563bd1e4aa0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x5563bd1e4a10
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e4f90
[codegen] fallen into LABEL
I'm trying to find the label L16
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e4fb0
[codegen] fallen into MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)
[codegen] entered munchExp. expNode: 0x5563bd1e4e40
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x5563bd1e4cf0
[codegen] fallen into NAME
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e4fe0
[codegen] fallen into LABEL
I'm trying to find the label L17
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e53a0
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x5563bd1e51b0
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x5563bd1e4eb0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x5563bd1e4e40
[codegen] fallen into TEMP(t)
returnValue register requested
gonna return new returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e53c0
[codegen] fallen into CJUMP
[codegen] entered munchExp. expNode: 0x5563bd1e5270
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x5563bd1e5200
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x5563bd1e5300
[codegen] fallen into MEM(e1)
[codegen] entered munchExp. expNode: 0x5563bd1e9660
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e5470
[codegen] fallen into LABEL
I'm trying to find the label L5
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e5a20
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x5563bd1e5800
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x5563bd1e5780
[codegen] fallen into NAME
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e5a40
[codegen] fallen into CJUMP
[codegen] entered munchExp. expNode: 0x5563bd1e58f0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x5563bd1e5850
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x5563bd1e5980
[codegen] fallen into MEM(e1)
[codegen] entered munchExp. expNode: 0x5563bd1ea0d0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e5af0
[codegen] fallen into LABEL
I'm trying to find the label L2
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e5f20
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x5563bd1e5e80
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x5563bd1e5e00
[codegen] fallen into NAME
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e5ed0
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x5563bd1e5f90
[codegen] fallen into CALL
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1eabd0
[codegen] fallen into JUMP
gotta jexp = 0x5563bd1eabb0
gotta jmpTo = 0x5563bd1ea860
escaped from instr = 0x5563bd1ee430
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e4ed0
[codegen] fallen into LABEL
I'm trying to find the label L15
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e4ef0
[codegen] fallen into MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)
[codegen] entered munchExp. expNode: 0x5563bd1e4e40
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x5563bd1e4c20
[codegen] fallen into NAME
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e4f60
[codegen] fallen into JUMP
gotta jexp = 0x5563bd1e4f40
gotta jmpTo = 0x5563bd1e4d90
escaped from instr = 0x5563bd1ee740
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1eaae0
[codegen] fallen into LABEL
I'm trying to find the label L24
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e5440
[codegen] fallen into JUMP
gotta jexp = 0x5563bd1e5420
gotta jmpTo = 0x5563bd1e3a90
escaped from instr = 0x5563bd1ee830
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1eab50
[codegen] fallen into LABEL
I'm trying to find the label L25
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1e5ac0
[codegen] fallen into JUMP
gotta jexp = 0x5563bd1e5aa0
gotta jmpTo = 0x5563bd1e3410
escaped from instr = 0x5563bd1ee920
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5563bd1eb550
[codegen] fallen into LABEL
I'm trying to find the label L22
