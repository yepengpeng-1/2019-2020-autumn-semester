Called TranslateProgram(A::Exp* root).
Entered LetExp::Translate.
Entered FunctionDec::Translate.
To-declare function name: a
constructing formal: x, type: int, id: 0x5645dde8c104
 param +1
===== PRINT BLIST =====
# __STATIC_LINK__
# x
I'm entering the evil part of translate, which didn't give me a good exp 
called new level. label: a
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
created new InFrameAccess. sym: x
Entered LetExp::Translate.
Entered FunctionDec::Translate.
To-declare function name: b
constructing formal: y, type: int, id: 0x5645dde8c104
 param +1
===== PRINT BLIST =====
# __STATIC_LINK__
# y
I'm entering the evil part of translate, which didn't give me a good exp 
called new level. label: b
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
created new InFrameAccess. sym: y
Entered OpExp::Translate. OpCode: PLUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5645de6ebbc0; parent level: 0x5645de6eb910
accessList traverse over
I'll go one layer above. 
accessList traverse over
I'll go one layer above. 
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym y, x
  compare access sym __STATIC_LINK__, x
accessList traverse over
I'll go one layer above. 
  compare access sym x, x
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return new framePointer register
successfully build tempExp
going to call getExp with access: 0x5645de6eb860
called getExp. input framePtr = 0x5645de6ec090
with a INFRAME access
successfully build targetExp 0x5645de6ec100
successfully generated exp 0x5645de6ec120
Analyzed leftT, which.exp = 0x5645de6ec120
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x5645de6ebbc0; parent level: 0x5645de6eb910
accessList traverse over
I'll go one layer above. 
accessList traverse over
I'll go one layer above. 
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym y, y
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return existed framePointer register
successfully build tempExp
going to call getExp with access: 0x5645de6ebb10
called getExp. input framePtr = 0x5645de6ec140
with a INFRAME access
successfully build targetExp 0x5645de6ec1b0
successfully generated exp 0x5645de6ec1d0
Analyzed rightT, which.exp = 0x5645de6ec1d0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
bodyTranslate success. which .exp = 0x5645de6ec220
try pop one out
function return value type: int
head->result: 0x5645de6e8b50, retType->kind: 2
going to unEx bodyTranslate. Now it is actually0x5645de6ec220
Ex's UnEx() called
bodyEx now is 0x5645de6ec1f0
returnValue register requested
gonna return new returnValue register
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Add one translation layer
Entered CallExp::Translate.
found function b
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x5645de6e9240
Entered IntExp::Translate.
Ex's UnEx() called
la.exp = 0x5645de6ec500
Ex's UnEx() called
LetExp translated bodyT, which.exp = 0x5645de6ec520
bodyTranslate success. which .exp = 0x5645de6ec520
try pop one out
function return value type: int
head->result: 0x5645de6e8b50, retType->kind: 2
going to unEx bodyTranslate. Now it is actually0x5645de6ec520
Ex's UnEx() called
bodyEx now is 0x5645de6ec3b0
returnValue register requested
gonna return existed returnValue register
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Add one translation layer
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function a
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x5645de6e9440
Entered IntExp::Translate.
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x5645de6e9490
Entered CallExp::Translate.
found function a
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x5645de6e9440
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
la.exp = 0x5645de6ec980
Ex's UnEx() called
LetExp translated bodyT, which.exp = 0x5645de6ec9a0
Ex's UnNx() called
 ~~~~ Completed Translation ~~~~
Ex's UnEx() called
gonna print a EseqExp~
My stm = 0x5645de6ec610, exp = 0x5645de6ec950
gonna print a ExpStm~
gonna print a ConstExp~
gonna print a CallExp~
gonna print a NameExp~
gonna print a CallExp~
gonna print a NameExp~
gonna print a ConstExp~
 ~~~~ Completed Printing ~~~~
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5645de6ec100, 0x5645de6ec1b0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5645de6ec090, 0x5645de6ec0b0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x5645de6ec140, 0x5645de6ec160
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] ConstExp::Canon called
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
[canon] ConstExp::Canon called
