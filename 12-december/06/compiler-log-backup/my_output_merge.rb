Called TranslateProgram(A::Exp* root).
Entered LetExp::Translate.
Entered TypeDec::Translate.
queue.size() <= 1
Entered RecordTy::Translate.
 make_fieldlist kind called. any
declared type any, id: 0x56048c8c7590
Entered VarDec::Translate. going to declare var: buffer
Entered CallExp::Translate.
found function getchar
Call operation returns an 3
implicit type: 0x56048aef0108
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return new framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x56048c8c7cb0
Entered FunctionDec::Translate.
To-declare function name: readint
constructing formal: any, type: any, id: 0x56048c8c7590
 param +1
===== PRINT BLIST =====
# __STATIC_LINK__
# any
I'm entering the evil part of translate, which didn't give me a good exp 
called new level. label: readint
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
created new InFrameAccess. sym: any
Entered LetExp::Translate.
Entered VarDec::Translate. going to declare var: i
Entered IntExp::Translate.
implicit type: 0x56048aef0104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return existed framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x56048c8c8100
Entered FunctionDec::Translate.
To-declare function name: isdigit
constructing formal: s, type: string, id: 0x56048aef0108
 param +1
===== PRINT BLIST =====
# __STATIC_LINK__
# s
I'm entering the evil part of translate, which didn't give me a good exp 
called new level. label: isdigit
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
created new InFrameAccess. sym: s
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: GE_OP
Entered CallExp::Translate.
found function ord
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8c8410; parent level: 0x56048c8c7f10
accessList traverse over
I'll go one layer above. 
  compare access sym i, buffer
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, buffer
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8c76c0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8c84d0
successfully generated exp 0x56048c8c84f0
Call operation returns an 2
Analyzed leftT, which.exp = 0x56048c8c8560
Entered CallExp::Translate.
found function ord
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 2
Analyzed rightT, which.exp = 0x56048c8c86d0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x56048c8c8770
Entered OpExp::Translate. OpCode: LE_OP
Entered CallExp::Translate.
found function ord
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8c8410; parent level: 0x56048c8c7f10
accessList traverse over
I'll go one layer above. 
  compare access sym i, buffer
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, buffer
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8c76c0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8c8840
successfully generated exp 0x56048c8c8860
Call operation returns an 2
Analyzed leftT, which.exp = 0x56048c8c88d0
Entered CallExp::Translate.
found function ord
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 2
Analyzed rightT, which.exp = 0x56048c8c8a40
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
(exists else) translated then, exp = 0x56048c8c8ae0
Entered IntExp::Translate.
(exists else) translated else, exp = 0x56048c8c8b30
Entered AllocLocal. escape? 1
create newAcc fine
framePointer register requested
gonna return existed framePointer register
called getExp 
with a INFRAME access
Cx's UnCx() called
Cx's UnEx() called
Ex's UnEx() called
bodyTranslate success. which .exp = 0x56048c8c9280
try pop one out
function return value type: int
head->result: 0x56048c8c0b20, retType->kind: 2
going to unEx bodyTranslate. Now it is actually0x56048c8c9280
Ex's UnEx() called
bodyEx now is 0x56048c8c9250
returnValue register requested
gonna return new returnValue register
To-declare function name: skipto
===== PRINT BLIST =====
# __STATIC_LINK__
I'm entering the evil part of translate, which didn't give me a good exp 
called new level. label: skipto
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
Entered WhileExp::Translate.
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: EQ_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8c9530; parent level: 0x56048c8c7f10
accessList traverse over
I'll go one layer above. 
  compare access sym i, buffer
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, buffer
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8c76c0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8c95c0
successfully generated exp 0x56048c8c95e0
Analyzed leftT, which.exp = 0x56048c8c95e0
Entered StringExp::Translate.
Analyzed rightT, which.exp = 0x56048c8c96b0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 3 and <type> 3
translated testT. exp = 0x56048c8c9750
Entered IntExp::Translate.
(exists else) translated then, exp = 0x56048c8c97a0
Entered OpExp::Translate. OpCode: EQ_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8c9530; parent level: 0x56048c8c7f10
accessList traverse over
I'll go one layer above. 
  compare access sym i, buffer
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, buffer
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8c76c0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8c9830
successfully generated exp 0x56048c8c9850
Analyzed leftT, which.exp = 0x56048c8c9850
Entered StringExp::Translate.
Analyzed rightT, which.exp = 0x56048c8c9920
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 3 and <type> 3
(exists else) translated else, exp = 0x56048c8c99c0
Entered AllocLocal. escape? 1
create newAcc fine
framePointer register requested
gonna return existed framePointer register
called getExp 
with a INFRAME access
Cx's UnCx() called
Ex's UnEx() called
Cx's UnEx() called
Entered AssignExp::Translate.
Entered SimpleVar::Translate. this level: 0x56048c8c9530; parent level: 0x56048c8c7f10
  compare access sym __RETURN__, buffer
