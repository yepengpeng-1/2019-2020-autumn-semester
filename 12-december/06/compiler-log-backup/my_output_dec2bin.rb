Called TranslateProgram(A::Exp* root).
Entered LetExp::Translate.
Entered FunctionDec::Translate.
To-declare function name: dec2bin
constructing formal: num, type: int, id: 0x55bd75fd5104
 param +1
===== PRINT BLIST =====
# __STATIC_LINK__
# num
I'm entering the evil part of translate, which didn't give me a good exp 
called new level. label: dec2bin
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
created new InFrameAccess. sym: num
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: GT_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55bd770b0140; parent level: 0x55bd770aef00
accessList traverse over
I'll go one layer above. 
accessList traverse over
No... I can't find anything anywhere. 
  compare access sym num, num
Found it!
accessList traverse over
Already found~
framePointer register requested
gonna return new framePointer register
successfully build tempExp
going to call getExp with access: 0x55bd770b0090
called getExp 
with a INFRAME access
successfully build targetExp 0x55bd770b0680
successfully generated exp 0x55bd770b06a0
Analyzed leftT, which.exp = 0x55bd770b06a0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55bd770b06e0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x55bd770b0780
Entered SeqExp::Translate.
Add one translation layer
Entered CallExp::Translate.
found function dec2bin
comparing arg->head and formals->head
Entered OpExp::Translate. OpCode: DIVIDE_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55bd770b0140; parent level: 0x55bd770aef00
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
going to call getExp with access: 0x55bd770b0090
called getExp 
with a INFRAME access
successfully build targetExp 0x55bd770b0880
successfully generated exp 0x55bd770b08a0
Analyzed leftT, which.exp = 0x55bd770b08a0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55bd770b08e0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Call operation returns an 6
la.exp = 0x55bd770b09a0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55bd770b0140; parent level: 0x55bd770aef00
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
going to call getExp with access: 0x55bd770b0090
called getExp 
with a INFRAME access
successfully build targetExp 0x55bd770b0a60
successfully generated exp 0x55bd770b0a80
Analyzed leftT, which.exp = 0x55bd770b0a80
Entered OpExp::Translate. OpCode: TIMES_OP
Entered OpExp::Translate. OpCode: DIVIDE_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. this level: 0x55bd770b0140; parent level: 0x55bd770aef00
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
going to call getExp with access: 0x55bd770b0090
called getExp 
with a INFRAME access
successfully build targetExp 0x55bd770b0b10
successfully generated exp 0x55bd770b0b30
Analyzed leftT, which.exp = 0x55bd770b0b30
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55bd770b0b70
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Analyzed leftT, which.exp = 0x55bd770b0bc0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55bd770b0c00
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Analyzed rightT, which.exp = 0x55bd770b0c50
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Call operation returns an 6
la.exp = 0x55bd770b0d10
Ex's UnEx() called
(no else) translated then, exp = 0x55bd770b0d80
Cx's UnCx() called
Ex's UnNx() called
bodyTranslate success. which .exp = 0x55bd770b0f20
try pop one out
function return value type: NULL
head->result: 0, retType->kind: 6
going to unEx bodyTranslate. Now it is actually0x55bd770b0f20
Nx's UnEx() called
bodyEx now is 0x55bd770b0f60
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
Entered IntExp::Translate.
Call operation returns an 6
la.exp = 0x55bd770b1330
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x55bd770b14a0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function dec2bin
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 6
la.exp = 0x55bd770b15d0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x55bd770b1790
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 6
la.exp = 0x55bd770b18c0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x55bd770b1a80
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function dec2bin
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 6
la.exp = 0x55bd770b1bb0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x55bd770b1d70
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 6
la.exp = 0x55bd770b1ea0
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x55bd770b2060
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function dec2bin
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 6
la.exp = 0x55bd770b2190
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x55bd770b2350
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 6
la.exp = 0x55bd770b2480
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x55bd770b2640
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function dec2bin
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 6
la.exp = 0x55bd770b2770
Ex's UnEx() called
Add one translation layer
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
Call operation returns an 6
la.exp = 0x55bd770b2930
Ex's UnEx() called
bodyTranslate success. which .exp = 0x55bd770b29a0
function return value type: NULL
head->result: 0, retType->kind: 6
going to unEx bodyTranslate. Now it is actually0x55bd770b29a0
Ex's UnEx() called
bodyEx now is 0x55bd770b1240
returnValue register requested
gonna return existed returnValue register
Entered SeqExp::Translate.
Add one translation layer
Entered CallExp::Translate.
found function try
Call operation returns an 6
la.exp = 0x55bd770b2b20
Ex's UnEx() called
Ex's UnNx() called
 ~~~~ Completed Translation ~~~~
