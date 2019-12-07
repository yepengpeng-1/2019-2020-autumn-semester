Called TranslateProgram(A::Exp* root).
Entered LetExp::Translate.
Entered FunctionDec::Translate.
To-declare function name: check
constructing formal: num, type: int, id: 0x55ca0fdae104
 param +1
===== PRINT BLIST =====
# __STATIC_LINK__
# num
I'm entering the evil part of translate, which didn't give me a good exp 
called new level. label: check
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
created new InFrameAccess. sym: num
Entered LetExp::Translate.
Entered VarDec::Translate. going to declare var: flag
Entered IntExp::Translate.
implicit type: 0x55ca0fdae104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return new framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x55ca106c82a0
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Add one translation layer
Entered SeqExp::Translate.
Add one translation layer
Entered ForExp::Translate.
Entered IntExp::Translate.
loTrans success. loTrans.exp = 0x55ca106c83c0
Entered OpExp::Translate. OpCode: DIVIDE_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55ca106c7c00; parent level: 0x55ca106c69c0
  compare access sym flag, num
accessList traverse over
I'll go one layer above. 
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym num, num
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55ca106c7b50
called getExp 
with a INFRAME access
successfully build targetExp 0x55ca106c8450
successfully generated exp 0x55ca106c8470
Analyzed leftT, which.exp = 0x55ca106c8470
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55ca106c84b0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
hiTrans success. hiTrans.exp = 0x55ca106c8500
Entered AllocLocal. escape? 1
create newAcc fine
Entered AllocLocal. escape? 1
create newAcc fine
called addLoop. 
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: EQ_OP
Entered OpExp::Translate. OpCode: TIMES_OP
Entered OpExp::Translate. OpCode: DIVIDE_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55ca106c7c00; parent level: 0x55ca106c69c0
  compare access sym __l__, num
  compare access sym i, num
  compare access sym flag, num
accessList traverse over
I'll go one layer above. 
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym num, num
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55ca106c7b50
called getExp 
with a INFRAME access
successfully build targetExp 0x55ca106c8880
successfully generated exp 0x55ca106c88a0
Analyzed leftT, which.exp = 0x55ca106c88a0
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55ca106c7c00; parent level: 0x55ca106c69c0
  compare access sym __l__, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55ca106c85b0
called getExp 
with a INFRAME access
successfully build targetExp 0x55ca106c8930
successfully generated exp 0x55ca106c8950
Analyzed rightT, which.exp = 0x55ca106c8950
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Analyzed leftT, which.exp = 0x55ca106c89a0
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55ca106c7c00; parent level: 0x55ca106c69c0
  compare access sym __l__, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55ca106c85b0
called getExp 
with a INFRAME access
successfully build targetExp 0x55ca106c8a30
successfully generated exp 0x55ca106c8a50
Analyzed rightT, which.exp = 0x55ca106c8a50
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Analyzed leftT, which.exp = 0x55ca106c8aa0
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55ca106c7c00; parent level: 0x55ca106c69c0
  compare access sym __l__, num
  compare access sym i, num
  compare access sym flag, num