accessList traverse over
I'll go one layer above. 
  compare access sym i, buffer
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, buffer
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8c76c0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8ca1b0
successfully generated exp 0x56048c8ca1d0
translated varKind. which exp = 0x56048c8ca1d0
Entered CallExp::Translate.
found function getchar
Call operation returns an 3
translated expT. which exp = 0x56048c8ca270
Entered CallExp::Translate.
found function getchar
Call operation returns an 3
Ex's UnEx() called
Ex's UnEx() called
Ex's UnCx() called
cond.stm = 0x56048c8ca430
Nx's UnNx() called
bodyTranslate success. which .exp = 0x56048c8ca670
function return value type: NULL
head->result: 0, retType->kind: 6
going to unEx bodyTranslate. Now it is actually0x56048c8ca670
Nx's UnEx() called
bodyEx now is 0x56048c8ca6b0
returnValue register requested
gonna return existed returnValue register
Entered SeqExp::Translate.
Add one translation layer
Entered CallExp::Translate.
found function skipto
Call operation returns an 6
la.exp = 0x56048c8ca840
Ex's UnEx() called
Add one translation layer
Entered AssignExp::Translate.
Entered SimpleVar::Translate.
Entered SimpleVar::Translate. this level: 0x56048c8c7f10; parent level: 0x56048c8c6610
  compare access sym i, any
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, any
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym any, any
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8c7eb0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8ca8d0
successfully generated exp 0x56048c8ca8f0
Entered SimpleVar::Translate. this level: 0x56048c8c7f10; parent level: 0x56048c8c6610
  compare access sym i, any
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, any
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym any, any
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8c7eb0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8ca980
successfully generated exp 0x56048c8ca9a0
checking field any and any
Ex's UnEx() called
translated varKind. which exp = 0x56048c8caa30
Entered CallExp::Translate.
found function isdigit
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8c7f10; parent level: 0x56048c8c6610
  compare access sym i, buffer
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, buffer
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8c76c0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8caaf0
successfully generated exp 0x56048c8cab10
Call operation returns an 2
translated expT. which exp = 0x56048c8cab80
Entered CallExp::Translate.
found function isdigit
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8c7f10; parent level: 0x56048c8c6610
  compare access sym i, buffer
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, buffer
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8c76c0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8cac40
successfully generated exp 0x56048c8cac60
Call operation returns an 2
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x56048c8cad20
Nx's UnEx() called
Add one translation layer
Entered WhileExp::Translate.
Entered CallExp::Translate.
found function isdigit
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8c7f10; parent level: 0x56048c8c6610
  compare access sym i, buffer
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, buffer
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8c76c0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8cae80
successfully generated exp 0x56048c8caea0
Call operation returns an 2
Entered SeqExp::Translate.
Add one translation layer
Entered AssignExp::Translate.
Entered SimpleVar::Translate. this level: 0x56048c8c7f10; parent level: 0x56048c8c6610
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8c7fc0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8cafd0
successfully generated exp 0x56048c8caff0
translated varKind. which exp = 0x56048c8caff0
Entered OpExp::Translate. OpCode: MINUS_OP
Entered OpExp::Translate. OpCode: PLUS_OP
Entered OpExp::Translate. OpCode: TIMES_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8c7f10; parent level: 0x56048c8c6610
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8c7fc0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8cb080
successfully generated exp 0x56048c8cb0a0
Analyzed leftT, which.exp = 0x56048c8cb0a0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x56048c8cb0e0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Analyzed leftT, which.exp = 0x56048c8cb130
Entered CallExp::Translate.
found function ord
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8c7f10; parent level: 0x56048c8c6610
  compare access sym i, buffer
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, buffer
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8c76c0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8cb1f0
successfully generated exp 0x56048c8cb210
Call operation returns an 2
Analyzed rightT, which.exp = 0x56048c8cb280
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Analyzed leftT, which.exp = 0x56048c8cb2d0
Entered CallExp::Translate.
found function ord
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 2
Analyzed rightT, which.exp = 0x56048c8cb440
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated expT. which exp = 0x56048c8cb490
Entered OpExp::Translate. OpCode: MINUS_OP
Entered OpExp::Translate. OpCode: PLUS_OP
Entered OpExp::Translate. OpCode: TIMES_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8c7f10; parent level: 0x56048c8c6610
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8c7fc0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8cb520
successfully generated exp 0x56048c8cb540
Analyzed leftT, which.exp = 0x56048c8cb540
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x56048c8cb580
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Analyzed leftT, which.exp = 0x56048c8cb5d0
Entered CallExp::Translate.
found function ord
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8c7f10; parent level: 0x56048c8c6610
  compare access sym i, buffer
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, buffer
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8c76c0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8cb690
successfully generated exp 0x56048c8cb6b0
Call operation returns an 2
Analyzed rightT, which.exp = 0x56048c8cb720
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Analyzed leftT, which.exp = 0x56048c8cb770
Entered CallExp::Translate.
found function ord
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 2
Analyzed rightT, which.exp = 0x56048c8cb8e0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x56048c8cb980
Nx's UnEx() called
Add one translation layer
Entered AssignExp::Translate.
Entered SimpleVar::Translate. this level: 0x56048c8c7f10; parent level: 0x56048c8c6610
  compare access sym i, buffer
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, buffer
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8c76c0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8cba60
successfully generated exp 0x56048c8cba80
translated varKind. which exp = 0x56048c8cba80
Entered CallExp::Translate.
found function getchar
Call operation returns an 3
translated expT. which exp = 0x56048c8cbb20
Entered CallExp::Translate.
found function getchar
Call operation returns an 3
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x56048c8cbc10
Nx's UnEx() called
Ex's UnCx() called
cond.stm = 0x56048c8cbda0
Ex's UnNx() called
la.exp = 0x56048c8cc000
Nx's UnEx() called
Add one translation layer
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8c7f10; parent level: 0x56048c8c6610
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8c7fc0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8cc130
successfully generated exp 0x56048c8cc150
la.exp = 0x56048c8cc150
Ex's UnEx() called
bodyTranslate success. which .exp = 0x56048c8cc1c0
try pop one out
function return value type: int
head->result: 0x56048c8c0b20, retType->kind: 2
going to unEx bodyTranslate. Now it is actually0x56048c8cc1c0
Ex's UnEx() called
bodyEx now is 0x56048c8ca790
returnValue register requested
gonna return existed returnValue register
Entered TypeDec::Translate.
queue.size() <= 1
Entered RecordTy::Translate.
 make_fieldlist kind called. first
 make_fieldlist kind called. rest
