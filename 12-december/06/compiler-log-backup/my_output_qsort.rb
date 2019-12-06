Called TranslateProgram(A::Exp* root).
Entered LetExp::Translate.
Entered VarDec::Translate. going to declare var: N
Entered IntExp::Translate.
implicit type: 0x5579ba113104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return new framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x5579bb7a7130
Entered TypeDec::Translate.
queue.size() <= 1
Entered ArrayTy::Translate.
declared type intArray, id: 0x5579bb7a71d0
Entered VarDec::Translate. going to declare var: list
Entered ArrayExp::Translate.
Entered IntExp::Translate.
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a5b60; parent level: 0
  compare access sym N, N
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a6b40
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7a72c0
successfully generated exp 0x5579bb7a72e0
Ex's UnEx() called
Ex's UnEx() called
implicit type: 0x5579bb7a71d0
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return existed framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x5579bb7a7570
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
bodyTranslate success. which .exp = 0x5579bb7a7890
function return value type: NULL
head->result: 0, retType->kind: 6
going to unEx bodyTranslate. Now it is actually0x5579bb7a7890
Ex's UnEx() called
bodyEx now is 0x5579bb7a7860
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
loTrans success. loTrans.exp = 0x5579bb7a7be0
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a7ba0; parent level: 0x5579bb7a5b60
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
going to call getExp with access: 0x5579bb7a6b40
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7a7c70
successfully generated exp 0x5579bb7a7c90
Analyzed leftT, which.exp = 0x5579bb7a7c90
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x5579bb7a7cd0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
hiTrans success. hiTrans.exp = 0x5579bb7a7d20
Entered AllocLocal. escape? 1
create newAcc fine
Entered AllocLocal. escape? 1
create newAcc fine
Entered SeqExp::Translate.
Add one translation layer
Entered AssignExp::Translate.
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x5579bb7a7ba0; parent level: 0x5579bb7a5b60
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
going to call getExp with access: 0x5579bb7a7430
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7a80b0
successfully generated exp 0x5579bb7a80d0
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a7ba0; parent level: 0x5579bb7a5b60
  compare access sym __l__, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a7dd0
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7a8160
successfully generated exp 0x5579bb7a8180
Translated indexT, which .exp = 0x5579bb7a8180
Ex's UnEx() called
Ex's UnEx() called
translated varKind. which exp = 0x5579bb7a8240
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a7ba0; parent level: 0x5579bb7a5b60
  compare access sym __l__, N
  compare access sym i, N
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
going to call getExp with access: 0x5579bb7a6b40
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7a82d0
successfully generated exp 0x5579bb7a82f0
Analyzed leftT, which.exp = 0x5579bb7a82f0
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a7ba0; parent level: 0x5579bb7a5b60
  compare access sym __l__, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a7dd0
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7a8380
successfully generated exp 0x5579bb7a83a0
Analyzed rightT, which.exp = 0x5579bb7a83a0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated expT. which exp = 0x5579bb7a83f0
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a7ba0; parent level: 0x5579bb7a5b60
  compare access sym __l__, N
  compare access sym i, N
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
going to call getExp with access: 0x5579bb7a6b40
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7a8480
successfully generated exp 0x5579bb7a84a0
Analyzed leftT, which.exp = 0x5579bb7a84a0
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a7ba0; parent level: 0x5579bb7a5b60
  compare access sym __l__, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a7dd0
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7a8530
successfully generated exp 0x5579bb7a8550
Analyzed rightT, which.exp = 0x5579bb7a8550
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x5579bb7a85f0
Nx's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function nop
Call operation returns an 6
la.exp = 0x5579bb7a86e0
Ex's UnEx() called
bodyTrans success. bodyTrans.exp = 0x5579bb7a8750
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
bodyTranslate success. which .exp = 0x5579bb7a8c90
function return value type: NULL
head->result: 0, retType->kind: 6
going to unEx bodyTranslate. Now it is actually0x5579bb7a8c90
Nx's UnEx() called
bodyEx now is 0x5579bb7a8cd0
returnValue register requested
gonna return existed returnValue register
To-declare function name: quicksort
constructing formal: left, type: int, id: 0x5579ba113104
 param +1
constructing formal: right, type: int, id: 0x5579ba113104
 param +1
