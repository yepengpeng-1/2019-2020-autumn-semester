Called TranslateProgram(A::Exp* root).
Entered LetExp::Translate.
[translate] [letexp] while!
Entered FunctionDec::Translate.
Analyzing function 0x558fd96e0af0
called new level. label: a
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
created new InFrameAccess. sym: x
gonna build formals.
buildFormals called. level->frame: 0x558fd96e38f0
f_accl = 0x558fd96e38d0
formals built.
while #3. name: x. fl, t, formals: 0x558fd96e0bb0, 0x558fd96e3700, 0x558fd96e3980
while #3 end. 
Entered LetExp::Translate.
[translate] [letexp] while!
Entered FunctionDec::Translate.
Analyzing function 0x558fd96e0d60
called new level. label: b
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
created new InFrameAccess. sym: y
gonna build formals.
buildFormals called. level->frame: 0x558fd96e3c60
f_accl = 0x558fd96e3c40
formals built.
while #3. name: y. fl, t, formals: 0x558fd96e0df0, 0x558fd96e3a70, 0x558fd96e3cf0
while #3 end. 
Entered OpExp::Translate. OpCode: PLUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze x
gotta varP: 0x558fd96e39a0
gotta acc: 0x558fd96e3960
called findStaticLink 
framePointer register requested
gonna return new framePointer register
called getExp. input framePtr = 0x558fd96e4210
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x558fd96e44b0
with a INFRAME access
Analyzed leftT, which.exp = 0x558fd96e45b0
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze y
gotta varP: 0x558fd96e3d10
gotta acc: 0x558fd96e3cd0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x558fd96e45d0
with a INFRAME access
Analyzed rightT, which.exp = 0x558fd96e4680
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
returnValue register requested
gonna return new returnValue register
Ex's UnEx() called
Nx's UnNx() called
[translate] [letexp] while out, stms going to push_back Nx's UnNx() called
0x558fd96e4790
Nx's UnNx() called
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Entered CallExp::Translate.
found function b
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x558fd96e1240
Entered IntExp::Translate.
Ex's UnEx() called
[translate] [seq] exp.size = 1
LetExp translated bodyT, which.exp = 0x558fd96e4940
Ex's UnEx() called
returnValue register requested
gonna return existed returnValue register
Ex's UnEx() called
Nx's UnNx() called
[translate] [letexp] while out, stms going to push_back Nx's UnNx() called
0x558fd96e49b0
Nx's UnNx() called
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function a
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x558fd96e1440
Entered IntExp::Translate.
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x558fd96e1490
Entered CallExp::Translate.
found function a
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x558fd96e1440
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
[translate] [seq] exp.size = 1
LetExp translated bodyT, which.exp = 0x558fd96e4d60
Ex's UnEx() called
Ex's UnNx() called
[translate] [frag] called add fragment. kind: PROC
 ~~~~ Completed Translation ~~~~
Ex's UnEx() called
gonna print a EseqExp~
My stm = 0x558fd96e49b0, exp = 0x558fd96e4d30
gonna print a MoveStm~
gonna print a TempExp~
gonna print a EseqExp~
My stm = 0x558fd96e4790, exp = 0x558fd96e4910
gonna print a MoveStm~
gonna print a TempExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x558fd96e4460, exp = 0x558fd96e4490
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
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a CallExp~
gonna print a NameExp~
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
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558fd96e4590, 0x558fd96e4660
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558fd96e44b0, 0x558fd96e4540
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x558fd96e43c0, 0x558fd96e4430
[canon] MoveStm::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558fd96e4210, 0x558fd96e4230
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558fd96e45d0, 0x558fd96e4610
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x558fd96e7170
[codegen] fallen into LABEL
I'm trying to find the label L3
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x558fd96e43c0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x558fd96e4280
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x558fd96e4210
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x558fd96e4430
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x558fd96e4410
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x558fd96e4790
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x558fd96e46a0
[codegen] fallen into BINOP(PLUS(e1, e2)
[codegen] entered munchExp. expNode: 0x558fd96e4590
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x558fd96e4490
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x558fd96e4660
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x558fd96e45d0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x558fd96e49b0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x558fd96e4910
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x558fd96e4890
[codegen] fallen into CONST(i)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x558fd96e65c0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x558fd96e4ca0
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x558fd96e4c20
[codegen] fallen into CONST(i)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x558fd96e4a00
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x558fd96e4d30
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x558fd96e65f0
[codegen] fallen into TEMP(t)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x558fd96e71f0
[codegen] fallen into JUMP
gotta jexp = 0x558fd96e71d0
gotta jmpTo = 0x558fd96e7110
escaped from instr = 0x558fd96e8410
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x558fd96e76f0
[codegen] fallen into LABEL
I'm trying to find the label L2
