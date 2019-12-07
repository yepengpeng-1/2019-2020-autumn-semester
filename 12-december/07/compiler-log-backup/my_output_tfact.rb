Called TranslateProgram(A::Exp* root).
Entered LetExp::Translate.
Entered FunctionDec::Translate.
To-declare function name: nfactor
constructing formal: n, type: int, id: 0x55866227e104
 param +1
===== PRINT BLIST =====
# __STATIC_LINK__
# n
I'm entering the evil part of translate, which didn't give me a good exp 
called new level. label: nfactor
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
created new InFrameAccess. sym: n
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: EQ_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558663d43890; parent level: 0x558663d42680
accessList traverse over
I'll go one layer above. 
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym n, n
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return new framePointer register
successfully build tempExp
going to call getExp with access: 0x558663d437e0
called getExp 
with a INFRAME access
successfully build targetExp 0x558663d43dd0
successfully generated exp 0x558663d43df0
Analyzed leftT, which.exp = 0x558663d43df0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x558663d43e30
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x558663d43ed0
Entered IntExp::Translate.
(exists else) translated then, exp = 0x558663d43f20
Entered OpExp::Translate. OpCode: TIMES_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558663d43890; parent level: 0x558663d42680
accessList traverse over
I'll go one layer above. 
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym n, n
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x558663d437e0
called getExp 
with a INFRAME access
successfully build targetExp 0x558663d43fb0
successfully generated exp 0x558663d43fd0
Analyzed leftT, which.exp = 0x558663d43fd0
Entered CallExp::Translate.
found function nfactor
comparing arg->head and formals->head
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x558663d43890; parent level: 0x558663d42680
accessList traverse over
I'll go one layer above. 
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym n, n
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x558663d437e0
called getExp 
with a INFRAME access
successfully build targetExp 0x558663d44090
successfully generated exp 0x558663d440b0
Analyzed leftT, which.exp = 0x558663d440b0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x558663d440f0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Call operation returns an 2
Analyzed rightT, which.exp = 0x558663d441b0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
(exists else) translated else, exp = 0x558663d44200
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
bodyTranslate success. which .exp = 0x558663d44640
try pop one out
function return value type: int
head->result: 0x558663d40b90, retType->kind: 2
going to unEx bodyTranslate. Now it is actually0x558663d44640
Ex's UnEx() called
bodyEx now is 0x558663d44610
returnValue register requested
gonna return new returnValue register
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Add one translation layer
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function nfactor
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
Call operation returns an 6
la.exp = 0x558663d44960
Ex's UnEx() called
LetExp translated bodyT, which.exp = 0x558663d44980
Ex's UnNx() called
 ~~~~ Completed Translation ~~~~
Ex's UnEx() called
gonna print a EseqExp~
My stm = 0x558663d447b0, exp = 0x558663d44930
gonna print a ExpStm~
gonna print a ConstExp~
gonna print a CallExp~
gonna print a NameExp~
 ~~~~ Completed Printing ~~~~
well...
checking condition.
rlist = 0x558663d46070
(*rlist->head) = 0x558663d44610
[canon] [reoder] else branch
well...
checking condition.
rlist = 0x558663d46090
(*rlist->head) = 0x558663d44370
[canon] [reoder] else branch
well...
checking condition.
rlist = 0x558663d460d0
(*rlist->head) = 0x558663d44330
[canon] [reoder] else branch
well...
checking condition.
rlist = 0
