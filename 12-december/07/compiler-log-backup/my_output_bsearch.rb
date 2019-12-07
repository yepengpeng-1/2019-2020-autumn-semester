Called TranslateProgram(A::Exp* root).
Entered LetExp::Translate.
Entered VarDec::Translate. going to declare var: N
Entered IntExp::Translate.
implicit type: 0x5581547bf104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return new framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x55815586d150
Entered TypeDec::Translate.
queue.size() <= 1
Entered ArrayTy::Translate.
declared type intArray, id: 0x55815586d1f0
Entered VarDec::Translate. going to declare var: list
Entered ArrayExp::Translate.
Entered IntExp::Translate.
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55815586bb80; parent level: 0
  compare access sym N, N
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55815586cb60
called getExp 
with a INFRAME access
successfully build targetExp 0x55815586d2e0
successfully generated exp 0x55815586d300
Ex's UnEx() called
Ex's UnEx() called
implicit type: 0x55815586d1f0
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return existed framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x55815586d590
Entered FunctionDec::Translate.
To-declare function name: nop
===== PRINT BLIST =====
# __STATIC_LINK__
I'm entering the evil part of translate, which didn't give me a good exp 
called new level. label: nop
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
bodyTranslate success. which .exp = 0x55815586d8b0
function return value type: NULL
head->result: 0, retType->kind: 6
going to unEx bodyTranslate. Now it is actually0x55815586d8b0
Ex's UnEx() called
bodyEx now is 0x55815586d880
returnValue register requested
gonna return new returnValue register
To-declare function name: init
===== PRINT BLIST =====
# __STATIC_LINK__
I'm entering the evil part of translate, which didn't give me a good exp 
called new level. label: init
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
Entered ForExp::Translate.
Entered IntExp::Translate.
loTrans success. loTrans.exp = 0x55815586dc00
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55815586dbc0; parent level: 0x55815586bb80
accessList traverse over
I'll go one layer above. 
  compare access sym list, N
  compare access sym N, N
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55815586cb60
called getExp 
with a INFRAME access
successfully build targetExp 0x55815586dc90
successfully generated exp 0x55815586dcb0
Analyzed leftT, which.exp = 0x55815586dcb0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55815586dcf0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
hiTrans success. hiTrans.exp = 0x55815586dd40
Entered AllocLocal. escape? 1
create newAcc fine
Entered AllocLocal. escape? 1
create newAcc fine
called addLoop. 
Entered SeqExp::Translate.
Add one translation layer
Entered AssignExp::Translate.
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x55815586dbc0; parent level: 0x55815586bb80
  compare access sym __l__, list
  compare access sym i, list
accessList traverse over
I'll go one layer above. 
  compare access sym list, list
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55815586d450
called getExp 
with a INFRAME access
successfully build targetExp 0x55815586e130
successfully generated exp 0x55815586e150
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55815586dbc0; parent level: 0x55815586bb80
  compare access sym __l__, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55815586ddf0
called getExp 
with a INFRAME access
successfully build targetExp 0x55815586e1e0
successfully generated exp 0x55815586e200
Translated indexT, which .exp = 0x55815586e200
Ex's UnEx() called
Ex's UnEx() called
translated varKind. which exp = 0x55815586e2c0
Entered OpExp::Translate. OpCode: PLUS_OP
Entered OpExp::Translate. OpCode: TIMES_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55815586dbc0; parent level: 0x55815586bb80
  compare access sym __l__, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55815586ddf0
called getExp 
with a INFRAME access
successfully build targetExp 0x55815586e350
successfully generated exp 0x55815586e370
Analyzed leftT, which.exp = 0x55815586e370
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55815586e3b0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Analyzed leftT, which.exp = 0x55815586e400
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55815586e440
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated expT. which exp = 0x55815586e490
Entered OpExp::Translate. OpCode: PLUS_OP
Entered OpExp::Translate. OpCode: TIMES_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55815586dbc0; parent level: 0x55815586bb80
  compare access sym __l__, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55815586ddf0
called getExp 
with a INFRAME access
successfully build targetExp 0x55815586e520
successfully generated exp 0x55815586e540
Analyzed leftT, which.exp = 0x55815586e540
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55815586e580
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Analyzed leftT, which.exp = 0x55815586e5d0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55815586e610
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x55815586e6b0
Nx's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function nop
Call operation returns an 6
la.exp = 0x55815586e7a0
Ex's UnEx() called
called popLoop. 
bodyTrans success. bodyTrans.exp = 0x55815586e810
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
bodyTranslate success. which .exp = 0x55815586ed50
function return value type: NULL
head->result: 0, retType->kind: 6
going to unEx bodyTranslate. Now it is actually0x55815586ed50
Nx's UnEx() called
bodyEx now is 0x55815586ed90
returnValue register requested
gonna return existed returnValue register
To-declare function name: bsearch
constructing formal: left, type: int, id: 0x5581547bf104
 param +1
