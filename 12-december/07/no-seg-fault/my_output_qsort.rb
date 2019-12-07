Called TranslateProgram(A::Exp* root).
Entered LetExp::Translate.
Entered VarDec::Translate. going to declare var: N
Entered IntExp::Translate.
implicit type: 0x558b78826104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return new framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x558b78d43130
Entered TypeDec::Translate.
queue.size() <= 1
Entered ArrayTy::Translate.
declared type intArray, id: 0x558b78d431d0
Entered VarDec::Translate. going to declare var: list
Entered ArrayExp::Translate.
Entered IntExp::Translate.
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d41b60; parent level: 0
  compare access sym N, N
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x558b78d42b40
called getExp. input framePtr = 0x558b78d43250
with a INFRAME access
successfully build targetExp 0x558b78d432c0
successfully generated exp 0x558b78d432e0
Ex's UnEx() called
Ex's UnEx() called
implicit type: 0x558b78d431d0
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return existed framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x558b78d43570
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
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x558b78d3e050
Entered StringExp::Translate.
Ex's UnEx() called
bodyTranslate success. which .exp = 0x558b78d43980
function return value type: NULL
head->result: 0, retType->kind: 6
going to unEx bodyTranslate. Now it is actually0x558b78d43980
Ex's UnEx() called
bodyEx now is 0x558b78d43950
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
loTrans success. loTrans.exp = 0x558b78d43cd0
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d43c90; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d42b40
called getExp. input framePtr = 0x558b78d43cf0
with a INFRAME access
successfully build targetExp 0x558b78d43d60
successfully generated exp 0x558b78d43d80
Analyzed leftT, which.exp = 0x558b78d43d80
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x558b78d43dc0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
hiTrans success. hiTrans.exp = 0x558b78d43e10
Entered AllocLocal. escape? 1
create newAcc fine
Entered AllocLocal. escape? 1
create newAcc fine
called addLoop. 
Entered SeqExp::Translate.
Add one translation layer
Entered AssignExp::Translate.
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x558b78d43c90; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d43430
called getExp. input framePtr = 0x558b78d44190
with a INFRAME access
successfully build targetExp 0x558b78d44200
successfully generated exp 0x558b78d44220
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d43c90; parent level: 0x558b78d41b60
  compare access sym __l__, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x558b78d43ec0
called getExp. input framePtr = 0x558b78d44240
with a INFRAME access
successfully build targetExp 0x558b78d442b0
successfully generated exp 0x558b78d442d0
Translated indexT, which .exp = 0x558b78d442d0
Ex's UnEx() called
Ex's UnEx() called
translated varKind. which exp = 0x558b78d44390
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d43c90; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d42b40
called getExp. input framePtr = 0x558b78d443b0
with a INFRAME access
successfully build targetExp 0x558b78d44420
successfully generated exp 0x558b78d44440
Analyzed leftT, which.exp = 0x558b78d44440
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d43c90; parent level: 0x558b78d41b60
  compare access sym __l__, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x558b78d43ec0
called getExp. input framePtr = 0x558b78d44460
with a INFRAME access
successfully build targetExp 0x558b78d444d0
successfully generated exp 0x558b78d444f0
Analyzed rightT, which.exp = 0x558b78d444f0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated expT. which exp = 0x558b78d44540
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d43c90; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d42b40
called getExp. input framePtr = 0x558b78d44560
with a INFRAME access
successfully build targetExp 0x558b78d445d0
successfully generated exp 0x558b78d445f0
Analyzed leftT, which.exp = 0x558b78d445f0
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d43c90; parent level: 0x558b78d41b60
  compare access sym __l__, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x558b78d43ec0
called getExp. input framePtr = 0x558b78d44610
with a INFRAME access
successfully build targetExp 0x558b78d44680
successfully generated exp 0x558b78d446a0
Analyzed rightT, which.exp = 0x558b78d446a0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x558b78d44740
Nx's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function nop
Call operation returns an 6
[callexp] start traversing rawExps
la.exp = 0x558b78d44830
Ex's UnEx() called
called popLoop. 
bodyTrans success. bodyTrans.exp = 0x558b78d448a0
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x558b78d448c0
with a INFRAME access
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x558b78d44950
with a INFRAME access
Ex's UnEx() called
Ex's UnEx() called
Ex's UnNx() called
bodyTranslate success. which .exp = 0x558b78d44de0
function return value type: NULL
head->result: 0, retType->kind: 6
going to unEx bodyTranslate. Now it is actually0x558b78d44de0
Nx's UnEx() called
bodyEx now is 0x558b78d44e20
returnValue register requested
gonna return existed returnValue register
To-declare function name: quicksort
constructing formal: left, type: int, id: 0x558b78826104
 param +1
