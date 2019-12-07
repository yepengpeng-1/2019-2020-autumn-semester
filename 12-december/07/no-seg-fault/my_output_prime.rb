Called TranslateProgram(A::Exp* root).
Entered LetExp::Translate.
Entered FunctionDec::Translate.
To-declare function name: check
constructing formal: num, type: int, id: 0x559affe42104
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
implicit type: 0x559affe42104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return new framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x559b00dc62a0
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Add one translation layer
Entered SeqExp::Translate.
Add one translation layer
Entered ForExp::Translate.
Entered IntExp::Translate.
loTrans success. loTrans.exp = 0x559b00dc63c0
Entered OpExp::Translate. OpCode: DIVIDE_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x559b00dc5c00; parent level: 0x559b00dc49c0
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
going to call getExp with access: 0x559b00dc5b50
called getExp. input framePtr = 0x559b00dc63e0
with a INFRAME access
successfully build targetExp 0x559b00dc6450
successfully generated exp 0x559b00dc6470
Analyzed leftT, which.exp = 0x559b00dc6470
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x559b00dc64b0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
hiTrans success. hiTrans.exp = 0x559b00dc6500
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
Entered SimpleVar::Translate. this level: 0x559b00dc5c00; parent level: 0x559b00dc49c0
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
going to call getExp with access: 0x559b00dc5b50
called getExp. input framePtr = 0x559b00dc6810
with a INFRAME access
successfully build targetExp 0x559b00dc6880
successfully generated exp 0x559b00dc68a0
Analyzed leftT, which.exp = 0x559b00dc68a0
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x559b00dc5c00; parent level: 0x559b00dc49c0
  compare access sym __l__, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x559b00dc65b0
called getExp. input framePtr = 0x559b00dc68c0
with a INFRAME access
successfully build targetExp 0x559b00dc6930
successfully generated exp 0x559b00dc6950
Analyzed rightT, which.exp = 0x559b00dc6950
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Analyzed leftT, which.exp = 0x559b00dc69a0
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x559b00dc5c00; parent level: 0x559b00dc49c0
  compare access sym __l__, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x559b00dc65b0
called getExp. input framePtr = 0x559b00dc69c0
with a INFRAME access
successfully build targetExp 0x559b00dc6a30
successfully generated exp 0x559b00dc6a50
Analyzed rightT, which.exp = 0x559b00dc6a50
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Analyzed leftT, which.exp = 0x559b00dc6aa0
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x559b00dc5c00; parent level: 0x559b00dc49c0
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
going to call getExp with access: 0x559b00dc5b50
called getExp. input framePtr = 0x559b00dc6ac0
with a INFRAME access
successfully build targetExp 0x559b00dc6b30
successfully generated exp 0x559b00dc6b50
Analyzed rightT, which.exp = 0x559b00dc6b50
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x559b00dc6bf0
Entered SeqExp::Translate.
Add one translation layer
Entered AssignExp::Translate.
Entered SimpleVar::Translate. this level: 0x559b00dc5c00; parent level: 0x559b00dc49c0
  compare access sym __l__, flag
  compare access sym i, flag
  compare access sym flag, flag
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x559b00dc5cb0
called getExp. input framePtr = 0x559b00dc6c90
with a INFRAME access
successfully build targetExp 0x559b00dc6d00
successfully generated exp 0x559b00dc6d20
translated varKind. which exp = 0x559b00dc6d20
Entered IntExp::Translate.
translated expT. which exp = 0x559b00dc6d60
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x559b00dc6df0
Nx's UnEx() called
Add one translation layer
Entered BreakExp::Translate.
called getLastLoop. 
called getLastLoop. 
la.exp = 0x559b00dc6ed0
Nx's UnEx() called
(no else) translated then, exp = 0x559b00dc6f90
Cx's UnCx() called
IfExp: has no return type!
Ex's UnNx() called
called popLoop. 
bodyTrans success. bodyTrans.exp = 0x559b00dc7130
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x559b00dc7150
with a INFRAME access
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x559b00dc71e0
with a INFRAME access
Ex's UnEx() called
Ex's UnEx() called
Nx's UnNx() called
la.exp = 0x559b00dc7650
Nx's UnEx() called
Add one translation layer
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x559b00dc5c00; parent level: 0x559b00dc49c0
  compare access sym __l__, flag
  compare access sym i, flag
  compare access sym flag, flag
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x559b00dc5cb0
called getExp. input framePtr = 0x559b00dc76c0
with a INFRAME access
successfully build targetExp 0x559b00dc7730
successfully generated exp 0x559b00dc7750
la.exp = 0x559b00dc7750
Ex's UnEx() called
la.exp = 0x559b00dc77c0
Ex's UnEx() called
LetExp translated bodyT, which.exp = 0x559b00dc77e0
bodyTranslate success. which .exp = 0x559b00dc77e0
try pop one out
function return value type: int
head->result: 0x559b00dc0b70, retType->kind: 2
going to unEx bodyTranslate. Now it is actually0x559b00dc77e0
Ex's UnEx() called
bodyEx now is 0x559b00dc6300
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
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc1810
Entered IntExp::Translate.
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc1860
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc1810
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x559b00dc7e40
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc1980
Entered StringExp::Translate.
Ex's UnEx() called
la.exp = 0x559b00dc80a0
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
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc1a10
Entered IntExp::Translate.
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc1a60
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc1a10
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x559b00dc8430
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc1b50
Entered StringExp::Translate.
Ex's UnEx() called
la.exp = 0x559b00dc86e0
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
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc1be0
Entered IntExp::Translate.
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc1c30
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc1be0
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x559b00dc8a70
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc1d20
Entered StringExp::Translate.
Ex's UnEx() called
la.exp = 0x559b00dc8d20
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
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc1db0
Entered IntExp::Translate.
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc1e00
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc1db0
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x559b00dc90b0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc1ef0
Entered StringExp::Translate.
Ex's UnEx() called
la.exp = 0x559b00dc9360
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
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc1f80
Entered IntExp::Translate.
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc1fd0
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc1f80
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x559b00dc96f0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc20c0
Entered StringExp::Translate.
Ex's UnEx() called
la.exp = 0x559b00dc99a0
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
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc2150
Entered IntExp::Translate.
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc21a0
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc2150
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x559b00dc9d30
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc2290
Entered StringExp::Translate.
Ex's UnEx() called
la.exp = 0x559b00dc9fe0
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
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc2320
Entered IntExp::Translate.
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc2370
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc2320
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x559b00dca370
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc2460
Entered StringExp::Translate.
Ex's UnEx() called
la.exp = 0x559b00dca620
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
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc2a00
Entered IntExp::Translate.
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc2a50
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc2a00
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x559b00dca9b0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc2b40
Entered StringExp::Translate.
Ex's UnEx() called
la.exp = 0x559b00dcac60
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
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc2bd0
Entered IntExp::Translate.
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc2c20
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc2bd0
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x559b00dcaff0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc2d10
Entered StringExp::Translate.
Ex's UnEx() called
la.exp = 0x559b00dcb2a0
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
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc2da0
Entered IntExp::Translate.
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc2df0
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc2da0
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x559b00dcb630
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc2ee0
Entered StringExp::Translate.
Ex's UnEx() called
la.exp = 0x559b00dcb8e0
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
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc2f70
Entered IntExp::Translate.
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc2fc0
Entered CallExp::Translate.
found function check
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc2f70
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x559b00dcbc70
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x559b00dc30b0
Entered StringExp::Translate.
Ex's UnEx() called
la.exp = 0x559b00dcbf20
Ex's UnEx() called
bodyTranslate success. which .exp = 0x559b00dcbf90
function return value type: NULL
head->result: 0, retType->kind: 6
going to unEx bodyTranslate. Now it is actually0x559b00dcbf90
Ex's UnEx() called
bodyEx now is 0x559b00dc7af0
returnValue register requested
gonna return existed returnValue register
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Add one translation layer
Entered CallExp::Translate.
found function try
Call operation returns an 6
[callexp] start traversing rawExps
la.exp = 0x559b00dcc150
Ex's UnEx() called
LetExp translated bodyT, which.exp = 0x559b00dcc170
Ex's UnNx() called
 ~~~~ Completed Translation ~~~~
