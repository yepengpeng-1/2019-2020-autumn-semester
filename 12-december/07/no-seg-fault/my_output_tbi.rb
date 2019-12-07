Called TranslateProgram(A::Exp* root).
Entered LetExp::Translate.
Entered VarDec::Translate. going to declare var: N
Entered IntExp::Translate.
implicit type: 0x55e38514e104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return new framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x55e386b12120
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
loTrans success. loTrans.exp = 0x55e386b12370
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55e386b122c0; parent level: 0x55e386b10af0
accessList traverse over
I'll go one layer above. 
  compare access sym N, N
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55e386b11b30
called getExp. input framePtr = 0x55e386b12390
with a INFRAME access
successfully build targetExp 0x55e386b12400
successfully generated exp 0x55e386b12420
Analyzed leftT, which.exp = 0x55e386b12420
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55e386b12460
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
hiTrans success. hiTrans.exp = 0x55e386b124b0
Entered AllocLocal. escape? 1
create newAcc fine
Entered AllocLocal. escape? 1
create newAcc fine
called addLoop. 
Entered SeqExp::Translate.
Add one translation layer
Entered ForExp::Translate.
Entered IntExp::Translate.
loTrans success. loTrans.exp = 0x55e386b12850
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55e386b122c0; parent level: 0x55e386b10af0
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
going to call getExp with access: 0x55e386b11b30
called getExp. input framePtr = 0x55e386b12870
with a INFRAME access
successfully build targetExp 0x55e386b128e0
successfully generated exp 0x55e386b12900
Analyzed leftT, which.exp = 0x55e386b12900
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55e386b12940
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
hiTrans success. hiTrans.exp = 0x55e386b12990
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
Entered SimpleVar::Translate. this level: 0x55e386b122c0; parent level: 0x55e386b10af0
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
going to call getExp with access: 0x55e386b12560
called getExp. input framePtr = 0x55e386b127a0
with a INFRAME access
successfully build targetExp 0x55e386b12cf0
successfully generated exp 0x55e386b12d10
Analyzed leftT, which.exp = 0x55e386b12d10
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55e386b122c0; parent level: 0x55e386b10af0
  compare access sym __l__, j
  compare access sym j, j
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55e386b12a40
called getExp. input framePtr = 0x55e386b12d30
with a INFRAME access
successfully build targetExp 0x55e386b12da0
successfully generated exp 0x55e386b12dc0
Analyzed rightT, which.exp = 0x55e386b12dc0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x55e386b12e60
Entered StringExp::Translate.
(exists else) translated then, exp = 0x55e386b12f40
Entered StringExp::Translate.
(exists else) translated else, exp = 0x55e386b13010
Entered AllocLocal. escape? 1
create newAcc fine
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x55e386b13140
with a INFRAME access
Cx's UnCx() called
IfExp: has a return type!
Ex's UnEx() called
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x55e386b0f420
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: GT_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55e386b122c0; parent level: 0x55e386b10af0
  compare access sym __RETURN__, i
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
going to call getExp with access: 0x55e386b12560
called getExp. input framePtr = 0x55e386b13470
with a INFRAME access
successfully build targetExp 0x55e386b134e0
successfully generated exp 0x55e386b13500
Analyzed leftT, which.exp = 0x55e386b13500
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55e386b122c0; parent level: 0x55e386b10af0
  compare access sym __RETURN__, j
  compare access sym __l__, j
  compare access sym j, j
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55e386b12a40
called getExp. input framePtr = 0x55e386b13520
with a INFRAME access
successfully build targetExp 0x55e386b13590
successfully generated exp 0x55e386b135b0
Analyzed rightT, which.exp = 0x55e386b135b0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x55e386b13650
Entered StringExp::Translate.
(exists else) translated then, exp = 0x55e386b13730
Entered StringExp::Translate.
(exists else) translated else, exp = 0x55e386b13800
Entered AllocLocal. escape? 1
create newAcc fine
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x55e386b13930
with a INFRAME access
Cx's UnCx() called
IfExp: has a return type!
Ex's UnEx() called
Ex's UnEx() called
Ex's UnEx() called
called popLoop. 
bodyTrans success. bodyTrans.exp = 0x55e386b13cd0
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x55e386b13cf0
with a INFRAME access
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x55e386b13d80
with a INFRAME access
Ex's UnEx() called
Ex's UnEx() called
Ex's UnNx() called
la.exp = 0x55e386b14210
Nx's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x55e386b0f550
Entered StringExp::Translate.
Ex's UnEx() called
la.exp = 0x55e386b144c0
Ex's UnEx() called
called popLoop. 
bodyTrans success. bodyTrans.exp = 0x55e386b14530
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x55e386b14550
with a INFRAME access
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x55e386b145e0
with a INFRAME access
Ex's UnEx() called
Ex's UnEx() called
Ex's UnNx() called
la.exp = 0x55e386b14a70
Nx's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x55e386b0f700
Entered StringExp::Translate.
Ex's UnEx() called
la.exp = 0x55e386b14d20
Ex's UnEx() called
bodyTranslate success. which .exp = 0x55e386b14d90
function return value type: NULL
head->result: 0, retType->kind: 6
going to unEx bodyTranslate. Now it is actually0x55e386b14d90
Ex's UnEx() called
bodyEx now is 0x55e386b12320
returnValue register requested
gonna return new returnValue register
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Add one translation layer
Entered CallExp::Translate.
found function printb
Call operation returns an 6
[callexp] start traversing rawExps
la.exp = 0x55e386b14fd0
Ex's UnEx() called
LetExp translated bodyT, which.exp = 0x55e386b14ff0
Ex's UnNx() called
 ~~~~ Completed Translation ~~~~