constructing formal: right, type: int, id: 0x558b78826104
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
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d451d0
called getExp. input framePtr = 0x558b78d45300
with a INFRAME access
successfully build targetExp 0x558b78d45370
successfully generated exp 0x558b78d45390
implicit type: 0x558b78826104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return existed framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x558b78d45540
Entered VarDec::Translate. going to declare var: j
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d45230
called getExp. input framePtr = 0x558b78d45560
with a INFRAME access
successfully build targetExp 0x558b78d455d0
successfully generated exp 0x558b78d455f0
implicit type: 0x558b78826104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return existed framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x558b78d457a0
Entered VarDec::Translate. going to declare var: key
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d43430
called getExp. input framePtr = 0x558b78d457c0
with a INFRAME access
successfully build targetExp 0x558b78d45830
successfully generated exp 0x558b78d45850
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d451d0
called getExp. input framePtr = 0x558b78d45870
with a INFRAME access
successfully build targetExp 0x558b78d458e0
successfully generated exp 0x558b78d45900
Translated indexT, which .exp = 0x558b78d45900
Ex's UnEx() called
Ex's UnEx() called
implicit type: 0x558b78826104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return existed framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x558b78d45b70
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Add one translation layer
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: LT_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d451d0
called getExp. input framePtr = 0x558b78d45c00
with a INFRAME access
successfully build targetExp 0x558b78d45c70
successfully generated exp 0x558b78d45c90
Analyzed leftT, which.exp = 0x558b78d45c90
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d45230
called getExp. input framePtr = 0x558b78d45cb0
with a INFRAME access
successfully build targetExp 0x558b78d45d20
successfully generated exp 0x558b78d45d40
Analyzed rightT, which.exp = 0x558b78d45d40
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x558b78d45de0
Entered SeqExp::Translate.
Add one translation layer
Entered WhileExp::Translate.
Entered OpExp::Translate. OpCode: LT_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
  compare access sym key, i
  compare access sym j, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x558b78d45400
called getExp. input framePtr = 0x558b78d45e80
with a INFRAME access
successfully build targetExp 0x558b78d45ef0
successfully generated exp 0x558b78d45f10
Analyzed leftT, which.exp = 0x558b78d45f10
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
  compare access sym key, j
  compare access sym j, j
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x558b78d45660
called getExp. input framePtr = 0x558b78d45f30
with a INFRAME access
successfully build targetExp 0x558b78d45fa0
successfully generated exp 0x558b78d45fc0
Analyzed rightT, which.exp = 0x558b78d45fc0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
called addLoop. 
Entered SeqExp::Translate.
Add one translation layer
Entered WhileExp::Translate.
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: LT_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
  compare access sym key, i
  compare access sym j, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x558b78d45400