declared type list, id: 0x56048c8cc390
Entered FunctionDec::Translate.
To-declare function name: readlist
===== PRINT BLIST =====
# __STATIC_LINK__
I'm entering the evil part of translate, which didn't give me a good exp 
called new level. label: readlist
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
Entered LetExp::Translate.
Entered VarDec::Translate. going to declare var: any
Entered RecordExp::Translate.
Entered AllocLocal. escape? 1
create newAcc fine
called getExp 
with a INFRAME access
Entered IntExp::Translate.
Ex's UnEx() called
Going to exit from RecordExp. 
implicit type: 0x56048c8c7590
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return existed framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x56048c8cca80
Entered VarDec::Translate. going to declare var: i
Entered CallExp::Translate.
found function readint
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8cc560; parent level: 0x56048c8c6610
  compare access sym any, any
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8cc940
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8ccb40
successfully generated exp 0x56048c8ccb60
Call operation returns an 2
implicit type: 0x56048aef0104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return existed framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x56048c8ccd80
Entered SeqExp::Translate.
Add one translation layer
Entered IfExp::Translate
Entered VarExp::Translate.
analyse a FIELD var
Entered SimpleVar::Translate.
Entered SimpleVar::Translate. this level: 0x56048c8cc560; parent level: 0x56048c8c6610
  compare access sym i, any
  compare access sym any, any
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8cc940
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8cce40
successfully generated exp 0x56048c8cce60
Entered SimpleVar::Translate. this level: 0x56048c8cc560; parent level: 0x56048c8c6610
  compare access sym i, any
  compare access sym any, any
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8cc940
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8ccef0
successfully generated exp 0x56048c8ccf10
checking field any and any
Ex's UnEx() called
translated testT. exp = 0x56048c8ccfa0
Entered RecordExp::Translate.
Entered AllocLocal. escape? 1
create newAcc fine
called getExp 
with a INFRAME access
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8cc560; parent level: 0x56048c8c6610
  compare access sym , i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8ccc40
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8cd190
successfully generated exp 0x56048c8cd1b0
Ex's UnEx() called
Entered CallExp::Translate.
found function readlist
Call operation returns an 0
Ex's UnEx() called
Going to exit from RecordExp. 
(exists else) translated then, exp = 0x56048c8cd4c0
Entered NilExp::Translate.
(exists else) translated else, exp = 0x56048c8cd500
Entered AllocLocal. escape? 1
create newAcc fine
framePointer register requested
gonna return existed framePointer register
called getExp 
with a INFRAME access
Ex's UnCx() called
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x56048c8cd9e0
Ex's UnEx() called
bodyTranslate success. which .exp = 0x56048c8cda00
function return value type: list
head->result: 0x56048c8c2410, retType->kind: 1
going to unEx bodyTranslate. Now it is actually0x56048c8cda00
Ex's UnEx() called
bodyEx now is 0x56048c8ccda0
returnValue register requested
gonna return existed returnValue register
To-declare function name: merge
constructing formal: a, type: list, id: 0x56048c8cc390
 param +1
