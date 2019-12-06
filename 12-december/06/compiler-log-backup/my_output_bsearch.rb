Called TranslateProgram(A::Exp* root).
Entered LetExp::Translate.
Entered VarDec::Translate. going to declare var: N
Entered IntExp::Translate.
implicit type: 0x560b52ae0104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return new framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x560b549ba150
Entered TypeDec::Translate.
queue.size() <= 1
Entered ArrayTy::Translate.
declared type intArray, id: 0x560b549ba1f0
Entered VarDec::Translate. going to declare var: list
Entered ArrayExp::Translate.
Entered IntExp::Translate.
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x560b549b8b80; parent level: 0
  compare access sym N, N
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x560b549b9b60
called getExp 
with a INFRAME access
successfully build targetExp 0x560b549ba2e0
successfully generated exp 0x560b549ba300
Ex's UnEx() called
Ex's UnEx() called
implicit type: 0x560b549ba1f0
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return existed framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x560b549ba590
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
bodyTranslate success. which .exp = 0x560b549ba8b0
function return value type: NULL
head->result: 0, retType->kind: 6
going to unEx bodyTranslate. Now it is actually0x560b549ba8b0
Ex's UnEx() called
bodyEx now is 0x560b549ba880
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
loTrans success. loTrans.exp = 0x560b549bac00
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x560b549babc0; parent level: 0x560b549b8b80
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
going to call getExp with access: 0x560b549b9b60
called getExp 
with a INFRAME access
successfully build targetExp 0x560b549bac90
successfully generated exp 0x560b549bacb0
Analyzed leftT, which.exp = 0x560b549bacb0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x560b549bacf0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
hiTrans success. hiTrans.exp = 0x560b549bad40
Entered AllocLocal. escape? 1
create newAcc fine
Entered AllocLocal. escape? 1
create newAcc fine
Entered SeqExp::Translate.
Add one translation layer
Entered AssignExp::Translate.
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x560b549babc0; parent level: 0x560b549b8b80
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
going to call getExp with access: 0x560b549ba450
called getExp 
with a INFRAME access
successfully build targetExp 0x560b549bb0d0
successfully generated exp 0x560b549bb0f0
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x560b549babc0; parent level: 0x560b549b8b80
  compare access sym __l__, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x560b549badf0
called getExp 
with a INFRAME access
successfully build targetExp 0x560b549bb180
successfully generated exp 0x560b549bb1a0
Translated indexT, which .exp = 0x560b549bb1a0
Ex's UnEx() called
Ex's UnEx() called
translated varKind. which exp = 0x560b549bb260
Entered OpExp::Translate. OpCode: PLUS_OP
Entered OpExp::Translate. OpCode: TIMES_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x560b549babc0; parent level: 0x560b549b8b80
  compare access sym __l__, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x560b549badf0
called getExp 
with a INFRAME access
successfully build targetExp 0x560b549bb2f0
successfully generated exp 0x560b549bb310
Analyzed leftT, which.exp = 0x560b549bb310
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x560b549bb350
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Analyzed leftT, which.exp = 0x560b549bb3a0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x560b549bb3e0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated expT. which exp = 0x560b549bb430
Entered OpExp::Translate. OpCode: PLUS_OP
Entered OpExp::Translate. OpCode: TIMES_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x560b549babc0; parent level: 0x560b549b8b80
  compare access sym __l__, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x560b549badf0
called getExp 
with a INFRAME access
successfully build targetExp 0x560b549bb4c0
successfully generated exp 0x560b549bb4e0
Analyzed leftT, which.exp = 0x560b549bb4e0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x560b549bb520
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Analyzed leftT, which.exp = 0x560b549bb570
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x560b549bb5b0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x560b549bb650
Nx's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function nop
Call operation returns an 6
la.exp = 0x560b549bb740
Ex's UnEx() called
bodyTrans success. bodyTrans.exp = 0x560b549bb7b0
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
bodyTranslate success. which .exp = 0x560b549bbcf0
function return value type: NULL
head->result: 0, retType->kind: 6
going to unEx bodyTranslate. Now it is actually0x560b549bbcf0
Nx's UnEx() called
bodyEx now is 0x560b549bbd30
returnValue register requested
gonna return existed returnValue register
To-declare function name: bsearch
constructing formal: left, type: int, id: 0x560b52ae0104
 param +1
constructing formal: right, type: int, id: 0x560b52ae0104
 param +1
