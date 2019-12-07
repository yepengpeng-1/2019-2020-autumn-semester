Called TranslateProgram(A::Exp* root).
Entered LetExp::Translate.
Entered VarDec::Translate. going to declare var: a
Entered IntExp::Translate.
implicit type: 0x5577a7915104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return new framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x5577a83e38b0
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Add one translation layer
Entered ForExp::Translate.
Entered IntExp::Translate.
loTrans success. loTrans.exp = 0x5577a83e3960
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5577a83e2280; parent level: 0
  compare access sym a, a
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5577a83e32c0
called getExp 
with a INFRAME access
successfully build targetExp 0x5577a83e39f0
successfully generated exp 0x5577a83e3a10
hiTrans success. hiTrans.exp = 0x5577a83e3a10
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
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5577a83e2280; parent level: 0
  compare access sym __l__, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5577a83e3ac0
called getExp 
with a INFRAME access
successfully build targetExp 0x5577a83e3e30
successfully generated exp 0x5577a83e3e50
Call operation returns an 6
la.exp = 0x5577a83e3ec0
Ex's UnEx() called
Add one translation layer
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: EQ_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5577a83e2280; parent level: 0
  compare access sym __l__, i
  compare access sym i, i
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5577a83e3ac0
called getExp 
with a INFRAME access
successfully build targetExp 0x5577a83e3f50
successfully generated exp 0x5577a83e3f70
Analyzed leftT, which.exp = 0x5577a83e3f70
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x5577a83e3fb0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x5577a83e4050
Entered BreakExp::Translate.
called getLastLoop. 
called getLastLoop. 
(no else) translated then, exp = 0x5577a83e40f0
Cx's UnCx() called
IfExp: has no return type!
Nx's UnNx() called
la.exp = 0x5577a83e4270
Nx's UnEx() called
called popLoop. 
bodyTrans success. bodyTrans.exp = 0x5577a83e4330
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
la.exp = 0x5577a83e4870
Nx's UnEx() called
LetExp translated bodyT, which.exp = 0x5577a83e48e0
Ex's UnNx() called
 ~~~~ Completed Translation ~~~~
Ex's UnEx() called
gonna print a EseqExp~
My stm = 0x5577a83e38f0, exp = 0x5577a83e48b0
gonna print a ExpStm~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x5577a83e4840, exp = 0x5577a83e4890
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a SeqStm~
gonna print a CjumpStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a SeqStm~
gonna print a LabelStm~
gonna print a SeqStm~
gonna print a ExpStm~
gonna print a EseqExp~
My stm = 0x5577a83e3d40, exp = 0x5577a83e4300
gonna print a ExpStm~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x5577a83e42e0, exp = 0x5577a83e42b0
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a EseqExp~
My stm = 0x5577a83e4240, exp = 0x5577a83e4290
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
gonna print a CjumpStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a SeqStm~
gonna print a LabelStm~
gonna print a SeqStm~
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
gonna print a SeqStm~
gonna print a JumpStm~
gonna print a NameExp~
gonna print a LabelStm~
gonna print a ConstExp~
 ~~~~ Completed Printing ~~~~
well...
checking condition.
rlist = 0x5577a83e5fd0
(*rlist->head) = 0x5577a83e3910
[canon] [reoder] else branch
well...
checking condition.
rlist = 0