constructing formal: right, type: int, id: 0x5581547bf104
 param +1
constructing formal: c, type: int, id: 0x5581547bf104
 param +1
===== PRINT BLIST =====
# __STATIC_LINK__
# left
# right
# c
I'm entering the evil part of translate, which didn't give me a good exp 
called new level. label: bsearch
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
created new InFrameAccess. sym: left
created new InFrameAccess. sym: right
created new InFrameAccess. sym: c
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: EQ_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55815586f360; parent level: 0x55815586bb80
accessList traverse over
I'll go one layer above. 
  compare access sym list, left
  compare access sym N, left
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym c, left
  compare access sym right, left
  compare access sym left, left
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55815586f1f0
called getExp 
with a INFRAME access
successfully build targetExp 0x55815586f3f0
successfully generated exp 0x55815586f410
Analyzed leftT, which.exp = 0x55815586f410
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55815586f360; parent level: 0x55815586bb80
accessList traverse over
I'll go one layer above. 
  compare access sym list, right
  compare access sym N, right
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym c, right
  compare access sym right, right
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55815586f250
called getExp 
with a INFRAME access
successfully build targetExp 0x55815586f4a0
successfully generated exp 0x55815586f4c0
Analyzed rightT, which.exp = 0x55815586f4c0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x55815586f560
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55815586f360; parent level: 0x55815586bb80
accessList traverse over
I'll go one layer above. 
  compare access sym list, left
  compare access sym N, left
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym c, left
  compare access sym right, left
  compare access sym left, left
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55815586f1f0
called getExp 
with a INFRAME access
successfully build targetExp 0x55815586f600
successfully generated exp 0x55815586f620
(exists else) translated then, exp = 0x55815586f620
Entered LetExp::Translate.
Entered VarDec::Translate. going to declare var: mid
Entered OpExp::Translate. OpCode: DIVIDE_OP
Entered OpExp::Translate. OpCode: PLUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55815586f360; parent level: 0x55815586bb80
accessList traverse over
I'll go one layer above. 
  compare access sym list, left
  compare access sym N, left
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym c, left
  compare access sym right, left
  compare access sym left, left
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55815586f1f0
called getExp 
with a INFRAME access
successfully build targetExp 0x55815586f6b0
successfully generated exp 0x55815586f6d0
Analyzed leftT, which.exp = 0x55815586f6d0
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55815586f360; parent level: 0x55815586bb80
accessList traverse over
I'll go one layer above. 
  compare access sym list, right
  compare access sym N, right
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym c, right
  compare access sym right, right
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55815586f250
called getExp 
with a INFRAME access
successfully build targetExp 0x55815586f760
successfully generated exp 0x55815586f780
Analyzed rightT, which.exp = 0x55815586f780
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Analyzed leftT, which.exp = 0x55815586f7d0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55815586f810
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
implicit type: 0x5581547bf104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return existed framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x55815586fa10
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Add one translation layer
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: LT_OP
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x55815586f360; parent level: 0x55815586bb80
  compare access sym mid, list
accessList traverse over
I'll go one layer above. 
  compare access sym list, list
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55815586d450
called getExp 
with a INFRAME access
successfully build targetExp 0x55815586fb10
successfully generated exp 0x55815586fb30
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55815586f360; parent level: 0x55815586bb80
  compare access sym mid, mid
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55815586f8d0
called getExp 
with a INFRAME access
successfully build targetExp 0x55815586fbc0
successfully generated exp 0x55815586fbe0
Translated indexT, which .exp = 0x55815586fbe0
Ex's UnEx() called
Ex's UnEx() called
Analyzed leftT, which.exp = 0x55815586fca0
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55815586f360; parent level: 0x55815586bb80
  compare access sym mid, c