===== PRINT BLIST =====
# __STATIC_LINK__
# left
# right
I'm entering the evil part of translate, which didn't give me a good exp 
called new level. label: quicksort
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
created new InFrameAccess. sym: left
created new InFrameAccess. sym: right
Entered LetExp::Translate.
Entered VarDec::Translate. going to declare var: i
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
accessList traverse over
I'll go one layer above. 
  compare access sym list, left
  compare access sym N, left
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym right, left
  compare access sym left, left
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a9080
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7a9220
successfully generated exp 0x5579bb7a9240
implicit type: 0x5579ba113104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return existed framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x5579bb7a93f0
Entered VarDec::Translate. going to declare var: j
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym i, right
accessList traverse over
I'll go one layer above. 
  compare access sym list, right
  compare access sym N, right
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym right, right
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a90e0
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7a9480
successfully generated exp 0x5579bb7a94a0
implicit type: 0x5579ba113104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return existed framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x5579bb7a9650
Entered VarDec::Translate. going to declare var: key
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym j, list
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
going to call getExp with access: 0x5579bb7a7430
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7a96e0
successfully generated exp 0x5579bb7a9700
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym j, left
  compare access sym i, left
accessList traverse over
I'll go one layer above. 
  compare access sym list, left
  compare access sym N, left
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym right, left
  compare access sym left, left
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a9080
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7a9790
successfully generated exp 0x5579bb7a97b0
Translated indexT, which .exp = 0x5579bb7a97b0
Ex's UnEx() called
Ex's UnEx() called
implicit type: 0x5579ba113104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return existed framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x5579bb7a9a20
Entered SeqExp::Translate.
Add one translation layer
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: LT_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym key, left
  compare access sym j, left
  compare access sym i, left
accessList traverse over
I'll go one layer above. 
  compare access sym list, left
  compare access sym N, left
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym right, left
  compare access sym left, left
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a9080
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7a9ae0
successfully generated exp 0x5579bb7a9b00
Analyzed leftT, which.exp = 0x5579bb7a9b00
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym key, right
  compare access sym j, right
  compare access sym i, right