Ex's UnEx() called
gonna print a EseqExp~
My stm = 0x55e386b14f00, exp = 0x55e386b14fa0
gonna print a ExpStm~
gonna print a ConstExp~
gonna print a CallExp~
gonna print a NameExp~
 ~~~~ Completed Printing ~~~~
[canon] MoveStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x55e386b14670, 0x55e386b14a10
[canon] SeqStm::Canon called. this->left, right = 0x55e386b146a0, 0x55e386b149e0
[canon] SeqStm::Canon called. this->left, right = 0x55e386b146d0, 0x55e386b149b0
[canon] SeqStm::Canon called. this->left, right = 0x55e386b14710, 0x55e386b14980
[canon] SeqStm::Canon called. this->left, right = 0x55e386b14730, 0x55e386b14950
[canon] SeqStm::Canon called. this->left, right = 0x55e386b14750, 0x55e386b14920
[canon] SeqStm::Canon called. this->left, right = 0x55e386b14790, 0x55e386b148f0
[canon] SeqStm::Canon called. this->left, right = 0x55e386b14800, 0x55e386b148c0
[canon] SeqStm::Canon called. this->left, right = 0x55e386b14870, 0x55e386b148a0
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e386b145e0, 0x55e386b14600
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e386b14650, 0x55e386b147b0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e386b145e0, 0x55e386b14600
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e386b145e0, 0x55e386b14600
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e386b14550, 0x55e386b14570
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x55e386b13e10, 0x55e386b141b0
[canon] SeqStm::Canon called. this->left, right = 0x55e386b13e40, 0x55e386b14180
[canon] SeqStm::Canon called. this->left, right = 0x55e386b13e70, 0x55e386b14150
[canon] SeqStm::Canon called. this->left, right = 0x55e386b13eb0, 0x55e386b14120
[canon] SeqStm::Canon called. this->left, right = 0x55e386b13ed0, 0x55e386b140f0
[canon] SeqStm::Canon called. this->left, right = 0x55e386b13ef0, 0x55e386b140c0
[canon] SeqStm::Canon called. this->left, right = 0x55e386b13f30, 0x55e386b14090
[canon] SeqStm::Canon called. this->left, right = 0x55e386b13fa0, 0x55e386b14060
[canon] SeqStm::Canon called. this->left, right = 0x55e386b14010, 0x55e386b14040
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e386b13d80, 0x55e386b13da0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e386b13df0, 0x55e386b13f50
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e386b13d80, 0x55e386b13da0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e386b13d80, 0x55e386b13da0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e386b13cf0, 0x55e386b13d10
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] EseqExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e386b13930, 0x55e386b13950
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x55e386b135d0, 0x55e386b13bb0
[canon] SeqStm::Canon called. this->left, right = 0x55e386b139c0, 0x55e386b13b80
[canon] SeqStm::Canon called. this->left, right = 0x55e386b139e0, 0x55e386b13b50
[canon] SeqStm::Canon called. this->left, right = 0x55e386b13a50, 0x55e386b13b20
[canon] SeqStm::Canon called. this->left, right = 0x55e386b13a80, 0x55e386b13af0
[canon] SeqStm::Canon called. this->left, right = 0x55e386b13aa0, 0x55e386b13ad0
[canon] LabelStm::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e386b13930, 0x55e386b13950
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] NameExp::Canon called
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e386b13930, 0x55e386b13950
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] NameExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e386b13470, 0x55e386b13490
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e386b13520, 0x55e386b13540
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e386b13d80, 0x55e386b13da0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e386b13cf0, 0x55e386b13d10
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e386b13d80, 0x55e386b13da0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e386b13cf0, 0x55e386b13d10
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e386b128e0, 0x55e386b12920
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e386b12870, 0x55e386b12890
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e386b145e0, 0x55e386b14600
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e386b14550, 0x55e386b14570
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e386b145e0, 0x55e386b14600
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e386b14550, 0x55e386b14570
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e386b12400, 0x55e386b12440
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55e386b12390, 0x55e386b123b0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] ConstExp::Canon called
