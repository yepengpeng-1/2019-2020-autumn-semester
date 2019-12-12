Called TranslateProgram(A::Exp* root).
Entered LetExp::Translate.
[translate] [letexp] while!
Entered FunctionDec::Translate.
Analyzing function 0x557426f58b10
called new level. label: check
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
created new InFrameAccess. sym: num
gonna build formals.
buildFormals called. level->frame: 0x557426f5db80
f_accl = 0x557426f5db60
formals built.
while #3. name: num. fl, t, formals: 0x557426f58bd0, 0x557426f5d990, 0x557426f5dc10
while #3 end. 
Entered LetExp::Translate.
[translate] [letexp] while!
Entered VarDec::Translate. going to declare var: flag
Entered AllocLocal. escape? 1
create newAcc fine
Entered IntExp::Translate.
implicit type: 0x557426a18104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return new framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x557426f5e3e0
[translate] [letexp] while out, stms going to push_back Nx's UnNx() called
0x557426f5e3b0
Nx's UnNx() called
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Entered SeqExp::Translate.
Entered ForExp::Translate.
Entered IntExp::Translate.
loTrans success. loTrans.exp = 0x557426f5e4d0
Entered OpExp::Translate. OpCode: DIVIDE_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze num
gotta varP: 0x557426f5dc30
gotta acc: 0x557426f5dbf0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x557426f5e4f0
with a INFRAME access
Analyzed leftT, which.exp = 0x557426f5e5a0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x557426f5e5e0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
hiTrans success. hiTrans.exp = 0x557426f5e630
Entered AllocLocal. escape? 1
create newAcc fine
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: EQ_OP
Entered OpExp::Translate. OpCode: TIMES_OP
Entered OpExp::Translate. OpCode: DIVIDE_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze num
gotta varP: 0x557426f5dc30
gotta acc: 0x557426f5dbf0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x557426f5e7b0
with a INFRAME access
Analyzed leftT, which.exp = 0x557426f5e860
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x557426f5e700
gotta acc: 0x557426f5e6e0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x557426f5e880
with a INFRAME access
Analyzed rightT, which.exp = 0x557426f5e930
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Analyzed leftT, which.exp = 0x557426f5e980
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x557426f5e700
gotta acc: 0x557426f5e6e0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x557426f5e9a0
with a INFRAME access
Analyzed rightT, which.exp = 0x557426f5ea50
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Analyzed leftT, which.exp = 0x557426f5eaa0
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze num
gotta varP: 0x557426f5dc30
gotta acc: 0x557426f5dbf0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x557426f5eac0
with a INFRAME access
Analyzed rightT, which.exp = 0x557426f5eb70
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x557426f5ec10
this->elsee = empty. 
Entered SeqExp::Translate.
Entered AssignExp::Translate.
Entered SimpleVar::Translate. ** Trying to analyze flag
gotta varP: 0x557426f5dda0
gotta acc: 0x557426f5dd40
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x557426f5ec40
with a INFRAME access
translated varKind. which exp = 0x557426f5ecf0
Entered IntExp::Translate.
translated expT. which exp = 0x557426f5ed30
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
Entered BreakExp::Translate.
[translate] [seq] exp.size = 2
Nx's UnNx() called
Ex's UnEx() called
(no else) translated then, exp = 0x557426f5ede0
Cx's UnCx() called
IfExp: has no return type!
Ex's UnNx() called
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x557426f5eff0
with a INFRAME access
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x557426f5f080
with a INFRAME access
Ex's UnEx() called
Ex's UnEx() called
Nx's UnNx() called
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze flag
gotta varP: 0x557426f5dda0
gotta acc: 0x557426f5dd40
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x557426f5f3c0
with a INFRAME access
[translate] [seq] exp.size = 2
Nx's UnNx() called
Ex's UnEx() called
[translate] [seq] exp.size = 1
LetExp translated bodyT, which.exp = 0x557426f5f3a0
Ex's UnEx() called
returnValue register requested
gonna return new returnValue register
Ex's UnEx() called
Analyzing function 0x557426f59750
called new level. label: try
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
gonna build formals.
buildFormals called. level->frame: 0x557426f5f730
f_accl = 0x557426f5f710
formals built.
while #3 end. 
Entered SeqExp::Translate.
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f59810
Entered IntExp::Translate.
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f59860
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f59810
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f59980
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Ex's UnEx() called
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f59a10
Entered IntExp::Translate.
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f59a60
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f59a10
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f59b50
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Ex's UnEx() called
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f59be0
Entered IntExp::Translate.
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f59c30
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f59be0
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f59d20
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Ex's UnEx() called
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f59db0
Entered IntExp::Translate.
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f59e00
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f59db0
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f59ef0
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Ex's UnEx() called
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f59f80
Entered IntExp::Translate.
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f59fd0
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f59f80
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f5a0c0
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Ex's UnEx() called
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f5a150
Entered IntExp::Translate.
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f5a1a0
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f5a150
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f5a290
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Ex's UnEx() called
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f5a320
Entered IntExp::Translate.
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f5a370
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f5a320
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f5a460
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Ex's UnEx() called
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f5aa00
Entered IntExp::Translate.
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f5aa50
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f5aa00
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f5ab40
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Ex's UnEx() called
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f5abd0
Entered IntExp::Translate.
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f5ac20
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f5abd0
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f5ad10
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Ex's UnEx() called
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f5ada0
Entered IntExp::Translate.
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f5adf0
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f5ada0
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f5aee0
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Ex's UnEx() called
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f5af70
Entered IntExp::Translate.
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f5afc0
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f5af70
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x557426f5b0b0
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Ex's UnEx() called
Ex's UnNx() called
Ex's UnNx() called
Ex's UnNx() called
Ex's UnNx() called
Ex's UnNx() called
Ex's UnNx() called
Ex's UnNx() called
Ex's UnNx() called
Ex's UnNx() called
Ex's UnNx() called
Ex's UnNx() called
Ex's UnNx() called
Ex's UnNx() called
Ex's UnNx() called
Ex's UnNx() called
Ex's UnNx() called
Ex's UnNx() called
Ex's UnNx() called
Ex's UnNx() called
Ex's UnNx() called
Ex's UnNx() called
Ex's UnNx() called
Ex's UnEx() called
Nx's UnNx() called
Ex's UnNx() called
[translate] [letexp] while out, stms going to push_back Nx's UnNx() called
0x557426f63e00
Nx's UnNx() called
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Entered CallExp::Translate.
found function try
Call operation returns an 6
[callexp] start traversing rawExps
[translate] [seq] exp.size = 1
LetExp translated bodyT, which.exp = 0x557426f63ed0
Ex's UnEx() called
Ex's UnNx() called
[translate] [frag] called add fragment. kind: PROC
 ~~~~ Completed Translation ~~~~