accessList traverse over
I'll go one layer above. 
  compare access sym list, right
  compare access sym N, right
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym right, right
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a90e0
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7a9b90
successfully generated exp 0x5579bb7a9bb0
Analyzed rightT, which.exp = 0x5579bb7a9bb0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x5579bb7a9c50
Entered SeqExp::Translate.
Add one translation layer
Entered WhileExp::Translate.
Entered OpExp::Translate. OpCode: LT_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym key, i
  compare access sym j, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a92b0
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7a9d20
successfully generated exp 0x5579bb7a9d40
Analyzed leftT, which.exp = 0x5579bb7a9d40
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym key, j
  compare access sym j, j
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a9510
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7a9dd0
successfully generated exp 0x5579bb7a9df0
Analyzed rightT, which.exp = 0x5579bb7a9df0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Entered SeqExp::Translate.
Add one translation layer
Entered WhileExp::Translate.
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: LT_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym key, i
  compare access sym j, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a92b0
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7a9f60
successfully generated exp 0x5579bb7a9f80
Analyzed leftT, which.exp = 0x5579bb7a9f80
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym key, j
  compare access sym j, j
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a9510
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7aa010
successfully generated exp 0x5579bb7aa030
Analyzed rightT, which.exp = 0x5579bb7aa030
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x5579bb7aa0d0
Entered OpExp::Translate. OpCode: LE_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym key, key
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a98e0
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7aa170
successfully generated exp 0x5579bb7aa190
Analyzed leftT, which.exp = 0x5579bb7aa190
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym key, list
  compare access sym j, list
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
going to call getExp with access: 0x5579bb7a7430
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7aa220
successfully generated exp 0x5579bb7aa240
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym key, j
  compare access sym j, j
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a9510
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7aa2d0
successfully generated exp 0x5579bb7aa2f0
Translated indexT, which .exp = 0x5579bb7aa2f0
Ex's UnEx() called
Ex's UnEx() called
Analyzed rightT, which.exp = 0x5579bb7aa3b0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
(exists else) translated then, exp = 0x5579bb7aa450
Entered IntExp::Translate.
(exists else) translated else, exp = 0x5579bb7aa4a0
Entered AllocLocal. escape? 1
create newAcc fine
framePointer register requested
gonna return existed framePointer register
called getExp 
with a INFRAME access
Cx's UnCx() called
Cx's UnEx() called
Ex's UnEx() called
Entered AssignExp::Translate.
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, j
  compare access sym key, j
  compare access sym j, j
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a9510
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7aac80
successfully generated exp 0x5579bb7aaca0
translated varKind. which exp = 0x5579bb7aaca0
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, j
  compare access sym key, j
  compare access sym j, j
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a9510
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7aad30
successfully generated exp 0x5579bb7aad50
Analyzed leftT, which.exp = 0x5579bb7aad50
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x5579bb7aad90
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated expT. which exp = 0x5579bb7aade0
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, j
  compare access sym key, j
  compare access sym j, j
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a9510
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7aae70
successfully generated exp 0x5579bb7aae90
Analyzed leftT, which.exp = 0x5579bb7aae90
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x5579bb7aaed0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Ex's UnEx() called
Ex's UnEx() called
Ex's UnCx() called
cond.stm = 0x5579bb7ab040
Nx's UnNx() called
la.exp = 0x5579bb7ab280
Nx's UnEx() called
Add one translation layer
Entered AssignExp::Translate.
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, list
  compare access sym key, list
  compare access sym j, list
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
going to call getExp with access: 0x5579bb7a7430
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7ab360
successfully generated exp 0x5579bb7ab380
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, i
  compare access sym key, i
  compare access sym j, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a92b0
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7ab410
successfully generated exp 0x5579bb7ab430
Translated indexT, which .exp = 0x5579bb7ab430
Ex's UnEx() called
Ex's UnEx() called
translated varKind. which exp = 0x5579bb7ab4f0
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, list
  compare access sym key, list
  compare access sym j, list
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
going to call getExp with access: 0x5579bb7a7430
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7ab580
successfully generated exp 0x5579bb7ab5a0
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, j
  compare access sym key, j
  compare access sym j, j
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a9510
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7ab630
successfully generated exp 0x5579bb7ab650
Translated indexT, which .exp = 0x5579bb7ab650
Ex's UnEx() called
Ex's UnEx() called
translated expT. which exp = 0x5579bb7ab710
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, list
  compare access sym key, list
  compare access sym j, list
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
going to call getExp with access: 0x5579bb7a7430
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7ab7a0
successfully generated exp 0x5579bb7ab7c0
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, j
  compare access sym key, j
  compare access sym j, j
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a9510
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7ab850
successfully generated exp 0x5579bb7ab870
Translated indexT, which .exp = 0x5579bb7ab870
Ex's UnEx() called
Ex's UnEx() called
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x5579bb7ab980
Nx's UnEx() called
Add one translation layer
Entered WhileExp::Translate.
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: LT_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, i
  compare access sym key, i
  compare access sym j, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a92b0
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7abab0
successfully generated exp 0x5579bb7abad0
Analyzed leftT, which.exp = 0x5579bb7abad0
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, j
  compare access sym key, j
  compare access sym j, j
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a9510
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7abb60
successfully generated exp 0x5579bb7abb80
Analyzed rightT, which.exp = 0x5579bb7abb80
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x5579bb7abc20
Entered OpExp::Translate. OpCode: GE_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, key
  compare access sym key, key
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a98e0
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7abcc0
successfully generated exp 0x5579bb7abce0
Analyzed leftT, which.exp = 0x5579bb7abce0
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, list
  compare access sym key, list
  compare access sym j, list
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
going to call getExp with access: 0x5579bb7a7430
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7abd70
successfully generated exp 0x5579bb7abd90
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, i
  compare access sym key, i
  compare access sym j, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a92b0
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7abe20
successfully generated exp 0x5579bb7abe40
Translated indexT, which .exp = 0x5579bb7abe40
Ex's UnEx() called
Ex's UnEx() called
Analyzed rightT, which.exp = 0x5579bb7abf00
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
(exists else) translated then, exp = 0x5579bb7abfa0
Entered IntExp::Translate.
(exists else) translated else, exp = 0x5579bb7abff0
Entered AllocLocal. escape? 1
create newAcc fine
framePointer register requested
gonna return existed framePointer register
called getExp 
with a INFRAME access
Cx's UnCx() called
Cx's UnEx() called
Ex's UnEx() called
Entered AssignExp::Translate.
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, i
  compare access sym __RETURN__, i
  compare access sym key, i
  compare access sym j, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a92b0
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7ac7d0
successfully generated exp 0x5579bb7ac7f0
translated varKind. which exp = 0x5579bb7ac7f0
Entered OpExp::Translate. OpCode: PLUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, i
  compare access sym __RETURN__, i
  compare access sym key, i
  compare access sym j, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a92b0
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7ac880
successfully generated exp 0x5579bb7ac8a0
Analyzed leftT, which.exp = 0x5579bb7ac8a0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x5579bb7ac8e0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated expT. which exp = 0x5579bb7ac930
Entered OpExp::Translate. OpCode: PLUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, i
  compare access sym __RETURN__, i
  compare access sym key, i
  compare access sym j, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a92b0
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7ac9c0
successfully generated exp 0x5579bb7ac9e0
Analyzed leftT, which.exp = 0x5579bb7ac9e0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x5579bb7aca20
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Ex's UnEx() called
Ex's UnEx() called
Ex's UnCx() called
cond.stm = 0x5579bb7acb90
Nx's UnNx() called
la.exp = 0x5579bb7acdd0
Nx's UnEx() called
Add one translation layer
Entered AssignExp::Translate.
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, list
  compare access sym __RETURN__, list
  compare access sym key, list
  compare access sym j, list
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
going to call getExp with access: 0x5579bb7a7430
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7acf00
successfully generated exp 0x5579bb7acf20
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, j
  compare access sym __RETURN__, j
  compare access sym key, j
  compare access sym j, j
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a9510
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7acfb0
successfully generated exp 0x5579bb7acfd0
Translated indexT, which .exp = 0x5579bb7acfd0
Ex's UnEx() called
Ex's UnEx() called
translated varKind. which exp = 0x5579bb7ad090
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, list
  compare access sym __RETURN__, list
  compare access sym key, list
  compare access sym j, list
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
going to call getExp with access: 0x5579bb7a7430
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7ad120
successfully generated exp 0x5579bb7ad140
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, i
  compare access sym __RETURN__, i
  compare access sym key, i
  compare access sym j, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a92b0
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7ad1d0
successfully generated exp 0x5579bb7ad1f0
Translated indexT, which .exp = 0x5579bb7ad1f0
Ex's UnEx() called
Ex's UnEx() called
translated expT. which exp = 0x5579bb7ad2b0
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, list
  compare access sym __RETURN__, list
  compare access sym key, list
  compare access sym j, list
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
going to call getExp with access: 0x5579bb7a7430
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7ad340
successfully generated exp 0x5579bb7ad360
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, i
  compare access sym __RETURN__, i
  compare access sym key, i
  compare access sym j, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a92b0
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7ad3f0
successfully generated exp 0x5579bb7ad410
Translated indexT, which .exp = 0x5579bb7ad410
Ex's UnEx() called
Ex's UnEx() called
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x5579bb7ad520
Nx's UnEx() called
Cx's UnCx() called
cond.stm = 0x5579bb7a9e10
Ex's UnNx() called
la.exp = 0x5579bb7ad870
Nx's UnEx() called
Add one translation layer
Entered AssignExp::Translate.
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, list
  compare access sym __RETURN__, list
  compare access sym key, list
  compare access sym j, list
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
going to call getExp with access: 0x5579bb7a7430
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7ad950
successfully generated exp 0x5579bb7ad970
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, i
  compare access sym __RETURN__, i
  compare access sym key, i
  compare access sym j, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a92b0
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7ada00
successfully generated exp 0x5579bb7ada20
Translated indexT, which .exp = 0x5579bb7ada20
Ex's UnEx() called
Ex's UnEx() called
translated varKind. which exp = 0x5579bb7adae0
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, key
  compare access sym __RETURN__, key
  compare access sym key, key
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a98e0
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7adb70
successfully generated exp 0x5579bb7adb90
translated expT. which exp = 0x5579bb7adb90
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, key
  compare access sym __RETURN__, key
  compare access sym key, key
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a98e0
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7adc20
successfully generated exp 0x5579bb7adc40
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x5579bb7adc90
Nx's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function quicksort
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, left
  compare access sym __RETURN__, left
  compare access sym key, left
  compare access sym j, left
  compare access sym i, left
