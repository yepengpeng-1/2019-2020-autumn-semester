Called TranslateProgram(A::Exp* root).
Entered LetExp::Translate.
Entered VarDec::Translate. going to declare var: a
Entered IntExp::Translate.
implicit type: 0x55de95a17104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return new framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x55de95f59980
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Add one translation layer
Entered WhileExp::Translate.
Entered OpExp::Translate. OpCode: GE_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55de95f58350; parent level: 0
  compare access sym a, a
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55de95f59390
called getExp. input framePtr = 0x55de95f59a10
with a INFRAME access
successfully build targetExp 0x55de95f59a80
successfully generated exp 0x55de95f59aa0
Analyzed leftT, which.exp = 0x55de95f59aa0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55de95f59ae0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
called addLoop. 
Entered SeqExp::Translate.
Add one translation layer
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55de95f58350; parent level: 0
  compare access sym a, a
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55de95f59390
called getExp. input framePtr = 0x55de95f59d00
with a INFRAME access
successfully build targetExp 0x55de95f59d70
successfully generated exp 0x55de95f59d90
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x55de95f56e50
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55de95f58350; parent level: 0
  compare access sym a, a
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55de95f59390
called getExp. input framePtr = 0x55de95f59db0
with a INFRAME access
successfully build targetExp 0x55de95f59e20
successfully generated exp 0x55de95f59e40
Ex's UnEx() called
la.exp = 0x55de95f59ed0
Ex's UnEx() called
Add one translation layer
Entered AssignExp::Translate.
Entered SimpleVar::Translate. this level: 0x55de95f58350; parent level: 0
  compare access sym a, a
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55de95f59390
called getExp. input framePtr = 0x55de95f59ef0
with a INFRAME access
successfully build targetExp 0x55de95f59f60
successfully generated exp 0x55de95f59f80
translated varKind. which exp = 0x55de95f59f80
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55de95f58350; parent level: 0
  compare access sym a, a
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55de95f59390
called getExp. input framePtr = 0x55de95f59fa0
with a INFRAME access
successfully build targetExp 0x55de95f5a010
successfully generated exp 0x55de95f5a030
Analyzed leftT, which.exp = 0x55de95f5a030
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55de95f5a070
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated expT. which exp = 0x55de95f5a0c0
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55de95f58350; parent level: 0
  compare access sym a, a
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55de95f59390
called getExp. input framePtr = 0x55de95f5a0e0
with a INFRAME access
successfully build targetExp 0x55de95f5a150
successfully generated exp 0x55de95f5a170
Analyzed leftT, which.exp = 0x55de95f5a170
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55de95f5a1b0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x55de95f5a250
Nx's UnEx() called
Add one translation layer
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: EQ_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55de95f58350; parent level: 0
  compare access sym a, a
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x55de95f59390
called getExp. input framePtr = 0x55de95f5a310
with a INFRAME access
successfully build targetExp 0x55de95f5a380
successfully generated exp 0x55de95f5a3a0
Analyzed leftT, which.exp = 0x55de95f5a3a0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55de95f5a3e0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x55de95f5a480
Entered BreakExp::Translate.
called getLastLoop. 
called getLastLoop. 
(no else) translated then, exp = 0x55de95f5a520
Cx's UnCx() called
IfExp: has no return type!
Nx's UnNx() called
la.exp = 0x55de95f5a6a0
Nx's UnEx() called
called popLoop. 
Cx's UnCx() called
cond.stm = 0x55de95f59b00
Ex's UnNx() called
la.exp = 0x55de95f5a960
Nx's UnEx() called
LetExp translated bodyT, which.exp = 0x55de95f5a9d0
Ex's UnNx() called
 ~~~~ Completed Translation ~~~~
Ex's UnEx() called
gonna print a EseqExp~
My stm = 0x55de95f599c0, exp = 0x55de95f5a9a0
gonna print a ExpStm~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x55de95f5a930, exp = 0x55de95f5a980
gonna print a SeqStm~
gonna print a LabelStm~
gonna print a SeqStm~
gonna print a CjumpStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a SeqStm~
gonna print a LabelStm~
gonna print a SeqStm~
gonna print a ExpStm~
gonna print a EseqExp~
My stm = 0x55de95f59c80, exp = 0x55de95f5a730
gonna print a ExpStm~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x55de95f5a710, exp = 0x55de95f5a6e0
gonna print a ExpStm~
gonna print a EseqExp~
My stm = 0x55de95f5a2c0, exp = 0x55de95f5a290
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x55de95f5a220, exp = 0x55de95f5a270
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x55de95f5a670, exp = 0x55de95f5a6c0
gonna print a SeqStm~
gonna print a CjumpStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a SeqStm~
gonna print a LabelStm~
gonna print a SeqStm~
gonna print a JumpStm~
gonna print a NameExp~
gonna print a LabelStm~
gonna print a ConstExp~
gonna print a SeqStm~
gonna print a JumpStm~
gonna print a NameExp~
gonna print a LabelStm~
gonna print a ConstExp~
 ~~~~ Completed Printing ~~~~
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x55de95f5a780, 0x55de95f5a900
[canon] SeqStm::Canon called. this->left, right = 0x55de95f59b00, 0x55de95f5a8d0
[canon] SeqStm::Canon called. this->left, right = 0x55de95f5a7a0, 0x55de95f5a8a0
[canon] SeqStm::Canon called. this->left, right = 0x55de95f5a7c0, 0x55de95f5a870
[canon] SeqStm::Canon called. this->left, right = 0x55de95f5a820, 0x55de95f5a850
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x55de95f5a400, 0x55de95f5a640
[canon] SeqStm::Canon called. this->left, right = 0x55de95f5a5d0, 0x55de95f5a610
[canon] SeqStm::Canon called. this->left, right = 0x55de95f5a4f0, 0x55de95f5a5f0
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55de95f5a310, 0x55de95f5a330
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55de95f59ef0, 0x55de95f59f10
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55de95f5a010, 0x55de95f5a050
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55de95f59fa0, 0x55de95f59fc0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55de95f59db0, 0x55de95f59dd0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55de95f59a10, 0x55de95f59a30
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] ExpStm::Canon called
[canon] ConstExp::Canon called