called getExp. input framePtr = 0x558b78d46190
with a INFRAME access
successfully build targetExp 0x558b78d46200
successfully generated exp 0x558b78d46220
Analyzed leftT, which.exp = 0x558b78d46220
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
  compare access sym key, j
  compare access sym j, j
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x558b78d45660
called getExp. input framePtr = 0x558b78d46240
with a INFRAME access
successfully build targetExp 0x558b78d462b0
successfully generated exp 0x558b78d462d0
Analyzed rightT, which.exp = 0x558b78d462d0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x558b78d46370
Entered OpExp::Translate. OpCode: LE_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
  compare access sym key, key
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x558b78d45a30
called getExp. input framePtr = 0x558b78d463a0
with a INFRAME access
successfully build targetExp 0x558b78d46410
successfully generated exp 0x558b78d46430
Analyzed leftT, which.exp = 0x558b78d46430
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d43430
called getExp. input framePtr = 0x558b78d46450
with a INFRAME access
successfully build targetExp 0x558b78d464c0
successfully generated exp 0x558b78d464e0
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
  compare access sym key, j
  compare access sym j, j
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x558b78d45660
called getExp. input framePtr = 0x558b78d46500
with a INFRAME access
successfully build targetExp 0x558b78d46570
successfully generated exp 0x558b78d46590
Translated indexT, which .exp = 0x558b78d46590
Ex's UnEx() called
Ex's UnEx() called
Analyzed rightT, which.exp = 0x558b78d46650
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
(exists else) translated then, exp = 0x558b78d466f0
Entered IntExp::Translate.
(exists else) translated else, exp = 0x558b78d46740
Entered AllocLocal. escape? 1
create newAcc fine
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x558b78d46870
with a INFRAME access
Cx's UnCx() called
IfExp: has a return type!
Cx's UnEx() called
Ex's UnEx() called
called addLoop. 
Entered AssignExp::Translate.
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
  compare access sym __RETURN__, j
  compare access sym key, j
  compare access sym j, j
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x558b78d45660
called getExp. input framePtr = 0x558b78d44100
with a INFRAME access
successfully build targetExp 0x558b78d46fb0
successfully generated exp 0x558b78d46fd0
translated varKind. which exp = 0x558b78d46fd0
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
  compare access sym __RETURN__, j
  compare access sym key, j
  compare access sym j, j
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x558b78d45660
called getExp. input framePtr = 0x558b78d46ff0
with a INFRAME access
successfully build targetExp 0x558b78d47060
successfully generated exp 0x558b78d47080
Analyzed leftT, which.exp = 0x558b78d47080
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x558b78d470c0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated expT. which exp = 0x558b78d47110
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
  compare access sym __RETURN__, j
  compare access sym key, j
  compare access sym j, j
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x558b78d45660
called getExp. input framePtr = 0x558b78d47130
with a INFRAME access
successfully build targetExp 0x558b78d471a0
successfully generated exp 0x558b78d471c0
Analyzed leftT, which.exp = 0x558b78d471c0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x558b78d47200
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Ex's UnEx() called
Ex's UnEx() called
called popLoop. 
Ex's UnCx() called
cond.stm = 0x558b78d472e0
Nx's UnNx() called
la.exp = 0x558b78d47520
Nx's UnEx() called
Add one translation layer
Entered AssignExp::Translate.
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d43430
called getExp. input framePtr = 0x558b78d47590
with a INFRAME access
successfully build targetExp 0x558b78d47600
successfully generated exp 0x558b78d47620
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d45400
called getExp. input framePtr = 0x558b78d47640
with a INFRAME access
successfully build targetExp 0x558b78d476b0
successfully generated exp 0x558b78d476d0
Translated indexT, which .exp = 0x558b78d476d0
Ex's UnEx() called
Ex's UnEx() called
translated varKind. which exp = 0x558b78d47790
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d43430
called getExp. input framePtr = 0x558b78d477b0
with a INFRAME access
successfully build targetExp 0x558b78d47820
successfully generated exp 0x558b78d47840
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
  compare access sym __RETURN__, j
  compare access sym key, j
  compare access sym j, j
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x558b78d45660
called getExp. input framePtr = 0x558b78d47860
with a INFRAME access
successfully build targetExp 0x558b78d478d0
successfully generated exp 0x558b78d478f0
Translated indexT, which .exp = 0x558b78d478f0
Ex's UnEx() called
Ex's UnEx() called
translated expT. which exp = 0x558b78d479b0
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d43430
called getExp. input framePtr = 0x558b78d479d0
with a INFRAME access
successfully build targetExp 0x558b78d47a40
successfully generated exp 0x558b78d47a60
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
  compare access sym __RETURN__, j
  compare access sym key, j
  compare access sym j, j
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x558b78d45660
called getExp. input framePtr = 0x558b78d47a80
with a INFRAME access
successfully build targetExp 0x558b78d47af0
successfully generated exp 0x558b78d47b10
Translated indexT, which .exp = 0x558b78d47b10
Ex's UnEx() called
Ex's UnEx() called
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x558b78d47c20
Nx's UnEx() called
Add one translation layer
Entered WhileExp::Translate.
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: LT_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d45400
called getExp. input framePtr = 0x558b78d47ce0
with a INFRAME access
successfully build targetExp 0x558b78d47d50
successfully generated exp 0x558b78d47d70
Analyzed leftT, which.exp = 0x558b78d47d70
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
  compare access sym __RETURN__, j
  compare access sym key, j
  compare access sym j, j
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x558b78d45660
called getExp. input framePtr = 0x558b78d47d90
with a INFRAME access
successfully build targetExp 0x558b78d47e00
successfully generated exp 0x558b78d47e20
Analyzed rightT, which.exp = 0x558b78d47e20
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x558b78d47ec0
Entered OpExp::Translate. OpCode: GE_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
  compare access sym __RETURN__, key
  compare access sym key, key
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x558b78d45a30
called getExp. input framePtr = 0x558b78d47ef0
with a INFRAME access
successfully build targetExp 0x558b78d47f60
successfully generated exp 0x558b78d47f80
Analyzed leftT, which.exp = 0x558b78d47f80
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d43430
called getExp. input framePtr = 0x558b78d47fa0
with a INFRAME access
successfully build targetExp 0x558b78d48010
successfully generated exp 0x558b78d48030
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d45400
called getExp. input framePtr = 0x558b78d48050
with a INFRAME access
successfully build targetExp 0x558b78d480c0
successfully generated exp 0x558b78d480e0
Translated indexT, which .exp = 0x558b78d480e0
Ex's UnEx() called
Ex's UnEx() called
Analyzed rightT, which.exp = 0x558b78d481a0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
(exists else) translated then, exp = 0x558b78d48240
Entered IntExp::Translate.
(exists else) translated else, exp = 0x558b78d48290
Entered AllocLocal. escape? 1
create newAcc fine
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x558b78d483c0
with a INFRAME access
Cx's UnCx() called
IfExp: has a return type!
Cx's UnEx() called
Ex's UnEx() called
called addLoop. 
Entered AssignExp::Translate.
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d45400
called getExp. input framePtr = 0x558b78d48a90
with a INFRAME access
successfully build targetExp 0x558b78d48b00
successfully generated exp 0x558b78d48b20
translated varKind. which exp = 0x558b78d48b20
Entered OpExp::Translate. OpCode: PLUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d45400
called getExp. input framePtr = 0x558b78d48b40
with a INFRAME access
successfully build targetExp 0x558b78d48bb0
successfully generated exp 0x558b78d48bd0
Analyzed leftT, which.exp = 0x558b78d48bd0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x558b78d48c10
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated expT. which exp = 0x558b78d48c60
Entered OpExp::Translate. OpCode: PLUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d45400
called getExp. input framePtr = 0x558b78d48c80
with a INFRAME access
successfully build targetExp 0x558b78d48cf0
successfully generated exp 0x558b78d48d10
Analyzed leftT, which.exp = 0x558b78d48d10
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x558b78d48d50
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Ex's UnEx() called
Ex's UnEx() called
called popLoop. 
Ex's UnCx() called
cond.stm = 0x558b78d48e30
Nx's UnNx() called
la.exp = 0x558b78d49070
Nx's UnEx() called
Add one translation layer
Entered AssignExp::Translate.
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d43430
called getExp. input framePtr = 0x558b78d49130
with a INFRAME access
successfully build targetExp 0x558b78d491a0
successfully generated exp 0x558b78d491c0
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d45660
called getExp. input framePtr = 0x558b78d491e0
with a INFRAME access
successfully build targetExp 0x558b78d49250
successfully generated exp 0x558b78d49270
Translated indexT, which .exp = 0x558b78d49270
Ex's UnEx() called
Ex's UnEx() called
translated varKind. which exp = 0x558b78d49330
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d43430
called getExp. input framePtr = 0x558b78d49350
with a INFRAME access
successfully build targetExp 0x558b78d493c0
successfully generated exp 0x558b78d493e0
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d45400
called getExp. input framePtr = 0x558b78d49400
with a INFRAME access
successfully build targetExp 0x558b78d49470
successfully generated exp 0x558b78d49490
Translated indexT, which .exp = 0x558b78d49490
Ex's UnEx() called
Ex's UnEx() called
translated expT. which exp = 0x558b78d49550
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d43430
called getExp. input framePtr = 0x558b78d49570
with a INFRAME access
successfully build targetExp 0x558b78d495e0
successfully generated exp 0x558b78d49600
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d45400
called getExp. input framePtr = 0x558b78d49620
with a INFRAME access
successfully build targetExp 0x558b78d49690
successfully generated exp 0x558b78d496b0
Translated indexT, which .exp = 0x558b78d496b0
Ex's UnEx() called
Ex's UnEx() called
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x558b78d497c0
Nx's UnEx() called
called popLoop. 
Cx's UnCx() called
cond.stm = 0x558b78d45fe0
Ex's UnNx() called
la.exp = 0x558b78d49a80
Nx's UnEx() called
Add one translation layer
Entered AssignExp::Translate.
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d43430
called getExp. input framePtr = 0x558b78d49af0
with a INFRAME access
successfully build targetExp 0x558b78d49b60
successfully generated exp 0x558b78d49b80
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d45400
called getExp. input framePtr = 0x558b78d49ba0
with a INFRAME access
successfully build targetExp 0x558b78d49c10
successfully generated exp 0x558b78d49c30
Translated indexT, which .exp = 0x558b78d49c30
Ex's UnEx() called
Ex's UnEx() called
translated varKind. which exp = 0x558b78d49cf0
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
  compare access sym __RETURN__, key
  compare access sym __RETURN__, key
  compare access sym key, key
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x558b78d45a30
called getExp. input framePtr = 0x558b78d49d10
with a INFRAME access
successfully build targetExp 0x558b78d49d80
successfully generated exp 0x558b78d49da0
translated expT. which exp = 0x558b78d49da0
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
  compare access sym __RETURN__, key
  compare access sym __RETURN__, key
  compare access sym key, key
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x558b78d45a30
called getExp. input framePtr = 0x558b78d49dc0
with a INFRAME access
successfully build targetExp 0x558b78d49e30
successfully generated exp 0x558b78d49e50
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x558b78d49ea0
Nx's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function quicksort
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d451d0
called getExp. input framePtr = 0x558b78d49f90
with a INFRAME access
successfully build targetExp 0x558b78d4a000
successfully generated exp 0x558b78d4a020
comparing arg->head and formals->head
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d45400
called getExp. input framePtr = 0x558b78d4a040
with a INFRAME access
successfully build targetExp 0x558b78d4a0b0
successfully generated exp 0x558b78d4a0d0
Analyzed leftT, which.exp = 0x558b78d4a0d0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x558b78d4a110
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x558b78d3fc20
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d451d0
called getExp. input framePtr = 0x558b78d4a180
with a INFRAME access
successfully build targetExp 0x558b78d4a1f0
successfully generated exp 0x558b78d4a210
Ex's UnEx() called
[callexp] while (rawExps) => 0x558b78d3fc00
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d45400
called getExp. input framePtr = 0x558b78d4a250
with a INFRAME access
successfully build targetExp 0x558b78d4a2c0
successfully generated exp 0x558b78d4a2e0
Analyzed leftT, which.exp = 0x558b78d4a2e0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x558b78d4a320
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Ex's UnEx() called
la.exp = 0x558b78d4a400
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function quicksort
comparing arg->head and formals->head
Entered OpExp::Translate. OpCode: PLUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d45400
called getExp. input framePtr = 0x558b78d4a4a0
with a INFRAME access
successfully build targetExp 0x558b78d4a510
successfully generated exp 0x558b78d4a530
Analyzed leftT, which.exp = 0x558b78d4a530
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x558b78d4a570
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d45230
called getExp. input framePtr = 0x558b78d4a5e0
with a INFRAME access
successfully build targetExp 0x558b78d4a650
successfully generated exp 0x558b78d4a670
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x558b78d3fd80
Entered OpExp::Translate. OpCode: PLUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d45400
called getExp. input framePtr = 0x558b78d4a690
with a INFRAME access
successfully build targetExp 0x558b78d4a700
successfully generated exp 0x558b78d4a720
Analyzed leftT, which.exp = 0x558b78d4a720
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x558b78d4a760
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Ex's UnEx() called
[callexp] while (rawExps) => 0x558b78d3fd60
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d452e0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d45230
called getExp. input framePtr = 0x558b78d4a7f0
with a INFRAME access
successfully build targetExp 0x558b78d4a860
successfully generated exp 0x558b78d4a880
Ex's UnEx() called
la.exp = 0x558b78d4a910
Ex's UnEx() called
(no else) translated then, exp = 0x558b78d4a980
Cx's UnCx() called
IfExp: has no return type!
Ex's UnNx() called
la.exp = 0x558b78d4ab20
Nx's UnEx() called
LetExp translated bodyT, which.exp = 0x558b78d4ab90
bodyTranslate success. which .exp = 0x558b78d4ab90
try pop one out
try pop one out
function return value type: NULL
head->result: 0, retType->kind: 6
going to unEx bodyTranslate. Now it is actually0x558b78d4ab90
Ex's UnEx() called
bodyEx now is 0x558b78d45bd0
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
[callexp] start traversing rawExps
la.exp = 0x558b78d4aed0
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
Entered SimpleVar::Translate. this level: 0x558b78d4adc0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d42b40
called getExp. input framePtr = 0x558b78d4af60
with a INFRAME access
successfully build targetExp 0x558b78d4afd0
successfully generated exp 0x558b78d4aff0
Analyzed leftT, which.exp = 0x558b78d4aff0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x558b78d4b030
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x558b78d40170
Entered IntExp::Translate.
Ex's UnEx() called
[callexp] while (rawExps) => 0x558b78d40150
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d4adc0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d42b40
called getExp. input framePtr = 0x558b78d4b100
with a INFRAME access
successfully build targetExp 0x558b78d4b170
successfully generated exp 0x558b78d4b190
Analyzed leftT, which.exp = 0x558b78d4b190
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x558b78d4b1d0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Ex's UnEx() called
la.exp = 0x558b78d4b2b0
Ex's UnEx() called
Add one translation layer
Entered ForExp::Translate.
Entered IntExp::Translate.
loTrans success. loTrans.exp = 0x558b78d4b340
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d4adc0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d42b40
called getExp. input framePtr = 0x558b78d4b360
with a INFRAME access
successfully build targetExp 0x558b78d4b3d0
successfully generated exp 0x558b78d4b3f0
Analyzed leftT, which.exp = 0x558b78d4b3f0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x558b78d4b430
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
hiTrans success. hiTrans.exp = 0x558b78d4b480
Entered AllocLocal. escape? 1
create newAcc fine
Entered AllocLocal. escape? 1
create newAcc fine
called addLoop. 
Entered SeqExp::Translate.
Add one translation layer
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x558b78d4adc0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d43430
called getExp. input framePtr = 0x558b78d4b7e0
with a INFRAME access
successfully build targetExp 0x558b78d4b850
successfully generated exp 0x558b78d4b870
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d4adc0; parent level: 0x558b78d41b60
  compare access sym __l__, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x558b78d4b530