constructing formal: c, type: int, id: 0x560b52ae0104
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
Entered SimpleVar::Translate. this level: 0x560b549bc300; parent level: 0x560b549b8b80
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
going to call getExp with access: 0x560b549bc190
called getExp 
with a INFRAME access
successfully build targetExp 0x560b549bc390
successfully generated exp 0x560b549bc3b0
Analyzed leftT, which.exp = 0x560b549bc3b0
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x560b549bc300; parent level: 0x560b549b8b80
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
going to call getExp with access: 0x560b549bc1f0
called getExp 
with a INFRAME access
successfully build targetExp 0x560b549bc440
successfully generated exp 0x560b549bc460
Analyzed rightT, which.exp = 0x560b549bc460
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x560b549bc500
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x560b549bc300; parent level: 0x560b549b8b80
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
going to call getExp with access: 0x560b549bc190
called getExp 
with a INFRAME access
successfully build targetExp 0x560b549bc5a0
successfully generated exp 0x560b549bc5c0
(exists else) translated then, exp = 0x560b549bc5c0
Entered LetExp::Translate.
Entered VarDec::Translate. going to declare var: mid
Entered OpExp::Translate. OpCode: DIVIDE_OP
Entered OpExp::Translate. OpCode: PLUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x560b549bc300; parent level: 0x560b549b8b80
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
going to call getExp with access: 0x560b549bc190
called getExp 
with a INFRAME access
successfully build targetExp 0x560b549bc650
successfully generated exp 0x560b549bc670
Analyzed leftT, which.exp = 0x560b549bc670
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x560b549bc300; parent level: 0x560b549b8b80
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
going to call getExp with access: 0x560b549bc1f0
called getExp 
with a INFRAME access
successfully build targetExp 0x560b549bc700
successfully generated exp 0x560b549bc720
Analyzed rightT, which.exp = 0x560b549bc720
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Analyzed leftT, which.exp = 0x560b549bc770
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x560b549bc7b0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
implicit type: 0x560b52ae0104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return existed framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x560b549bc9b0
Entered SeqExp::Translate.
Add one translation layer
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: LT_OP
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x560b549bc300; parent level: 0x560b549b8b80
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
going to call getExp with access: 0x560b549ba450
called getExp 
with a INFRAME access
successfully build targetExp 0x560b549bca70
successfully generated exp 0x560b549bca90
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x560b549bc300; parent level: 0x560b549b8b80
  compare access sym mid, mid
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x560b549bc870
called getExp 
with a INFRAME access
successfully build targetExp 0x560b549bcb20
successfully generated exp 0x560b549bcb40
Translated indexT, which .exp = 0x560b549bcb40
Ex's UnEx() called
Ex's UnEx() called
Analyzed leftT, which.exp = 0x560b549bcc00
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x560b549bc300; parent level: 0x560b549b8b80
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
going to call getExp with access: 0x560b549bc250
called getExp 
with a INFRAME access
successfully build targetExp 0x560b549bcc90
successfully generated exp 0x560b549bccb0
Analyzed rightT, which.exp = 0x560b549bccb0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x560b549bcd50
Entered CallExp::Translate.
found function bsearch
comparing arg->head and formals->head
Entered OpExp::Translate. OpCode: PLUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x560b549bc300; parent level: 0x560b549b8b80
  compare access sym mid, mid
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x560b549bc870
called getExp 
with a INFRAME access
successfully build targetExp 0x560b549bce20
successfully generated exp 0x560b549bce40
Analyzed leftT, which.exp = 0x560b549bce40
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x560b549bce80
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x560b549bc300; parent level: 0x560b549b8b80
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
going to call getExp with access: 0x560b549bc1f0
called getExp 
with a INFRAME access
successfully build targetExp 0x560b549bcf60
successfully generated exp 0x560b549bcf80
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x560b549bc300; parent level: 0x560b549b8b80
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
going to call getExp with access: 0x560b549bc250
called getExp 
with a INFRAME access
successfully build targetExp 0x560b549bd010
successfully generated exp 0x560b549bd030
Call operation returns an 2
(exists else) translated then, exp = 0x560b549bd0a0
Entered CallExp::Translate.
found function bsearch
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x560b549bc300; parent level: 0x560b549b8b80
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
going to call getExp with access: 0x560b549bc190
called getExp 
with a INFRAME access
successfully build targetExp 0x560b549bd160
successfully generated exp 0x560b549bd180
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x560b549bc300; parent level: 0x560b549b8b80
  compare access sym mid, mid
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x560b549bc870
called getExp 
with a INFRAME access
successfully build targetExp 0x560b549bd210
successfully generated exp 0x560b549bd230
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x560b549bc300; parent level: 0x560b549b8b80
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
going to call getExp with access: 0x560b549bc250
called getExp 
with a INFRAME access
successfully build targetExp 0x560b549bd2c0
successfully generated exp 0x560b549bd2e0
Call operation returns an 2
(exists else) translated else, exp = 0x560b549bd350
Entered AllocLocal. escape? 1
create newAcc fine
framePointer register requested
gonna return existed framePointer register
called getExp 
with a INFRAME access
Cx's UnCx() called
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x560b549bd790
Ex's UnEx() called
(exists else) translated else, exp = 0x560b549bd7b0
Entered AllocLocal. escape? 1
create newAcc fine
framePointer register requested
gonna return existed framePointer register
called getExp 
with a INFRAME access
Cx's UnCx() called
Ex's UnEx() called
Ex's UnEx() called
bodyTranslate success. which .exp = 0x560b549bdbf0
try pop one out
try pop one out
try pop one out
function return value type: int
head->result: 0x560b549b5c10, retType->kind: 2
going to unEx bodyTranslate. Now it is actually0x560b549bdbf0
Ex's UnEx() called
bodyEx now is 0x560b549bdbc0
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
la.exp = 0x560b549bdef0
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
Entered SimpleVar::Translate. this level: 0x560b549bde20; parent level: 0x560b549b8b80
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
going to call getExp with access: 0x560b549b9b60
called getExp 
with a INFRAME access
successfully build targetExp 0x560b549be020
successfully generated exp 0x560b549be040
Analyzed leftT, which.exp = 0x560b549be040
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x560b549be080
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
Call operation returns an 6
la.exp = 0x560b549be1f0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x560b549be3b0
Ex's UnEx() called
bodyTranslate success. which .exp = 0x560b549be420
function return value type: NULL
head->result: 0, retType->kind: 6
going to unEx bodyTranslate. Now it is actually0x560b549be420
Ex's UnEx() called
bodyEx now is 0x560b549bde40
returnValue register requested
gonna return existed returnValue register
Entered SeqExp::Translate.
Add one translation layer
Entered CallExp::Translate.
found function try
Call operation returns an 6
la.exp = 0x560b549be5a0
Ex's UnEx() called
Ex's UnNx() called
 ~~~~ Completed Translation ~~~~