constructing formal: b, type: list, id: 0x56048c8cc390
 param +1
===== PRINT BLIST =====
# __STATIC_LINK__
# a
# b
I'm entering the evil part of translate, which didn't give me a good exp 
called new level. label: merge
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
created new InFrameAccess. sym: a
created new InFrameAccess. sym: b
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: EQ_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8cdeb0; parent level: 0x56048c8c6610
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, a
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
going to call getExp with access: 0x56048c8cdda0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8cdf40
successfully generated exp 0x56048c8cdf60
Analyzed leftT, which.exp = 0x56048c8cdf60
Entered NilExp::Translate.
Analyzed rightT, which.exp = 0x56048c8cdfa0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 0 and <type> 1
translated testT. exp = 0x56048c8ce040
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8cdeb0; parent level: 0x56048c8c6610
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, b
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym b, b
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8cde00
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8ce0e0
successfully generated exp 0x56048c8ce100
(exists else) translated then, exp = 0x56048c8ce100
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: EQ_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8cdeb0; parent level: 0x56048c8c6610
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, b
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym b, b
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8cde00
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8ce190
successfully generated exp 0x56048c8ce1b0
Analyzed leftT, which.exp = 0x56048c8ce1b0
Entered NilExp::Translate.
Analyzed rightT, which.exp = 0x56048c8ce1f0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 0 and <type> 1
translated testT. exp = 0x56048c8ce290
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8cdeb0; parent level: 0x56048c8c6610
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, a
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
going to call getExp with access: 0x56048c8cdda0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8ce330
successfully generated exp 0x56048c8ce350
(exists else) translated then, exp = 0x56048c8ce350
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: LT_OP
Entered VarExp::Translate.
analyse a FIELD var
Entered SimpleVar::Translate.
Entered SimpleVar::Translate. this level: 0x56048c8cdeb0; parent level: 0x56048c8c6610
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, a
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
going to call getExp with access: 0x56048c8cdda0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8ce3e0
successfully generated exp 0x56048c8ce400
Entered SimpleVar::Translate. this level: 0x56048c8cdeb0; parent level: 0x56048c8c6610
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, a
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
going to call getExp with access: 0x56048c8cdda0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8ce490
successfully generated exp 0x56048c8ce4b0
checking field first and first
Ex's UnEx() called
Analyzed leftT, which.exp = 0x56048c8ce540
Entered VarExp::Translate.
analyse a FIELD var
Entered SimpleVar::Translate.
Entered SimpleVar::Translate. this level: 0x56048c8cdeb0; parent level: 0x56048c8c6610
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, b
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym b, b
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8cde00
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8ce5d0
successfully generated exp 0x56048c8ce5f0
Entered SimpleVar::Translate. this level: 0x56048c8cdeb0; parent level: 0x56048c8c6610
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, b
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym b, b
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8cde00
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8ce680
successfully generated exp 0x56048c8ce6a0
checking field first and first
Ex's UnEx() called
Analyzed rightT, which.exp = 0x56048c8ce730
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x56048c8ce7d0
Entered RecordExp::Translate.
Entered AllocLocal. escape? 1
create newAcc fine
called getExp 
with a INFRAME access
Entered VarExp::Translate.
analyse a FIELD var
Entered SimpleVar::Translate.
Entered SimpleVar::Translate. this level: 0x56048c8cdeb0; parent level: 0x56048c8c6610
  compare access sym , a
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, a
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
going to call getExp with access: 0x56048c8cdda0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8ce9d0
successfully generated exp 0x56048c8ce9f0
Entered SimpleVar::Translate. this level: 0x56048c8cdeb0; parent level: 0x56048c8c6610
  compare access sym , a
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, a
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
going to call getExp with access: 0x56048c8cdda0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8cea80
successfully generated exp 0x56048c8ceaa0
checking field first and first
Ex's UnEx() called
Ex's UnEx() called
Entered CallExp::Translate.
found function merge
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a FIELD var
Entered SimpleVar::Translate.
Entered SimpleVar::Translate. this level: 0x56048c8cdeb0; parent level: 0x56048c8c6610
  compare access sym , a
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, a
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
going to call getExp with access: 0x56048c8cdda0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8cecc0
successfully generated exp 0x56048c8cece0
Entered SimpleVar::Translate. this level: 0x56048c8cdeb0; parent level: 0x56048c8c6610
  compare access sym , a
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, a
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
going to call getExp with access: 0x56048c8cdda0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8ced70
successfully generated exp 0x56048c8ced90
checking field first and rest
checking field rest and rest
Ex's UnEx() called
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8cdeb0; parent level: 0x56048c8c6610
  compare access sym , b
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, b
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym b, b
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8cde00
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8ceeb0
successfully generated exp 0x56048c8ceed0
Call operation returns an 0
Ex's UnEx() called
Going to exit from RecordExp. 
(exists else) translated then, exp = 0x56048c8cf0e0
Entered RecordExp::Translate.
Entered AllocLocal. escape? 1
create newAcc fine
called getExp 
with a INFRAME access
Entered VarExp::Translate.
analyse a FIELD var
Entered SimpleVar::Translate.
Entered SimpleVar::Translate. this level: 0x56048c8cdeb0; parent level: 0x56048c8c6610
  compare access sym , b
  compare access sym , b
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, b
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym b, b
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8cde00
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8cf2d0
successfully generated exp 0x56048c8cf2f0
Entered SimpleVar::Translate. this level: 0x56048c8cdeb0; parent level: 0x56048c8c6610
  compare access sym , b
  compare access sym , b
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, b
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym b, b
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8cde00
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8cf380
successfully generated exp 0x56048c8cf3a0
checking field first and first
Ex's UnEx() called
Ex's UnEx() called
Entered CallExp::Translate.
found function merge
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8cdeb0; parent level: 0x56048c8c6610
  compare access sym , a
  compare access sym , a
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, a
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
going to call getExp with access: 0x56048c8cdda0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8cf5c0
successfully generated exp 0x56048c8cf5e0
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a FIELD var
Entered SimpleVar::Translate.
Entered SimpleVar::Translate. this level: 0x56048c8cdeb0; parent level: 0x56048c8c6610
  compare access sym , b
  compare access sym , b
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, b
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym b, b
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8cde00
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8cf670
successfully generated exp 0x56048c8cf690
Entered SimpleVar::Translate. this level: 0x56048c8cdeb0; parent level: 0x56048c8c6610
  compare access sym , b
  compare access sym , b
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, b
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym b, b
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8cde00
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8cf720
successfully generated exp 0x56048c8cf740
checking field first and rest
checking field rest and rest
Ex's UnEx() called
Call operation returns an 0
Ex's UnEx() called
Going to exit from RecordExp. 
(exists else) translated else, exp = 0x56048c8cf9e0
Entered AllocLocal. escape? 1
create newAcc fine
framePointer register requested
gonna return existed framePointer register
called getExp 
with a INFRAME access
Cx's UnCx() called
Ex's UnEx() called
Ex's UnEx() called
(exists else) translated else, exp = 0x56048c8cfe20
Entered AllocLocal. escape? 1
create newAcc fine
framePointer register requested
gonna return existed framePointer register
called getExp 
with a INFRAME access
Cx's UnCx() called
Ex's UnEx() called
Ex's UnEx() called
(exists else) translated else, exp = 0x56048c8d0260
Entered AllocLocal. escape? 1
create newAcc fine
framePointer register requested
gonna return existed framePointer register
called getExp 
with a INFRAME access
Cx's UnCx() called
Ex's UnEx() called
Ex's UnEx() called
bodyTranslate success. which .exp = 0x56048c8d06a0
try pop one out
try pop one out
function return value type: list
head->result: 0x56048c8c2410, retType->kind: 0
going to unEx bodyTranslate. Now it is actually0x56048c8d06a0
Ex's UnEx() called
bodyEx now is 0x56048c8d0670
returnValue register requested
gonna return existed returnValue register
To-declare function name: printint
constructing formal: i, type: int, id: 0x56048aef0104
 param +1