called getExp. input framePtr = 0x558b78d4b890
with a INFRAME access
successfully build targetExp 0x558b78d4b900
successfully generated exp 0x558b78d4b920
Translated indexT, which .exp = 0x558b78d4b920
Ex's UnEx() called
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x558b78d403b0
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. this level: 0x558b78d4adc0; parent level: 0x558b78d41b60
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
going to call getExp with access: 0x558b78d43430
called getExp. input framePtr = 0x558b78d4ba00
with a INFRAME access
successfully build targetExp 0x558b78d4ba70
successfully generated exp 0x558b78d4ba90
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558b78d4adc0; parent level: 0x558b78d41b60
  compare access sym __l__, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x558b78d4b530
called getExp. input framePtr = 0x558b78d4bab0
with a INFRAME access
successfully build targetExp 0x558b78d4bb20
successfully generated exp 0x558b78d4bb40
Translated indexT, which .exp = 0x558b78d4bb40
Ex's UnEx() called
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x558b78d4bc90
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x558b78d40480
Entered StringExp::Translate.
Ex's UnEx() called
la.exp = 0x558b78d4bef0
Ex's UnEx() called
called popLoop. 
bodyTrans success. bodyTrans.exp = 0x558b78d4bf60
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x558b78d4bf80
with a INFRAME access
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x558b78d4c010
with a INFRAME access
Ex's UnEx() called
Ex's UnEx() called
Ex's UnNx() called
la.exp = 0x558b78d4c4a0
Nx's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x558b78d40630
Entered StringExp::Translate.
Ex's UnEx() called
la.exp = 0x558b78d4c7a0
Ex's UnEx() called
bodyTranslate success. which .exp = 0x558b78d4c810
function return value type: NULL
head->result: 0, retType->kind: 6
going to unEx bodyTranslate. Now it is actually0x558b78d4c810
Ex's UnEx() called
bodyEx now is 0x558b78d4ae20
returnValue register requested
gonna return existed returnValue register
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Add one translation layer
Entered CallExp::Translate.
found function dosort
Call operation returns an 6
[callexp] start traversing rawExps
la.exp = 0x558b78d4c9d0
Ex's UnEx() called
LetExp translated bodyT, which.exp = 0x558b78d4c9f0
Ex's UnNx() called
 ~~~~ Completed Translation ~~~~