accessList traverse over
I'll go one layer above. 
  compare access sym list, left
  compare access sym N, left
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym right, left
  compare access sym left, left
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a9080
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7addf0
successfully generated exp 0x5579bb7ade10
comparing arg->head and formals->head
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, i
  compare access sym __RETURN__, i
  compare access sym key, i
  compare access sym j, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a92b0
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7adea0
successfully generated exp 0x5579bb7adec0
Analyzed leftT, which.exp = 0x5579bb7adec0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x5579bb7adf00
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Call operation returns an 6
la.exp = 0x5579bb7adfc0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function quicksort
comparing arg->head and formals->head
Entered OpExp::Translate. OpCode: PLUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, i
  compare access sym __RETURN__, i
  compare access sym key, i
  compare access sym j, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a92b0
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7ae0d0
successfully generated exp 0x5579bb7ae0f0
Analyzed leftT, which.exp = 0x5579bb7ae0f0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x5579bb7ae130
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7a9190; parent level: 0x5579bb7a5b60
  compare access sym __RETURN__, right
  compare access sym __RETURN__, right
  compare access sym key, right
  compare access sym j, right
  compare access sym i, right
accessList traverse over
I'll go one layer above. 
  compare access sym list, right
  compare access sym N, right
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym right, right
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7a90e0
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7ae210
successfully generated exp 0x5579bb7ae230
Call operation returns an 6
la.exp = 0x5579bb7ae2a0
Ex's UnEx() called
(no else) translated then, exp = 0x5579bb7ae310
Cx's UnCx() called
Ex's UnNx() called
la.exp = 0x5579bb7ae4b0
Nx's UnEx() called
bodyTranslate success. which .exp = 0x5579bb7ae520
try pop one out
try pop one out
function return value type: NULL
head->result: 0, retType->kind: 6
going to unEx bodyTranslate. Now it is actually0x5579bb7ae520
Ex's UnEx() called
bodyEx now is 0x5579bb7a9a40
returnValue register requested
gonna return existed returnValue register
To-declare function name: dosort
===== PRINT BLIST =====
# __STATIC_LINK__
I'm entering the evil part of translate, which didn't give me a good exp 
called new level. label: dosort
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
Entered SeqExp::Translate.
Add one translation layer
Entered CallExp::Translate.
found function init
Call operation returns an 6
la.exp = 0x5579bb7ae820
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function quicksort
comparing arg->head and formals->head
Entered IntExp::Translate.
comparing arg->head and formals->head
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7ae750; parent level: 0x5579bb7a5b60
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
going to call getExp with access: 0x5579bb7a6b40
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7ae920
successfully generated exp 0x5579bb7ae940
Analyzed leftT, which.exp = 0x5579bb7ae940
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x5579bb7ae980
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Call operation returns an 6
la.exp = 0x5579bb7aea40
Ex's UnEx() called
Add one translation layer
Entered ForExp::Translate.
Entered IntExp::Translate.
loTrans success. loTrans.exp = 0x5579bb7aead0
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7ae750; parent level: 0x5579bb7a5b60
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
going to call getExp with access: 0x5579bb7a6b40
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7aeb60
successfully generated exp 0x5579bb7aeb80
Analyzed leftT, which.exp = 0x5579bb7aeb80
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x5579bb7aebc0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
hiTrans success. hiTrans.exp = 0x5579bb7aec10
Entered AllocLocal. escape? 1
create newAcc fine
Entered AllocLocal. escape? 1
create newAcc fine
Entered SeqExp::Translate.
Add one translation layer
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x5579bb7ae750; parent level: 0x5579bb7a5b60
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
going to call getExp with access: 0x5579bb7a7430
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7aefa0
successfully generated exp 0x5579bb7aefc0
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5579bb7ae750; parent level: 0x5579bb7a5b60
  compare access sym __l__, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5579bb7aecc0
called getExp 
with a INFRAME access
successfully build targetExp 0x5579bb7af050
successfully generated exp 0x5579bb7af070
Translated indexT, which .exp = 0x5579bb7af070
Ex's UnEx() called
Ex's UnEx() called
Call operation returns an 6
la.exp = 0x5579bb7af1a0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x5579bb7af310
Ex's UnEx() called
bodyTrans success. bodyTrans.exp = 0x5579bb7af380
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
la.exp = 0x5579bb7af8c0
Nx's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x5579bb7afad0
Ex's UnEx() called
bodyTranslate success. which .exp = 0x5579bb7afb40
function return value type: NULL
head->result: 0, retType->kind: 6
going to unEx bodyTranslate. Now it is actually0x5579bb7afb40
Ex's UnEx() called
bodyEx now is 0x5579bb7ae770
returnValue register requested
gonna return existed returnValue register
Entered SeqExp::Translate.
Add one translation layer
Entered CallExp::Translate.
found function dosort
Call operation returns an 6
la.exp = 0x5579bb7afcc0
Ex's UnEx() called
Ex's UnNx() called
 ~~~~ Completed Translation ~~~~