===== PRINT BLIST =====
# __STATIC_LINK__
# i
I'm entering the evil part of translate, which didn't give me a good exp 
called new level. label: printint
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
created new InFrameAccess. sym: i
Entered LetExp::Translate.
Entered FunctionDec::Translate.
To-declare function name: f
constructing formal: i, type: int, id: 0x56048aef0104
 param +1
===== PRINT BLIST =====
# __STATIC_LINK__
# i
I'm entering the evil part of translate, which didn't give me a good exp 
called new level. label: f
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
created new InFrameAccess. sym: i
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: GT_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8d0cf0; parent level: 0x56048c8d0a40
accessList traverse over
I'll go one layer above. 
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, i
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8d0c40
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8d0d80
successfully generated exp 0x56048c8d0da0
Analyzed leftT, which.exp = 0x56048c8d0da0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x56048c8d0de0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x56048c8d0e80
Entered SeqExp::Translate.
Add one translation layer
Entered CallExp::Translate.
found function f
comparing arg->head and formals->head
Entered OpExp::Translate. OpCode: DIVIDE_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8d0cf0; parent level: 0x56048c8d0a40
accessList traverse over
I'll go one layer above. 
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, i
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8d0c40
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8d0f80
successfully generated exp 0x56048c8d0fa0
Analyzed leftT, which.exp = 0x56048c8d0fa0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x56048c8d0fe0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Call operation returns an 6
la.exp = 0x56048c8d10a0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered CallExp::Translate.
found function chr
comparing arg->head and formals->head
Entered OpExp::Translate. OpCode: PLUS_OP
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8d0cf0; parent level: 0x56048c8d0a40
accessList traverse over
I'll go one layer above. 
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, i
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8d0c40
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8d1190
successfully generated exp 0x56048c8d11b0
Analyzed leftT, which.exp = 0x56048c8d11b0
Entered OpExp::Translate. OpCode: TIMES_OP
Entered OpExp::Translate. OpCode: DIVIDE_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8d0cf0; parent level: 0x56048c8d0a40
accessList traverse over
I'll go one layer above. 
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, i
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8d0c40
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8d1240
successfully generated exp 0x56048c8d1260
Analyzed leftT, which.exp = 0x56048c8d1260
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x56048c8d12a0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Analyzed leftT, which.exp = 0x56048c8d12f0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x56048c8d1330
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Analyzed rightT, which.exp = 0x56048c8d1380
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Analyzed leftT, which.exp = 0x56048c8d13d0
Entered CallExp::Translate.
found function ord
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 2
Analyzed rightT, which.exp = 0x56048c8d1540
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Call operation returns an 3
Call operation returns an 6
la.exp = 0x56048c8d1670
Ex's UnEx() called
(no else) translated then, exp = 0x56048c8d16e0
Cx's UnCx() called
Ex's UnNx() called
bodyTranslate success. which .exp = 0x56048c8d1880
try pop one out
function return value type: NULL
head->result: 0, retType->kind: 6
going to unEx bodyTranslate. Now it is actually0x56048c8d1880
Nx's UnEx() called
bodyEx now is 0x56048c8d18c0
returnValue register requested
gonna return existed returnValue register
Entered SeqExp::Translate.
Add one translation layer
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: LT_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8d0a40; parent level: 0x56048c8c6610
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, i
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8d0990
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8d1a40
successfully generated exp 0x56048c8d1a60
Analyzed leftT, which.exp = 0x56048c8d1a60
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x56048c8d1aa0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x56048c8d1b40
Entered SeqExp::Translate.
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x56048c8d1cf0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function f
comparing arg->head and formals->head
Entered OpExp::Translate. OpCode: MINUS_OP
Entered IntExp::Translate.
Analyzed leftT, which.exp = 0x56048c8d1d60
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8d0a40; parent level: 0x56048c8c6610
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, i
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8d0990
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8d1df0
successfully generated exp 0x56048c8d1e10
Analyzed rightT, which.exp = 0x56048c8d1e10
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Call operation returns an 6
la.exp = 0x56048c8d1ed0
Ex's UnEx() called
(exists else) translated then, exp = 0x56048c8d1f40
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: GT_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8d0a40; parent level: 0x56048c8c6610
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, i
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8d0990
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8d1fd0
successfully generated exp 0x56048c8d1ff0
Analyzed leftT, which.exp = 0x56048c8d1ff0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x56048c8d2030
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x56048c8d20d0
Entered CallExp::Translate.
found function f
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8d0a40; parent level: 0x56048c8c6610
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, i
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8d0990
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8d21a0
successfully generated exp 0x56048c8d21c0
Call operation returns an 6
(exists else) translated then, exp = 0x56048c8d2230
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
(exists else) translated else, exp = 0x56048c8d23a0
Entered AllocLocal. escape? 1
create newAcc fine
framePointer register requested
gonna return existed framePointer register
called getExp 
with a INFRAME access
Cx's UnCx() called
Ex's UnEx() called
Ex's UnEx() called
(exists else) translated else, exp = 0x56048c8d27e0
Entered AllocLocal. escape? 1
create newAcc fine
framePointer register requested
gonna return existed framePointer register
called getExp 
with a INFRAME access
Cx's UnCx() called
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x56048c8d2c20
Ex's UnEx() called
bodyTranslate success. which .exp = 0x56048c8d2c40
try pop one out
function return value type: NULL
head->result: 0, retType->kind: 6
going to unEx bodyTranslate. Now it is actually0x56048c8d2c40
Ex's UnEx() called
bodyEx now is 0x56048c8d19a0
returnValue register requested
gonna return existed returnValue register
To-declare function name: printlist
constructing formal: l, type: list, id: 0x56048c8cc390
 param +1
