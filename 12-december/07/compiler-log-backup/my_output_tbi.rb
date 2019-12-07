Called TranslateProgram(A::Exp* root).
Entered LetExp::Translate.
Entered VarDec::Translate. going to declare var: N
Entered IntExp::Translate.
implicit type: 0x562dd209a104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return new framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x562dd2d45120
Entered FunctionDec::Translate.
To-declare function name: printb
===== PRINT BLIST =====
# __STATIC_LINK__
I'm entering the evil part of translate, which didn't give me a good exp 
called new level. label: printb
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
Entered SeqExp::Translate.
Add one translation layer
Entered ForExp::Translate.
Entered IntExp::Translate.
loTrans success. loTrans.exp = 0x562dd2d45370
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x562dd2d452c0; parent level: 0x562dd2d43af0
accessList traverse over
I'll go one layer above. 
  compare access sym N, N
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x562dd2d44b30
called getExp 
with a INFRAME access
successfully build targetExp 0x562dd2d45400
successfully generated exp 0x562dd2d45420
Analyzed leftT, which.exp = 0x562dd2d45420
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x562dd2d45460
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
hiTrans success. hiTrans.exp = 0x562dd2d454b0
Entered AllocLocal. escape? 1
create newAcc fine
Entered AllocLocal. escape? 1
create newAcc fine
called addLoop. 
Entered SeqExp::Translate.
Add one translation layer
Entered ForExp::Translate.
Entered IntExp::Translate.
loTrans success. loTrans.exp = 0x562dd2d45850
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x562dd2d452c0; parent level: 0x562dd2d43af0
  compare access sym __l__, N
  compare access sym i, N
accessList traverse over
I'll go one layer above. 
  compare access sym N, N
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x562dd2d44b30
called getExp 
with a INFRAME access
successfully build targetExp 0x562dd2d458e0
successfully generated exp 0x562dd2d45900
Analyzed leftT, which.exp = 0x562dd2d45900
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x562dd2d45940
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
hiTrans success. hiTrans.exp = 0x562dd2d45990
Entered AllocLocal. escape? 1
create newAcc fine
Entered AllocLocal. escape? 1
create newAcc fine
called addLoop. 
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: GT_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x562dd2d452c0; parent level: 0x562dd2d43af0
  compare access sym __l__, i
  compare access sym j, i
  compare access sym __l__, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x562dd2d45560
called getExp 
with a INFRAME access
successfully build targetExp 0x562dd2d45cf0
successfully generated exp 0x562dd2d45d10
Analyzed leftT, which.exp = 0x562dd2d45d10
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x562dd2d452c0; parent level: 0x562dd2d43af0
  compare access sym __l__, j
  compare access sym j, j
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x562dd2d45a40
called getExp 
with a INFRAME access
successfully build targetExp 0x562dd2d45da0
successfully generated exp 0x562dd2d45dc0
Analyzed rightT, which.exp = 0x562dd2d45dc0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x562dd2d45e60
Entered StringExp::Translate.
(exists else) translated then, exp = 0x562dd2d45f40
Entered StringExp::Translate.
(exists else) translated else, exp = 0x562dd2d46010
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
Call operation returns an 6
called popLoop. 
bodyTrans success. bodyTrans.exp = 0x562dd2d464c0
framePointer register requested
gonna return existed framePointer register
called getExp 
with a INFRAME access
framePointer register requested
gonna return existed framePointer register
called getExp 
with a INFRAME access
Ex's UnEx() called
Ex's UnEx() called
Ex's UnNx() called
la.exp = 0x562dd2d46a00
Nx's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x562dd2d46bc0
Ex's UnEx() called
called popLoop. 
bodyTrans success. bodyTrans.exp = 0x562dd2d46c30
framePointer register requested
gonna return existed framePointer register
called getExp 
with a INFRAME access
framePointer register requested
gonna return existed framePointer register
called getExp 
with a INFRAME access
Ex's UnEx() called
Ex's UnEx() called
Ex's UnNx() called
la.exp = 0x562dd2d47170
Nx's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x562dd2d47330
Ex's UnEx() called
bodyTranslate success. which .exp = 0x562dd2d473a0
function return value type: NULL
head->result: 0, retType->kind: 6
going to unEx bodyTranslate. Now it is actually0x562dd2d473a0
Ex's UnEx() called
bodyEx now is 0x562dd2d45320
returnValue register requested
gonna return new returnValue register
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Add one translation layer
Entered CallExp::Translate.
found function printb
Call operation returns an 6
la.exp = 0x562dd2d475e0
Ex's UnEx() called
LetExp translated bodyT, which.exp = 0x562dd2d47600
Ex's UnNx() called
 ~~~~ Completed Translation ~~~~
Ex's UnEx() called
gonna print a EseqExp~
My stm = 0x562dd2d47510, exp = 0x562dd2d475b0
gonna print a ExpStm~
gonna print a ConstExp~
gonna print a CallExp~
gonna print a NameExp~
 ~~~~ Completed Printing ~~~~
well...
checking condition.
rlist = 0x562dd2d48cf0
(*rlist->head) = 0x562dd2d45320
[canon] [reoder] else branch
well...
checking condition.
rlist = 0x562dd2d48d10
(*rlist->head) = 0x562dd2d472e0
[canon] [reoder] else branch
well...
checking condition.
rlist = 0