Ex's UnEx() called
gonna print a EseqExp~
My stm = 0x558b78d4c900, exp = 0x558b78d4c9a0
gonna print a ExpStm~
gonna print a ConstExp~
gonna print a CallExp~
gonna print a NameExp~
 ~~~~ Completed Printing ~~~~
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] MoveStm::Canon called
[canon] EseqExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x558b78d449e0, 0x558b78d44d80
[canon] SeqStm::Canon called. this->left, right = 0x558b78d44a10, 0x558b78d44d50
[canon] SeqStm::Canon called. this->left, right = 0x558b78d44a40, 0x558b78d44d20
[canon] SeqStm::Canon called. this->left, right = 0x558b78d44a80, 0x558b78d44cf0
[canon] SeqStm::Canon called. this->left, right = 0x558b78d44aa0, 0x558b78d44cc0
[canon] SeqStm::Canon called. this->left, right = 0x558b78d44ac0, 0x558b78d44c90
[canon] SeqStm::Canon called. this->left, right = 0x558b78d44b00, 0x558b78d44c60
[canon] SeqStm::Canon called. this->left, right = 0x558b78d44b70, 0x558b78d44c30
[canon] SeqStm::Canon called. this->left, right = 0x558b78d44be0, 0x558b78d44c10
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d44950, 0x558b78d44970
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d449c0, 0x558b78d44b20
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d44950, 0x558b78d44970
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d44950, 0x558b78d44970
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d448c0, 0x558b78d448e0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d44200, 0x558b78d44310
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d44190, 0x558b78d441b0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d442b0, 0x558b78d442f0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d44240, 0x558b78d44260
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d44420, 0x558b78d444d0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d443b0, 0x558b78d443d0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d44460, 0x558b78d44480
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d44950, 0x558b78d44970
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d448c0, 0x558b78d448e0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d44950, 0x558b78d44970
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d448c0, 0x558b78d448e0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d43d60, 0x558b78d43da0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d43cf0, 0x558b78d43d10
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x558b78d45d60, 0x558b78d4aac0
[canon] SeqStm::Canon called. this->left, right = 0x558b78d4aa30, 0x558b78d4aa90
[canon] SeqStm::Canon called. this->left, right = 0x558b78d4aa50, 0x558b78d4aa70
[canon] LabelStm::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d4a7f0, 0x558b78d4a810
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d4a700, 0x558b78d4a740
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d4a690, 0x558b78d4a6b0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d4a2c0, 0x558b78d4a300
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d4a250, 0x558b78d4a270
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d4a180, 0x558b78d4a1a0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d49b60, 0x558b78d49c70
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d49af0, 0x558b78d49b10
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d49c10, 0x558b78d49c50
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d49ba0, 0x558b78d49bc0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d49d10, 0x558b78d49d30
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x558b78d498a0, 0x558b78d49a20
[canon] SeqStm::Canon called. this->left, right = 0x558b78d45fe0, 0x558b78d499f0
[canon] SeqStm::Canon called. this->left, right = 0x558b78d498c0, 0x558b78d499c0
[canon] SeqStm::Canon called. this->left, right = 0x558b78d498e0, 0x558b78d49990
[canon] SeqStm::Canon called. this->left, right = 0x558b78d49940, 0x558b78d49970
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d491a0, 0x558b78d492b0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d49130, 0x558b78d49150
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d49250, 0x558b78d49290
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d491e0, 0x558b78d49200
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d493c0, 0x558b78d494d0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d49350, 0x558b78d49370
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d49470, 0x558b78d494b0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d49400, 0x558b78d49420
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x558b78d48eb0, 0x558b78d49010
[canon] SeqStm::Canon called. this->left, right = 0x558b78d48e30, 0x558b78d48fe0
[canon] SeqStm::Canon called. this->left, right = 0x558b78d48ed0, 0x558b78d48fb0
[canon] SeqStm::Canon called. this->left, right = 0x558b78d48dc0, 0x558b78d48f80
[canon] SeqStm::Canon called. this->left, right = 0x558b78d48f30, 0x558b78d48f60
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d48a90, 0x558b78d48ab0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d48bb0, 0x558b78d48bf0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d48b40, 0x558b78d48b60
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] EseqExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d483c0, 0x558b78d483e0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x558b78d47e40, 0x558b78d48950
[canon] SeqStm::Canon called. this->left, right = 0x558b78d48450, 0x558b78d48920
[canon] SeqStm::Canon called. this->left, right = 0x558b78d48780, 0x558b78d488f0
[canon] SeqStm::Canon called. this->left, right = 0x558b78d487f0, 0x558b78d488c0
[canon] SeqStm::Canon called. this->left, right = 0x558b78d48820, 0x558b78d48890
[canon] SeqStm::Canon called. this->left, right = 0x558b78d48840, 0x558b78d48870
[canon] LabelStm::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d483c0, 0x558b78d483e0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d483c0, 0x558b78d483e0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] LabelStm::Canon called
[canon] MoveStm::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d47ef0, 0x558b78d47f10
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d48010, 0x558b78d48120
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d47fa0, 0x558b78d47fc0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d480c0, 0x558b78d48100
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d48050, 0x558b78d48070
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d47ce0, 0x558b78d47d00
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d47d90, 0x558b78d47db0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d47600, 0x558b78d47710
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d47590, 0x558b78d475b0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d476b0, 0x558b78d476f0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d47640, 0x558b78d47660
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d47820, 0x558b78d47930
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d477b0, 0x558b78d477d0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d478d0, 0x558b78d47910
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d47860, 0x558b78d47880
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x558b78d47360, 0x558b78d474c0
[canon] SeqStm::Canon called. this->left, right = 0x558b78d472e0, 0x558b78d47490
[canon] SeqStm::Canon called. this->left, right = 0x558b78d47380, 0x558b78d47460
[canon] SeqStm::Canon called. this->left, right = 0x558b78d47270, 0x558b78d47430
[canon] SeqStm::Canon called. this->left, right = 0x558b78d473e0, 0x558b78d47410
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d44100, 0x558b78d46f60
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d47060, 0x558b78d470a0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d46ff0, 0x558b78d47010
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] EseqExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d46870, 0x558b78d46890
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x558b78d462f0, 0x558b78d46e00
[canon] SeqStm::Canon called. this->left, right = 0x558b78d46900, 0x558b78d46dd0
[canon] SeqStm::Canon called. this->left, right = 0x558b78d46c30, 0x558b78d46da0
[canon] SeqStm::Canon called. this->left, right = 0x558b78d46ca0, 0x558b78d46d70
[canon] SeqStm::Canon called. this->left, right = 0x558b78d46cd0, 0x558b78d46d40
[canon] SeqStm::Canon called. this->left, right = 0x558b78d46cf0, 0x558b78d46d20
[canon] LabelStm::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d46870, 0x558b78d46890
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d46870, 0x558b78d46890
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] LabelStm::Canon called
[canon] MoveStm::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d463a0, 0x558b78d463c0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d464c0, 0x558b78d465d0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d46450, 0x558b78d46470
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d46570, 0x558b78d465b0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d46500, 0x558b78d46520
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d46190, 0x558b78d461b0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d46240, 0x558b78d46260
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] ExpStm::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d45e80, 0x558b78d45ea0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d45f30, 0x558b78d45f50
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] ExpStm::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d45c00, 0x558b78d45c20
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d45cb0, 0x558b78d45cd0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x558b78d4c0a0, 0x558b78d4c440
[canon] SeqStm::Canon called. this->left, right = 0x558b78d4c0d0, 0x558b78d4c410
[canon] SeqStm::Canon called. this->left, right = 0x558b78d4c100, 0x558b78d4c3e0
[canon] SeqStm::Canon called. this->left, right = 0x558b78d4c140, 0x558b78d4c3b0
[canon] SeqStm::Canon called. this->left, right = 0x558b78d4c160, 0x558b78d4c380
[canon] SeqStm::Canon called. this->left, right = 0x558b78d4c180, 0x558b78d4c350
[canon] SeqStm::Canon called. this->left, right = 0x558b78d4c1c0, 0x558b78d4c320
[canon] SeqStm::Canon called. this->left, right = 0x558b78d4c230, 0x558b78d4c2f0
[canon] SeqStm::Canon called. this->left, right = 0x558b78d4c2a0, 0x558b78d4c2d0
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d4c010, 0x558b78d4c030
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d4c080, 0x558b78d4c1e0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d4c010, 0x558b78d4c030
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d4c010, 0x558b78d4c030
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d4bf80, 0x558b78d4bfa0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d4ba70, 0x558b78d4bb80
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d4ba00, 0x558b78d4ba20
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d4bb20, 0x558b78d4bb60
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d4bab0, 0x558b78d4bad0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d4c010, 0x558b78d4c030
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d4bf80, 0x558b78d4bfa0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d4c010, 0x558b78d4c030
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d4bf80, 0x558b78d4bfa0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d4b3d0, 0x558b78d4b410
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d4b360, 0x558b78d4b380
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d4b170, 0x558b78d4b1b0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x558b78d4b100, 0x558b78d4b120
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] ConstExp::Canon called