Ex's UnEx() called
gonna print a EseqExp~
My stm = 0x557426f63e00, exp = 0x557426f63ea0
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a EseqExp~
My stm = 0x557426f5e3b0, exp = 0x557426f5f4b0
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x557426f5f350, exp = 0x557426f5f450
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
gonna print a SeqStm~
gonna print a CjumpStm~
gonna print a BinopExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
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
gonna print a ConstExp~
gonna print a LabelStm~
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
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ExpStm~
gonna print a EseqExp~
My stm = 0x557426f636e0, exp = 0x557426f63750
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a CallExp~
gonna print a NameExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x557426f63730, exp = 0x557426f637a0
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a CallExp~
gonna print a NameExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x557426f63780, exp = 0x557426f637f0
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a NameExp~
gonna print a EseqExp~
My stm = 0x557426f637d0, exp = 0x557426f63840
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a CallExp~
gonna print a NameExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x557426f63820, exp = 0x557426f63890
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a NameExp~
gonna print a EseqExp~
My stm = 0x557426f63870, exp = 0x557426f638e0
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a CallExp~
gonna print a NameExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x557426f638c0, exp = 0x557426f63930
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a NameExp~
gonna print a EseqExp~
My stm = 0x557426f63910, exp = 0x557426f63980
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a CallExp~
gonna print a NameExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x557426f63960, exp = 0x557426f639d0
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a NameExp~
gonna print a EseqExp~
My stm = 0x557426f639b0, exp = 0x557426f63a20
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a CallExp~
gonna print a NameExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x557426f63a00, exp = 0x557426f63a70
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a NameExp~
gonna print a EseqExp~
My stm = 0x557426f63a50, exp = 0x557426f63ac0
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a CallExp~
gonna print a NameExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x557426f63aa0, exp = 0x557426f63b10
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a NameExp~
gonna print a EseqExp~
My stm = 0x557426f63af0, exp = 0x557426f63b60
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a CallExp~
gonna print a NameExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x557426f63b40, exp = 0x557426f63bb0
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a NameExp~
gonna print a EseqExp~
My stm = 0x557426f63b90, exp = 0x557426f63c00
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a CallExp~
gonna print a NameExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x557426f63be0, exp = 0x557426f63c50
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a NameExp~
gonna print a EseqExp~
My stm = 0x557426f63c30, exp = 0x557426f63ca0
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a CallExp~
gonna print a NameExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x557426f63c80, exp = 0x557426f63cf0
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a NameExp~
gonna print a EseqExp~
My stm = 0x557426f63cd0, exp = 0x557426f63d40
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a CallExp~
gonna print a NameExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x557426f63d20, exp = 0x557426f63d90
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a NameExp~
gonna print a EseqExp~
My stm = 0x557426f63d70, exp = 0x557426f63690
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a CallExp~
gonna print a NameExp~
gonna print a ConstExp~
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
[canon] SeqStm::Canon called. this->left, right = 0x557426f5f590, 0x557426f5f5e0
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x557426f5f3c0, 0x557426f5f400
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x557426f5f110, 0x557426f5f320
[canon] SeqStm::Canon called. this->left, right = 0x557426f5f140, 0x557426f5f2f0
[canon] SeqStm::Canon called. this->left, right = 0x557426f5f170, 0x557426f5f2c0
[canon] SeqStm::Canon called. this->left, right = 0x557426f5efa0, 0x557426f5f290
[canon] SeqStm::Canon called. this->left, right = 0x557426f5f190, 0x557426f5f260
[canon] SeqStm::Canon called. this->left, right = 0x557426f5f210, 0x557426f5f240
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x557426f5eff0, 0x557426f5f010
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x557426f5f080, 0x557426f5f0a0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x557426f5eb90, 0x557426f5ef70
[canon] SeqStm::Canon called. this->left, right = 0x557426f5ee40, 0x557426f5ef40
[canon] SeqStm::Canon called. this->left, right = 0x557426f5ed90, 0x557426f5ef20
[canon] LabelStm::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x557426f5ec40, 0x557426f5ec80
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x557426f5e950, 0x557426f5ea30
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x557426f5e840, 0x557426f5e910
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x557426f5e7b0, 0x557426f5e7f0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x557426f5e880, 0x557426f5e8c0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x557426f5e9a0, 0x557426f5e9e0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x557426f5eac0, 0x557426f5eb00
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x557426f5eff0, 0x557426f5f010
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x557426f5f080, 0x557426f5f0a0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x557426f5e580, 0x557426f5e5c0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x557426f5e4f0, 0x557426f5e530
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x557426f5e320, 0x557426f5e340
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f6aa10
[codegen] fallen into LABEL
I'm trying to find the label L31
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f5e3b0
[codegen] fallen into MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)
[codegen] entered munchExp. expNode: 0x557426f5e320
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x557426f5dd60
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f5f110
[codegen] fallen into MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)
[codegen] entered munchExp. expNode: 0x557426f5f080
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x557426f5e600
[codegen] entered munchExp. expNode: 0x557426f5e580
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x557426f5e4f0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x557426f5e5c0
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f5f140
[codegen] fallen into MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)
[codegen] entered munchExp. expNode: 0x557426f5eff0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x557426f5e4b0
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f5f170
[codegen] fallen into LABEL
I'm trying to find the label L3
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f5eb90
[codegen] fallen into CJUMP
[codegen] entered munchExp. expNode: 0x557426f5ea70
[codegen] entered munchExp. expNode: 0x557426f5e950
[codegen] entered munchExp. expNode: 0x557426f5e840
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x557426f5e7b0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x557426f5e910
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x557426f5e880
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x557426f5ea30
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x557426f5e9a0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x557426f5eb50
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x557426f5eac0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f5ef20
[codegen] fallen into LABEL
I'm trying to find the label L6
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f5f190
[codegen] fallen into CJUMP
[codegen] entered munchExp. expNode: 0x557426f5f060
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x557426f5eff0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x557426f5f0f0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x557426f5f080
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f5f240
[codegen] fallen into LABEL
I'm trying to find the label L2
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f5f590
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x557426f5f450
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x557426f5f3c0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f636e0
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x557426f5fa90
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f687d0
[codegen] fallen into TEMP(t)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f687a0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x557426f5fa00
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f5f980
[codegen] fallen into CONST(i)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f63730
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x557426f5fa90
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f687d0
[codegen] fallen into TEMP(t)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f63780
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x557426f5fd10
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f5fc90
[codegen] fallen into NAME
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f682f0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x557426f5ffc0
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f5ff40
[codegen] fallen into CONST(i)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f637d0
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x557426f60050
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f68320
[codegen] fallen into TEMP(t)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f63820
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x557426f602c0
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f60240
[codegen] fallen into NAME
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f67e40
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x557426f60570
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f604f0
[codegen] fallen into CONST(i)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f63870
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x557426f60600
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f67e70
[codegen] fallen into TEMP(t)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f638c0
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x557426f60880
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f60800
[codegen] fallen into NAME
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f67990
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x557426f60b30
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f60ab0
[codegen] fallen into CONST(i)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f63910
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x557426f60bc0
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f679c0
[codegen] fallen into TEMP(t)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f63960
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x557426f60e20
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f60da0
[codegen] fallen into NAME
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f674e0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x557426f610d0
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f61050
[codegen] fallen into CONST(i)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f639b0
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x557426f61160
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f67510
[codegen] fallen into TEMP(t)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f63a00
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x557426f613c0
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f61340
[codegen] fallen into NAME
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f67030
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x557426f61670
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f615f0
[codegen] fallen into CONST(i)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f63a50
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x557426f61700
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f67060
[codegen] fallen into TEMP(t)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f63aa0
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x557426f61960
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f618e0
[codegen] fallen into NAME
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f66b80
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x557426f61c10
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f61b90
[codegen] fallen into CONST(i)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f63af0
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x557426f61ca0
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f66bb0
[codegen] fallen into TEMP(t)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f63b40
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x557426f61f00
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f61e80
[codegen] fallen into NAME
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f666d0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x557426f621b0
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f62130
[codegen] fallen into CONST(i)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f63b90
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x557426f62240
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f66700
[codegen] fallen into TEMP(t)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f63be0
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x557426f624a0
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f62420
[codegen] fallen into NAME
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f66220
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x557426f62750
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f626d0
[codegen] fallen into CONST(i)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f63c30
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x557426f627e0
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f66250
[codegen] fallen into TEMP(t)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f63c80
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x557426f62b50
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f62ad0
[codegen] fallen into NAME
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f65d70
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x557426f62e00
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f62d80
[codegen] fallen into CONST(i)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f63cd0
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x557426f62e90
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f65da0
[codegen] fallen into TEMP(t)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f63d20
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x557426f630f0
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f63070
[codegen] fallen into NAME
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f658f0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x557426f633a0
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f63320
[codegen] fallen into CONST(i)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f63d70
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x557426f63430
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f65920
[codegen] fallen into TEMP(t)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f5f5e0
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x557426f63690
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x557426f63610
[codegen] fallen into NAME
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f63de0
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x557426f63ea0
[codegen] fallen into CALL
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f6ac20
[codegen] fallen into JUMP
gotta jexp = 0x557426f6ac00
gotta jmpTo = 0x557426f6a9b0
escaped from instr = 0x557426f6fde0
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f5ee40
[codegen] fallen into LABEL
I'm trying to find the label L5
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f5ed90
[codegen] fallen into MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)
[codegen] entered munchExp. expNode: 0x557426f5ec40
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x557426f5ed10
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f6ab20
[codegen] fallen into JUMP
gotta jexp = 0x557426f6ab00
gotta jmpTo = 0x557426f5eec0
escaped from instr = 0x557426f700c0
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f6aba0
[codegen] fallen into LABEL
I'm trying to find the label L32
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f5f210
[codegen] fallen into JUMP
gotta jexp = 0x557426f5f1f0
gotta jmpTo = 0x557426f5e450
escaped from instr = 0x557426f701b0
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x557426f6b3a0
[codegen] fallen into LABEL
I'm trying to find the label L30