accessList traverse over
I'll go one layer above. 
  compare access sym list, c
  compare access sym N, c
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym c, c
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55815586f2b0
called getExp 
with a INFRAME access
successfully build targetExp 0x55815586fd30
successfully generated exp 0x55815586fd50
Analyzed rightT, which.exp = 0x55815586fd50
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x55815586fdf0
Entered CallExp::Translate.
found function bsearch
comparing arg->head and formals->head
Entered OpExp::Translate. OpCode: PLUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55815586f360; parent level: 0x55815586bb80
  compare access sym mid, mid
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55815586f8d0
called getExp 
with a INFRAME access
successfully build targetExp 0x55815586fec0
successfully generated exp 0x55815586fee0
Analyzed leftT, which.exp = 0x55815586fee0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55815586ff20
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55815586f360; parent level: 0x55815586bb80
  compare access sym mid, right
accessList traverse over
I'll go one layer above. 
  compare access sym list, right
  compare access sym N, right
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym c, right
  compare access sym right, right
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55815586f250
called getExp 
with a INFRAME access
successfully build targetExp 0x558155870000
successfully generated exp 0x558155870020
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55815586f360; parent level: 0x55815586bb80
  compare access sym mid, c
accessList traverse over
I'll go one layer above. 
  compare access sym list, c
  compare access sym N, c
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym c, c
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55815586f2b0
called getExp 
with a INFRAME access
successfully build targetExp 0x5581558700b0
successfully generated exp 0x5581558700d0
Call operation returns an 2
(exists else) translated then, exp = 0x558155870140
Entered CallExp::Translate.
found function bsearch
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55815586f360; parent level: 0x55815586bb80
  compare access sym mid, left
accessList traverse over
I'll go one layer above. 
  compare access sym list, left
  compare access sym N, left
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym c, left
  compare access sym right, left
  compare access sym left, left
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55815586f1f0
called getExp 
with a INFRAME access
successfully build targetExp 0x558155870200
successfully generated exp 0x558155870220
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55815586f360; parent level: 0x55815586bb80
  compare access sym mid, mid
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55815586f8d0
called getExp 
with a INFRAME access
successfully build targetExp 0x5581558702b0
successfully generated exp 0x5581558702d0
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55815586f360; parent level: 0x55815586bb80
  compare access sym mid, c
accessList traverse over
I'll go one layer above. 
  compare access sym list, c
  compare access sym N, c
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym c, c
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55815586f2b0
called getExp 
with a INFRAME access
successfully build targetExp 0x558155870360
successfully generated exp 0x558155870380
Call operation returns an 2
(exists else) translated else, exp = 0x5581558703f0
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
la.exp = 0x558155870830
Ex's UnEx() called
LetExp translated bodyT, which.exp = 0x558155870850
(exists else) translated else, exp = 0x558155870850
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
bodyTranslate success. which .exp = 0x558155870c90
try pop one out
try pop one out
try pop one out
function return value type: int
head->result: 0x558155868c10, retType->kind: 2
going to unEx bodyTranslate. Now it is actually0x558155870c90
Ex's UnEx() called
bodyEx now is 0x558155870c60
returnValue register requested
gonna return existed returnValue register
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
found function init
Call operation returns an 6
la.exp = 0x558155870fd0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function bsearch
comparing arg->head and formals->head
Entered IntExp::Translate.
comparing arg->head and formals->head
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558155870ec0; parent level: 0x55815586bb80
accessList traverse over
I'll go one layer above. 
  compare access sym list, N
  compare access sym N, N
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55815586cb60
called getExp 
with a INFRAME access
successfully build targetExp 0x558155871100
successfully generated exp 0x558155871120
Analyzed leftT, which.exp = 0x558155871120
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x558155871160
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
Call operation returns an 6
la.exp = 0x5581558712d0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x558155871490
Ex's UnEx() called
bodyTranslate success. which .exp = 0x558155871500
function return value type: NULL
head->result: 0, retType->kind: 6
going to unEx bodyTranslate. Now it is actually0x558155871500
Ex's UnEx() called
bodyEx now is 0x558155870f20
returnValue register requested
gonna return existed returnValue register
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Add one translation layer
Entered CallExp::Translate.
found function try
Call operation returns an 6
la.exp = 0x5581558716c0
Ex's UnEx() called
LetExp translated bodyT, which.exp = 0x5581558716e0
Ex's UnNx() called
 ~~~~ Completed Translation ~~~~
Ex's UnEx() called
gonna print a EseqExp~
My stm = 0x5581558715f0, exp = 0x558155871690
gonna print a ExpStm~
gonna print a ConstExp~
gonna print a CallExp~
gonna print a NameExp~
 ~~~~ Completed Printing ~~~~
well...
checking condition.
rlist = 0x558155872dd0
(*rlist->head) = 0x55815586d860
[canon] [reoder] else branch
well...
checking condition.
rlist = 0