accessList traverse over
I'll go one layer above. 
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym num, num
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55ca106c7b50
called getExp 
with a INFRAME access
successfully build targetExp 0x55ca106c8b30
successfully generated exp 0x55ca106c8b50
Analyzed rightT, which.exp = 0x55ca106c8b50
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x55ca106c8bf0
Entered SeqExp::Translate.
Add one translation layer
Entered AssignExp::Translate.
Entered SimpleVar::Translate. this level: 0x55ca106c7c00; parent level: 0x55ca106c69c0
  compare access sym __l__, flag
  compare access sym i, flag
  compare access sym flag, flag
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55ca106c7cb0
called getExp 
with a INFRAME access
successfully build targetExp 0x55ca106c8d00
successfully generated exp 0x55ca106c8d20
translated varKind. which exp = 0x55ca106c8d20
Entered IntExp::Translate.
translated expT. which exp = 0x55ca106c8d60
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x55ca106c8df0
Nx's UnEx() called
Add one translation layer
Entered BreakExp::Translate.
called getLastLoop. 
called getLastLoop. 
la.exp = 0x55ca106c8ed0
Nx's UnEx() called
(no else) translated then, exp = 0x55ca106c8f90
Cx's UnCx() called
IfExp: has no return type!
Ex's UnNx() called
called popLoop. 
bodyTrans success. bodyTrans.exp = 0x55ca106c9130
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
Nx's UnNx() called
la.exp = 0x55ca106c9650
Nx's UnEx() called
Add one translation layer
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55ca106c7c00; parent level: 0x55ca106c69c0
  compare access sym __l__, flag
  compare access sym i, flag
  compare access sym flag, flag
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55ca106c7cb0
called getExp 
with a INFRAME access
successfully build targetExp 0x55ca106c9730
successfully generated exp 0x55ca106c9750
la.exp = 0x55ca106c9750
Ex's UnEx() called
la.exp = 0x55ca106c97c0
Ex's UnEx() called
LetExp translated bodyT, which.exp = 0x55ca106c97e0
bodyTranslate success. which .exp = 0x55ca106c97e0
try pop one out
function return value type: int
head->result: 0x55ca106c2b70, retType->kind: 2
going to unEx bodyTranslate. Now it is actually0x55ca106c97e0
Ex's UnEx() called
bodyEx now is 0x55ca106c8300
returnValue register requested
gonna return new returnValue register
To-declare function name: try
===== PRINT BLIST =====
# __STATIC_LINK__
I'm entering the evil part of translate, which didn't give me a good exp 
called new level. label: try
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
Entered SeqExp::Translate.
Add one translation layer
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
Call operation returns an 6
la.exp = 0x55ca106c9c80
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x55ca106c9df0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
Call operation returns an 6
la.exp = 0x55ca106c9fc0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x55ca106ca180
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
Call operation returns an 6
la.exp = 0x55ca106ca350
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x55ca106ca510
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
Call operation returns an 6
la.exp = 0x55ca106ca6e0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x55ca106ca8a0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
Call operation returns an 6
la.exp = 0x55ca106caa70
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x55ca106cac30
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
Call operation returns an 6
la.exp = 0x55ca106cae00
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x55ca106cafc0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
Call operation returns an 6
la.exp = 0x55ca106cb190
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x55ca106cb350
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
Call operation returns an 6
la.exp = 0x55ca106cb520
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x55ca106cb6e0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
Call operation returns an 6
la.exp = 0x55ca106cb8b0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x55ca106cba70
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
Call operation returns an 6
la.exp = 0x55ca106cbc40
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x55ca106cbe00
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
Call operation returns an 6
la.exp = 0x55ca106cbfd0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x55ca106cc190
Ex's UnEx() called
bodyTranslate success. which .exp = 0x55ca106cc200
function return value type: NULL
head->result: 0, retType->kind: 6
going to unEx bodyTranslate. Now it is actually0x55ca106cc200
Ex's UnEx() called
bodyEx now is 0x55ca106c9af0
returnValue register requested
gonna return existed returnValue register
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Add one translation layer
Entered CallExp::Translate.
found function try
Call operation returns an 6
la.exp = 0x55ca106cc3c0
Ex's UnEx() called
LetExp translated bodyT, which.exp = 0x55ca106cc3e0
Ex's UnNx() called
 ~~~~ Completed Translation ~~~~
Ex's UnEx() called
gonna print a EseqExp~
My stm = 0x55ca106cc2f0, exp = 0x55ca106cc390
gonna print a ExpStm~
gonna print a ConstExp~
gonna print a CallExp~
gonna print a NameExp~
 ~~~~ Completed Printing ~~~~
well...
checking condition.
rlist = 0x55ca106cdad0
(*rlist->head) = 0x55ca106c8300
[canon] [reoder] else branch
well...
checking condition.
rlist = 0x55ca106cdaf0
(*rlist->head) = 0x55ca106c9700
[canon] [reoder] else branch
well...
checking condition.
rlist = 0x55ca106cdb30
(*rlist->head) = 0x55ca106c96c0
[canon] [reoder] else branch
well...
checking condition.
rlist = 0