Ex's UnEx() called
gonna print a EseqExp~
My stm = 0x559b00dcc080, exp = 0x559b00dcc120
gonna print a ExpStm~
gonna print a ConstExp~
gonna print a CallExp~
gonna print a NameExp~
 ~~~~ Completed Printing ~~~~
[canon] MoveStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x559b00dc76c0, 0x559b00dc76e0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x559b00dc7270, 0x559b00dc75f0
[canon] SeqStm::Canon called. this->left, right = 0x559b00dc72a0, 0x559b00dc75c0
[canon] SeqStm::Canon called. this->left, right = 0x559b00dc72d0, 0x559b00dc7590
[canon] SeqStm::Canon called. this->left, right = 0x559b00dc7310, 0x559b00dc7560
[canon] SeqStm::Canon called. this->left, right = 0x559b00dc7100, 0x559b00dc7530
[canon] SeqStm::Canon called. this->left, right = 0x559b00dc7330, 0x559b00dc7500
[canon] SeqStm::Canon called. this->left, right = 0x559b00dc7370, 0x559b00dc74d0
[canon] SeqStm::Canon called. this->left, right = 0x559b00dc73e0, 0x559b00dc74a0
[canon] SeqStm::Canon called. this->left, right = 0x559b00dc7450, 0x559b00dc7480
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x559b00dc71e0, 0x559b00dc7200
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x559b00dc7250, 0x559b00dc7390
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x559b00dc71e0, 0x559b00dc7200
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x559b00dc71e0, 0x559b00dc7200
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x559b00dc7150, 0x559b00dc7170
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x559b00dc6b70, 0x559b00dc70d0
[canon] SeqStm::Canon called. this->left, right = 0x559b00dc7040, 0x559b00dc70a0
[canon] SeqStm::Canon called. this->left, right = 0x559b00dc7060, 0x559b00dc7080
[canon] LabelStm::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] ConstExp::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x559b00dc6c90, 0x559b00dc6cb0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x559b00dc6970, 0x559b00dc6a30
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x559b00dc6880, 0x559b00dc6930
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x559b00dc6810, 0x559b00dc6830
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x559b00dc68c0, 0x559b00dc68e0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x559b00dc69c0, 0x559b00dc69e0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x559b00dc6ac0, 0x559b00dc6ae0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x559b00dc71e0, 0x559b00dc7200
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x559b00dc7150, 0x559b00dc7170
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x559b00dc71e0, 0x559b00dc7200
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x559b00dc7150, 0x559b00dc7170
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x559b00dc6450, 0x559b00dc6490
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x559b00dc63e0, 0x559b00dc6400
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
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
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] ConstExp::Canon called
