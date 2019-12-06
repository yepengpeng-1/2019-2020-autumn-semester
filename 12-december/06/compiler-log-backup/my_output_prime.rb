Called TranslateProgram(A::Exp* root).
Entered LetExp::Translate.
Entered FunctionDec::Translate.
To-declare function name: check
constructing formal: num, type: int, id: 0x562ba82ca104
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
implicit type: 0x562ba82ca104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return new framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x562ba89262a0
Entered SeqExp::Translate.
Add one translation layer
Entered SeqExp::Translate.
Add one translation layer
Entered ForExp::Translate.
Entered IntExp::Translate.
loTrans success. loTrans.exp = 0x562ba8926340
Entered OpExp::Translate. OpCode: DIVIDE_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x562ba8925c00; parent level: 0x562ba89249c0
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
going to call getExp with access: 0x562ba8925b50
called getExp 
with a INFRAME access
successfully build targetExp 0x562ba89263d0
successfully generated exp 0x562ba89263f0
Analyzed leftT, which.exp = 0x562ba89263f0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x562ba8926430
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
hiTrans success. hiTrans.exp = 0x562ba8926480
Entered AllocLocal. escape? 1
create newAcc fine
Entered AllocLocal. escape? 1
create newAcc fine
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: EQ_OP
Entered OpExp::Translate. OpCode: TIMES_OP
Entered OpExp::Translate. OpCode: DIVIDE_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x562ba8925c00; parent level: 0x562ba89249c0
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
going to call getExp with access: 0x562ba8925b50
called getExp 
with a INFRAME access
successfully build targetExp 0x562ba89267e0
successfully generated exp 0x562ba8926800
Analyzed leftT, which.exp = 0x562ba8926800
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x562ba8925c00; parent level: 0x562ba89249c0
  compare access sym __l__, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x562ba8926530
called getExp 
with a INFRAME access
successfully build targetExp 0x562ba8926890
successfully generated exp 0x562ba89268b0
Analyzed rightT, which.exp = 0x562ba89268b0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Analyzed leftT, which.exp = 0x562ba8926900
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x562ba8925c00; parent level: 0x562ba89249c0
  compare access sym __l__, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x562ba8926530
called getExp 
with a INFRAME access
successfully build targetExp 0x562ba8926990
successfully generated exp 0x562ba89269b0
Analyzed rightT, which.exp = 0x562ba89269b0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Analyzed leftT, which.exp = 0x562ba8926a00
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x562ba8925c00; parent level: 0x562ba89249c0
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
going to call getExp with access: 0x562ba8925b50
called getExp 
with a INFRAME access
successfully build targetExp 0x562ba8926a90
successfully generated exp 0x562ba8926ab0
Analyzed rightT, which.exp = 0x562ba8926ab0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x562ba8926b50
Entered SeqExp::Translate.
Add one translation layer
Entered AssignExp::Translate.
Entered SimpleVar::Translate. this level: 0x562ba8925c00; parent level: 0x562ba89249c0
  compare access sym __l__, flag
  compare access sym i, flag
  compare access sym flag, flag
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x562ba8925cb0
called getExp 
with a INFRAME access
successfully build targetExp 0x562ba8926c20
successfully generated exp 0x562ba8926c40
translated varKind. which exp = 0x562ba8926c40
Entered IntExp::Translate.
translated expT. which exp = 0x562ba8926c80
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x562ba8926d10
Nx's UnEx() called
Add one translation layer
Entered BreakExp::Translate.
la.exp = 0x562ba8926df0
Nx's UnEx() called
(no else) translated then, exp = 0x562ba8926eb0
Cx's UnCx() called
Ex's UnNx() called
bodyTrans success. bodyTrans.exp = 0x562ba8927050
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
la.exp = 0x562ba8927570
Nx's UnEx() called
Add one translation layer
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x562ba8925c00; parent level: 0x562ba89249c0
  compare access sym __l__, flag
  compare access sym i, flag
  compare access sym flag, flag
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x562ba8925cb0
called getExp 
with a INFRAME access
successfully build targetExp 0x562ba8927650
successfully generated exp 0x562ba8927670
la.exp = 0x562ba8927670
Ex's UnEx() called
la.exp = 0x562ba89276e0
Ex's UnEx() called
bodyTranslate success. which .exp = 0x562ba8927700
try pop one out
function return value type: int
head->result: 0x562ba8920b70, retType->kind: 2
going to unEx bodyTranslate. Now it is actually0x562ba8927700
Ex's UnEx() called
bodyEx now is 0x562ba89262c0
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
la.exp = 0x562ba8927b60
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x562ba8927cd0
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
la.exp = 0x562ba8927ea0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x562ba8928060
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
la.exp = 0x562ba8928230
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x562ba89283f0
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
la.exp = 0x562ba89285c0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x562ba8928780
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
la.exp = 0x562ba8928950
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x562ba8928b10
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
la.exp = 0x562ba8928ce0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x562ba8928ea0
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
la.exp = 0x562ba8929070
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x562ba8929230
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
la.exp = 0x562ba8929400
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x562ba89295c0
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
la.exp = 0x562ba8929790
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x562ba8929950
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
la.exp = 0x562ba8929b20
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x562ba8929ce0
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
la.exp = 0x562ba8929eb0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x562ba892a070
Ex's UnEx() called
bodyTranslate success. which .exp = 0x562ba892a0e0
function return value type: NULL
head->result: 0, retType->kind: 6
going to unEx bodyTranslate. Now it is actually0x562ba892a0e0
Ex's UnEx() called
bodyEx now is 0x562ba89279d0
returnValue register requested
gonna return existed returnValue register
Entered SeqExp::Translate.
Add one translation layer
Entered CallExp::Translate.
found function try
Call operation returns an 6
la.exp = 0x562ba892a260
Ex's UnEx() called
Ex's UnNx() called
 ~~~~ Completed Translation ~~~~
