Called TranslateProgram(A::Exp* root).
Entered LetExp::Translate.
Entered VarDec::Translate. going to declare var: b
Entered IntExp::Translate.
explicit type0x55e319203104
implicit type: 0x55e319203104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return new framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x55e31ad37d40
Entered FunctionDec::Translate.
To-declare function name: g
constructing formal: a, type: int, id: 0x55e319203104
 param +1
===== PRINT BLIST =====
# __STATIC_LINK__
# a
I'm entering the evil part of translate, which didn't give me a good exp 
called new level. label: g
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
created new InFrameAccess. sym: a
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: GT_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55e31ad37ff0; parent level: 0x55e31ad36770
accessList traverse over
I'll go one layer above. 
  compare access sym b, a
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym a, a
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55e31ad37f40
called getExp. input framePtr = 0x55e31ad38010
with a INFRAME access
successfully build targetExp 0x55e31ad38080
successfully generated exp 0x55e31ad380a0
Analyzed leftT, which.exp = 0x55e31ad380a0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55e31ad380e0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x55e31ad38180
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x55e31ad35010
Entered StringExp::Translate.
Ex's UnEx() called
(exists else) translated then, exp = 0x55e31ad38430
Entered AssignExp::Translate.
Entered SimpleVar::Translate. this level: 0x55e31ad37ff0; parent level: 0x55e31ad36770
accessList traverse over
I'll go one layer above. 
  compare access sym b, b
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55e31ad37750
called getExp. input framePtr = 0x55e31ad38450
with a INFRAME access
successfully build targetExp 0x55e31ad384c0
successfully generated exp 0x55e31ad384e0
translated varKind. which exp = 0x55e31ad384e0
Entered IntExp::Translate.
translated expT. which exp = 0x55e31ad38520
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
(exists else) translated else, exp = 0x55e31ad385b0
Entered AllocLocal. escape? 1
create newAcc fine
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x55e31ad386e0
with a INFRAME access
Cx's UnCx() called
IfExp: has a return type!
Ex's UnEx() called
Nx's UnEx() called
bodyTranslate success. which .exp = 0x55e31ad38a40
try pop one out
function return value type: NULL
head->result: 0, retType->kind: 6
going to unEx bodyTranslate. Now it is actually0x55e31ad38a40
Ex's UnEx() called
bodyEx now is 0x55e31ad38a10
returnValue register requested
gonna return new returnValue register
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Add one translation layer
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55e31ad36770; parent level: 0
  compare access sym b, b
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55e31ad37750
called getExp. input framePtr = 0x55e31ad38c30
with a INFRAME access
successfully build targetExp 0x55e31ad38ca0
successfully generated exp 0x55e31ad38cc0
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x55e31ad35290
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55e31ad36770; parent level: 0
  compare access sym b, b
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55e31ad37750
called getExp. input framePtr = 0x55e31ad38ce0
with a INFRAME access
successfully build targetExp 0x55e31ad38d50
successfully generated exp 0x55e31ad38d70
Ex's UnEx() called
la.exp = 0x55e31ad38e00
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x55e31ad35360
Entered StringExp::Translate.
Ex's UnEx() called
la.exp = 0x55e31ad39060
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function g
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x55e31ad353d0
Entered IntExp::Translate.
Ex's UnEx() called
la.exp = 0x55e31ad391f0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55e31ad36770; parent level: 0
  compare access sym b, b
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55e31ad37750
called getExp. input framePtr = 0x55e31ad39290
with a INFRAME access
successfully build targetExp 0x55e31ad39300
successfully generated exp 0x55e31ad39320
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x55e31ad35460
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55e31ad36770; parent level: 0
  compare access sym b, b
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55e31ad37750
called getExp. input framePtr = 0x55e31ad39340
with a INFRAME access
successfully build targetExp 0x55e31ad393b0
successfully generated exp 0x55e31ad393d0
Ex's UnEx() called
la.exp = 0x55e31ad39460
Ex's UnEx() called
LetExp translated bodyT, which.exp = 0x55e31ad394d0
Ex's UnNx() called
 ~~~~ Completed Translation ~~~~
Ex's UnEx() called
gonna print a EseqExp~
My stm = 0x55e31ad38bb0, exp = 0x55e31ad394a0
gonna print a ExpStm~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x55e31ad39480, exp = 0x55e31ad39430
gonna print a ExpStm~
gonna print a EseqExp~
My stm = 0x55e31ad39210, exp = 0x55e31ad391c0
gonna print a ExpStm~
gonna print a EseqExp~
My stm = 0x55e31ad39080, exp = 0x55e31ad39030
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a CallExp~
gonna print a NameExp~
gonna print a NameExp~
gonna print a CallExp~
gonna print a NameExp~
gonna print a ConstExp~
gonna print a CallExp~
gonna print a NameExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
 ~~~~ Completed Printing ~~~~
[canon] MoveStm::Canon called
[canon] EseqExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e31ad386e0, 0x55e31ad38700
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x55e31ad38100, 0x55e31ad389b0
[canon] SeqStm::Canon called. this->left, right = 0x55e31ad38770, 0x55e31ad38980
[canon] SeqStm::Canon called. this->left, right = 0x55e31ad38790, 0x55e31ad38950
[canon] SeqStm::Canon called. this->left, right = 0x55e31ad38800, 0x55e31ad38920
[canon] SeqStm::Canon called. this->left, right = 0x55e31ad38830, 0x55e31ad388f0
[canon] SeqStm::Canon called. this->left, right = 0x55e31ad388a0, 0x55e31ad388d0
[canon] LabelStm::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e31ad386e0, 0x55e31ad38700
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] EseqExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e31ad38450, 0x55e31ad38470
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] MoveStm::Canon called
[canon] TempExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e31ad38010, 0x55e31ad38030
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e31ad39340, 0x55e31ad39360
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e31ad38ce0, 0x55e31ad38d00
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] ConstExp::Canon called