===== PRINT BLIST =====
# __STATIC_LINK__
# l
I'm entering the evil part of translate, which didn't give me a good exp 
called new level. label: printlist
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
created new InFrameAccess. sym: l
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: EQ_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8d2f80; parent level: 0x56048c8c6610
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, l
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym l, l
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8d2ed0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8d3010
successfully generated exp 0x56048c8d3030
Analyzed leftT, which.exp = 0x56048c8d3030
Entered NilExp::Translate.
Analyzed rightT, which.exp = 0x56048c8d3070
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 0 and <type> 1
translated testT. exp = 0x56048c8d3110
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
(exists else) translated then, exp = 0x56048c8d3290
Entered SeqExp::Translate.
Add one translation layer
Entered CallExp::Translate.
found function printint
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a FIELD var
Entered SimpleVar::Translate.
Entered SimpleVar::Translate. this level: 0x56048c8d2f80; parent level: 0x56048c8c6610
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, l
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym l, l
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8d2ed0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8d3380
successfully generated exp 0x56048c8d33a0
Entered SimpleVar::Translate. this level: 0x56048c8d2f80; parent level: 0x56048c8c6610
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, l
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym l, l
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8d2ed0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8d3430
successfully generated exp 0x56048c8d3450
checking field first and first
Ex's UnEx() called
Call operation returns an 6
la.exp = 0x56048c8d3550
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x56048c8d36c0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function printlist
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a FIELD var
Entered SimpleVar::Translate.
Entered SimpleVar::Translate. this level: 0x56048c8d2f80; parent level: 0x56048c8c6610
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, l
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym l, l
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8d2ed0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8d37d0
successfully generated exp 0x56048c8d37f0
Entered SimpleVar::Translate. this level: 0x56048c8d2f80; parent level: 0x56048c8c6610
accessList traverse over
I'll go one layer above. 
  compare access sym buffer, l
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym l, l
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8d2ed0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8d3880
successfully generated exp 0x56048c8d38a0
checking field first and rest
checking field rest and rest
Ex's UnEx() called
Call operation returns an 6
la.exp = 0x56048c8d39a0
Ex's UnEx() called
(exists else) translated else, exp = 0x56048c8d3a10
Entered AllocLocal. escape? 1
create newAcc fine
framePointer register requested
gonna return existed framePointer register
called getExp 
with a INFRAME access
Cx's UnCx() called
Ex's UnEx() called
Ex's UnEx() called
bodyTranslate success. which .exp = 0x56048c8d3e50
try pop one out
function return value type: NULL
head->result: 0, retType->kind: 6
going to unEx bodyTranslate. Now it is actually0x56048c8d3e50
Ex's UnEx() called
bodyEx now is 0x56048c8d3e20
returnValue register requested
gonna return existed returnValue register
Entered VarDec::Translate. going to declare var: list1
Entered CallExp::Translate.
found function readlist
Call operation returns an 0
implicit type: 0x56048c8cc390
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return existed framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x56048c8d4150
Entered VarDec::Translate. going to declare var: list2
Entered SeqExp::Translate.
Add one translation layer
Entered AssignExp::Translate.
Entered SimpleVar::Translate. this level: 0x56048c8c6610; parent level: 0
  compare access sym list1, buffer
  compare access sym buffer, buffer
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8c76c0
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8d4210
successfully generated exp 0x56048c8d4230
translated varKind. which exp = 0x56048c8d4230
Entered CallExp::Translate.
found function getchar
Call operation returns an 3
translated expT. which exp = 0x56048c8d42d0
Entered CallExp::Translate.
found function getchar
Call operation returns an 3
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x56048c8d43c0
Nx's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function readlist
Call operation returns an 0
la.exp = 0x56048c8d44b0
Ex's UnEx() called
implicit type: 0x56048c8cc390
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return existed framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x56048c8d46d0
Entered SeqExp::Translate.
Add one translation layer
Entered CallExp::Translate.
found function printlist
comparing arg->head and formals->head
Entered CallExp::Translate.
found function merge
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8c6610; parent level: 0
  compare access sym list2, list1
  compare access sym list1, list1
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8d4010
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8d47f0
successfully generated exp 0x56048c8d4810
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x56048c8c6610; parent level: 0
  compare access sym list2, list2
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x56048c8d4590
called getExp 
with a INFRAME access
successfully build targetExp 0x56048c8d48a0
successfully generated exp 0x56048c8d48c0
Call operation returns an 0
Call operation returns an 6
la.exp = 0x56048c8d49a0
Ex's UnEx() called
Ex's UnNx() called
 ~~~~ Completed Translation ~~~~
