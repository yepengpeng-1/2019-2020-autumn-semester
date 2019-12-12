Called TranslateProgram(A::Exp* root).
Entered LetExp::Translate.
[translate] [letexp] while!
Entered FunctionDec::Translate.
Analyzing function 0x5562f6e87af0
called new level. label: g
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
created new InFrameAccess. sym: a
created new InFrameAccess. sym: b
gonna build formals.
buildFormals called. level->frame: 0x5562f6e8a650
f_accl = 0x5562f6e8a630
formals built.
while #3. name: a. fl, t, formals: 0x5562f6e87d80, 0x5562f6e8a3c0, 0x5562f6e8a720
while #3. name: b. fl, t, formals: 0x5562f6e87d30, 0x5562f6e8a3a0, 0x5562f6e8a700
while #3 end. 
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: GT_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze a
gotta varP: 0x5562f6e8a740
gotta acc: 0x5562f6e8a6c0
called findStaticLink 
framePointer register requested
gonna return new framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x5562f6e8ac90
with a INFRAME access
Analyzed leftT, which.exp = 0x5562f6e8ad40
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze b
gotta varP: 0x5562f6e8a790
gotta acc: 0x5562f6e8a6e0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x5562f6e8ad60
with a INFRAME access
Analyzed rightT, which.exp = 0x5562f6e8ae10
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x5562f6e8aeb0
this->elsee != empty. 
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze a
gotta varP: 0x5562f6e8a740
gotta acc: 0x5562f6e8a6c0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x5562f6e8aee0
with a INFRAME access
(exists else) translated then, exp = 0x5562f6e8af90
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze b
gotta varP: 0x5562f6e8a790
gotta acc: 0x5562f6e8a6e0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x5562f6e8afb0
with a INFRAME access
(exists else) translated else, exp = 0x5562f6e8b060
Entered AllocLocal. escape? 1
create newAcc fine
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x5562f6e8b190
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
0x5562f6e8b560
Nx's UnNx() called
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function g
comparing arg->head and formals->head
Entered IntExp::Translate.
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x5562f6e880c0
Entered IntExp::Translate.
Ex's UnEx() called
[callexp] while (rawExps) => 0x5562f6e880a0
Entered IntExp::Translate.
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x5562f6e88110
Entered CallExp::Translate.
found function g
comparing arg->head and formals->head
Entered IntExp::Translate.
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x5562f6e880c0
Entered IntExp::Translate.
Ex's UnEx() called
[callexp] while (rawExps) => 0x5562f6e880a0
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
[translate] [seq] exp.size = 1
LetExp translated bodyT, which.exp = 0x5562f6e8ba50
Ex's UnEx() called
Ex's UnNx() called
[translate] [frag] called add fragment. kind: PROC
 ~~~~ Completed Translation ~~~~
Ex's UnEx() called
gonna print a EseqExp~
My stm = 0x5562f6e8b560, exp = 0x5562f6e8ba20
gonna print a MoveStm~
gonna print a TempExp~
gonna print a EseqExp~
My stm = 0x5562f6e8b440, exp = 0x5562f6e8b200
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
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
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
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
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
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] EseqExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5562f6e8b190, 0x5562f6e8b1b0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x5562f6e8ae30, 0x5562f6e8b410
[canon] SeqStm::Canon called. this->left, right = 0x5562f6e8b220, 0x5562f6e8b3e0
[canon] SeqStm::Canon called. this->left, right = 0x5562f6e8b240, 0x5562f6e8b3b0
[canon] SeqStm::Canon called. this->left, right = 0x5562f6e8b2b0, 0x5562f6e8b380
[canon] SeqStm::Canon called. this->left, right = 0x5562f6e8b2e0, 0x5562f6e8b350
[canon] SeqStm::Canon called. this->left, right = 0x5562f6e8b300, 0x5562f6e8b330
[canon] LabelStm::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5562f6e8b190, 0x5562f6e8b1b0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5562f6e8afb0, 0x5562f6e8aff0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5562f6e8b190, 0x5562f6e8b1b0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5562f6e8aee0, 0x5562f6e8af20
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5562f6e8ac90, 0x5562f6e8acd0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5562f6e8ad60, 0x5562f6e8ada0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5562f6e8e400
[codegen] fallen into LABEL
I'm trying to find the label L6
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5562f6e8ae30
[codegen] fallen into CJUMP
[codegen] entered munchExp. expNode: 0x5562f6e8ad20
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x5562f6e8ac90
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x5562f6e8adf0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x5562f6e8ad60
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5562f6e8b2e0
[codegen] fallen into LABEL
I'm trying to find the label L3
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5562f6e8b300
[codegen] fallen into MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)
[codegen] entered munchExp. expNode: 0x5562f6e8b190
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x5562f6e8b040
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x5562f6e8afb0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5562f6e8b330
[codegen] fallen into LABEL
I'm trying to find the label L4
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5562f6e8b560
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x5562f6e8b200
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x5562f6e8b190
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5562f6e8d2b0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x5562f6e8b990
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x5562f6e8b8b0
[codegen] fallen into CONST(i)
[codegen] entered munchExp. expNode: 0x5562f6e8b910
[codegen] fallen into CONST(i)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5562f6e8b5b0
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x5562f6e8ba20
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x5562f6e8d2e0
[codegen] fallen into TEMP(t)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5562f6e8e510
[codegen] fallen into JUMP
gotta jexp = 0x5562f6e8e4f0
gotta jmpTo = 0x5562f6e8e3a0
escaped from instr = 0x5562f6e8f920
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5562f6e8b220
[codegen] fallen into LABEL
I'm trying to find the label L2
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5562f6e8b240
[codegen] fallen into MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)
[codegen] entered munchExp. expNode: 0x5562f6e8b190
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x5562f6e8af70
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x5562f6e8aee0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5562f6e8b2b0
[codegen] fallen into JUMP
gotta jexp = 0x5562f6e8b290
gotta jmpTo = 0x5562f6e8b0e0
escaped from instr = 0x5562f6e8fc60
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x5562f6e8eb90
[codegen] fallen into LABEL
I'm trying to find the label L5
