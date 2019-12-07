Called TranslateProgram(A::Exp* root).
Entered LetExp::Translate.
Entered FunctionDec::Translate.
To-declare function name: g
constructing formal: a, type: int, id: 0x55a215df0104
 param +1
constructing formal: b, type: int, id: 0x55a215df0104
 param +1
===== PRINT BLIST =====
# __STATIC_LINK__
# a
# b
I'm entering the evil part of translate, which didn't give me a good exp 
called new level. label: g
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
created new InFrameAccess. sym: a
created new InFrameAccess. sym: b
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: GT_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55a21765a6a0; parent level: 0x55a217659380
accessList traverse over
I'll go one layer above. 
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym b, a
  compare access sym a, a
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return new framePointer register
successfully build tempExp
going to call getExp with access: 0x55a21765a590
called getExp 
with a INFRAME access
successfully build targetExp 0x55a21765abe0
successfully generated exp 0x55a21765ac00
Analyzed leftT, which.exp = 0x55a21765ac00
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55a21765a6a0; parent level: 0x55a217659380
accessList traverse over
I'll go one layer above. 
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym b, b
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55a21765a5f0
called getExp 
with a INFRAME access
successfully build targetExp 0x55a21765ac90
successfully generated exp 0x55a21765acb0
Analyzed rightT, which.exp = 0x55a21765acb0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x55a21765ad50
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55a21765a6a0; parent level: 0x55a217659380
accessList traverse over
I'll go one layer above. 
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym b, a
  compare access sym a, a
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55a21765a590
called getExp 
with a INFRAME access
successfully build targetExp 0x55a21765adf0
successfully generated exp 0x55a21765ae10
(exists else) translated then, exp = 0x55a21765ae10
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55a21765a6a0; parent level: 0x55a217659380
accessList traverse over
I'll go one layer above. 
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym b, b
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55a21765a5f0
called getExp 
with a INFRAME access
successfully build targetExp 0x55a21765aea0
successfully generated exp 0x55a21765aec0
(exists else) translated else, exp = 0x55a21765aec0
Entered AllocLocal. escape? 1
create newAcc fine
framePointer register requested
gonna return existed framePointer register
called getExp 
with a INFRAME access
Cx's UnCx() called
IfExp: has a return type!
Ex's UnEx() called
Ex's UnEx() called
bodyTranslate success. which .exp = 0x55a21765b300
try pop one out
try pop one out
function return value type: int
head->result: 0x55a217657b50, retType->kind: 2
going to unEx bodyTranslate. Now it is actually0x55a21765b300
Ex's UnEx() called
bodyEx now is 0x55a21765b2d0
returnValue register requested
gonna return new returnValue register
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Add one translation layer
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
Call operation returns an 6
la.exp = 0x55a21765b660
Ex's UnEx() called
LetExp translated bodyT, which.exp = 0x55a21765b680
Ex's UnNx() called
 ~~~~ Completed Translation ~~~~
Ex's UnEx() called
gonna print a EseqExp~
My stm = 0x55a21765b470, exp = 0x55a21765b630
gonna print a ExpStm~
gonna print a ConstExp~
gonna print a CallExp~
gonna print a NameExp~
 ~~~~ Completed Printing ~~~~
well...
checking condition.
rlist = 0x55a21765cd70
(*rlist->head) = 0x55a21765b2d0
[canon] [reoder] else branch
well...
checking condition.
rlist = 0x55a21765cd90
(*rlist->head) = 0x55a21765b030
[canon] [reoder] else branch
well...
checking condition.
rlist = 0x55a21765cdd0
(*rlist->head) = 0x55a21765aff0
[canon] [reoder] else branch
well...
checking condition.
rlist = 0
