Called TranslateProgram(A::Exp* root).
Entered LetExp::Translate.
[translate] [letexp] while!
Entered VarDec::Translate. going to declare var: N
Entered AllocLocal. escape? 1
create newAcc fine
Entered IntExp::Translate.
implicit type: 0x561b41b3c104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return new framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x561b439d6210
[translate] [letexp] while out, stms going to push_back Nx's UnNx() called
0x561b439d61e0
Nx's UnNx() called
[translate] [letexp] while!
Entered TypeDec::Translate.
queue.size() <= 1
Entered ArrayTy::Translate.
declared type intArray, id: 0x561b439d62d0
[translate] [letexp] while out, stms going to push_back Ex's UnNx() called
0x561b439d6330
Ex's UnNx() called
[translate] [letexp] while!
Entered VarDec::Translate. going to declare var: list
Entered AllocLocal. escape? 1
create newAcc fine
Entered ArrayExp::Translate.
Entered IntExp::Translate.
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze N
gotta varP: 0x561b439d5bd0
gotta acc: 0x561b439d5b70
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439d6430
with a INFRAME access
Ex's UnEx() called
Ex's UnEx() called
implicit type: 0x561b439d62d0
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return existed framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x561b439d6770
[translate] [letexp] while out, stms going to push_back Nx's UnNx() called
0x561b439d6740
Nx's UnNx() called
[translate] [letexp] while!
Entered FunctionDec::Translate.
Analyzing function 0x561b439d0f70
called new level. label: nop
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
gonna build formals.
buildFormals called. level->frame: 0x561b439d6250
f_accl = 0x561b439d6370
formals built.
while #3 end. 
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x561b439d1050
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Ex's UnEx() called
Analyzing function 0x561b439d1130
called new level. label: init
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
gonna build formals.
buildFormals called. level->frame: 0x561b439d6ca0
f_accl = 0x561b439d6c80
formals built.
while #3 end. 
Entered ForExp::Translate.
Entered IntExp::Translate.
loTrans success. loTrans.exp = 0x561b439d6dc0
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze N
gotta varP: 0x561b439d5bd0
gotta acc: 0x561b439d5b70
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x561b439d6de0
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x561b439d7080
with a INFRAME access
Analyzed leftT, which.exp = 0x561b439d7180
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x561b439d71c0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
hiTrans success. hiTrans.exp = 0x561b439d7210
Entered AllocLocal. escape? 1
create newAcc fine
Entered SeqExp::Translate.
Entered AssignExp::Translate.
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. ** Trying to analyze list
gotta varP: 0x561b439d65e0
gotta acc: 0x561b439d63d0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x561b439d7390
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x561b439d7630
with a INFRAME access
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x561b439d72e0
gotta acc: 0x561b439d72c0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439d7750
with a INFRAME access
Translated indexT, which .exp = 0x561b439d7800
Ex's UnEx() called
Ex's UnEx() called
translated varKind. which exp = 0x561b439d78c0
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze N
gotta varP: 0x561b439d5bd0
gotta acc: 0x561b439d5b70
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x561b439d78e0
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x561b439d7b80
with a INFRAME access
Analyzed leftT, which.exp = 0x561b439d7c80
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x561b439d72e0
gotta acc: 0x561b439d72c0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439d7ca0
with a INFRAME access
Analyzed rightT, which.exp = 0x561b439d7d50
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated expT. which exp = 0x561b439d7da0
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze N
gotta varP: 0x561b439d5bd0
gotta acc: 0x561b439d5b70
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x561b439d7dc0
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x561b439d8060
with a INFRAME access
Analyzed leftT, which.exp = 0x561b439d8160
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x561b439d72e0
gotta acc: 0x561b439d72c0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439d8180
with a INFRAME access
Analyzed rightT, which.exp = 0x561b439d8230
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Ex's UnEx() called
Ex's UnEx() called
Entered CallExp::Translate.
found function nop
Call operation returns an 6
[callexp] start traversing rawExps
[translate] [seq] exp.size = 2
Nx's UnNx() called
Ex's UnEx() called
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x561b439d83b0
with a INFRAME access
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x561b439d8470
with a INFRAME access
Ex's UnEx() called
Ex's UnEx() called
Ex's UnNx() called
Analyzing function 0x561b439d1860
called new level. label: quicksort
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
created new InFrameAccess. sym: left
created new InFrameAccess. sym: right
gonna build formals.
buildFormals called. level->frame: 0x561b439d8aa0
f_accl = 0x561b439d8a80
formals built.
while #3. name: left. fl, t, formals: 0x561b439d1970, 0x561b439d8810, 0x561b439d8b70
while #3. name: right. fl, t, formals: 0x561b439d1920, 0x561b439d87f0, 0x561b439d8b50
while #3 end. 
Entered LetExp::Translate.
[translate] [letexp] while!
Entered VarDec::Translate. going to declare var: i
Entered AllocLocal. escape? 1
create newAcc fine
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze left
gotta varP: 0x561b439d8b90
gotta acc: 0x561b439d8b10
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439d8d10
with a INFRAME access
implicit type: 0x561b41b3c104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return existed framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x561b439d8f70
[translate] [letexp] while out, stms going to push_back Nx's UnNx() called
0x561b439d8f40
Nx's UnNx() called
[translate] [letexp] while!
Entered VarDec::Translate. going to declare var: j
Entered AllocLocal. escape? 1
create newAcc fine
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze right
gotta varP: 0x561b439d8be0
gotta acc: 0x561b439d8b30
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439d9030
with a INFRAME access
implicit type: 0x561b41b3c104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return existed framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x561b439d9290
[translate] [letexp] while out, stms going to push_back Nx's UnNx() called
0x561b439d9260
Nx's UnNx() called
[translate] [letexp] while!
Entered VarDec::Translate. going to declare var: key
Entered AllocLocal. escape? 1
create newAcc fine
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. ** Trying to analyze list
gotta varP: 0x561b439d65e0
gotta acc: 0x561b439d63d0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x561b439d9330
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x561b439d95d0
with a INFRAME access
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze left
gotta varP: 0x561b439d8b90
gotta acc: 0x561b439d8b10
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439d96f0
with a INFRAME access
Translated indexT, which .exp = 0x561b439d97a0
Ex's UnEx() called
Ex's UnEx() called
implicit type: 0x561b41b3c104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return existed framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x561b439d9a10
[translate] [letexp] while out, stms going to push_back Nx's UnNx() called
0x561b439d99e0
Nx's UnNx() called
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: LT_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze left
gotta varP: 0x561b439d8b90
gotta acc: 0x561b439d8b10
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439d92b0
with a INFRAME access
Analyzed leftT, which.exp = 0x561b439d9af0
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze right
gotta varP: 0x561b439d8be0
gotta acc: 0x561b439d8b30
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439d9b10
with a INFRAME access
Analyzed rightT, which.exp = 0x561b439d9bc0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x561b439d9c60
this->elsee = empty. 
Entered SeqExp::Translate.
Entered WhileExp::Translate.
Entered OpExp::Translate. OpCode: LT_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x561b439d8de0
gotta acc: 0x561b439d8cf0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439d9c90
with a INFRAME access
Analyzed leftT, which.exp = 0x561b439d9d40
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze j
gotta varP: 0x561b439d9100
gotta acc: 0x561b439d9010
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439d9d60
with a INFRAME access
Analyzed rightT, which.exp = 0x561b439d9e10
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
called addLoop. 
Entered SeqExp::Translate.
Entered WhileExp::Translate.
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: LT_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x561b439d8de0
gotta acc: 0x561b439d8cf0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439d9f90
with a INFRAME access
Analyzed leftT, which.exp = 0x561b439da040
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze j
gotta varP: 0x561b439d9100
gotta acc: 0x561b439d9010
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439da060
with a INFRAME access
Analyzed rightT, which.exp = 0x561b439da110
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x561b439da1b0
this->elsee != empty. 
Entered OpExp::Translate. OpCode: LE_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze key
gotta varP: 0x561b439d9880
gotta acc: 0x561b439d9310
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439da1e0
with a INFRAME access
Analyzed leftT, which.exp = 0x561b439da290
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. ** Trying to analyze list
gotta varP: 0x561b439d65e0
gotta acc: 0x561b439d63d0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x561b439da2b0
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x561b439da550
with a INFRAME access
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze j
gotta varP: 0x561b439d9100
gotta acc: 0x561b439d9010
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439da670
with a INFRAME access
Translated indexT, which .exp = 0x561b439da720
Ex's UnEx() called
Ex's UnEx() called
Analyzed rightT, which.exp = 0x561b439da7e0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
(exists else) translated then, exp = 0x561b439da880
Entered IntExp::Translate.
(exists else) translated else, exp = 0x561b439da8d0
Entered AllocLocal. escape? 1
create newAcc fine
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x561b439daa00
with a INFRAME access
Cx's UnCx() called
IfExp: has a return type!
Cx's UnEx() called
Ex's UnEx() called
called addLoop. 
Entered AssignExp::Translate.
Entered SimpleVar::Translate. ** Trying to analyze j
gotta varP: 0x561b439d9100
gotta acc: 0x561b439d9010
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439d9f70
with a INFRAME access
translated varKind. which exp = 0x561b439db180
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze j
gotta varP: 0x561b439d9100
gotta acc: 0x561b439d9010
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439db1a0
with a INFRAME access
Analyzed leftT, which.exp = 0x561b439db250
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x561b439db290
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated expT. which exp = 0x561b439db2e0
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze j
gotta varP: 0x561b439d9100
gotta acc: 0x561b439d9010
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439db300
with a INFRAME access
Analyzed leftT, which.exp = 0x561b439db3b0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x561b439db3f0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Ex's UnEx() called
Ex's UnEx() called
called popLoop. 
Ex's UnCx() called
cond.stm = 0x561b439db4d0
Nx's UnNx() called
Entered AssignExp::Translate.
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. ** Trying to analyze list
gotta varP: 0x561b439d65e0
gotta acc: 0x561b439d63d0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x561b439db750
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x561b439db9f0
with a INFRAME access
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x561b439d8de0
gotta acc: 0x561b439d8cf0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439dbb10
with a INFRAME access
Translated indexT, which .exp = 0x561b439dbbc0
Ex's UnEx() called
Ex's UnEx() called
translated varKind. which exp = 0x561b439dbc80
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. ** Trying to analyze list
gotta varP: 0x561b439d65e0
gotta acc: 0x561b439d63d0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x561b439dbca0
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x561b439dbf40
with a INFRAME access
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze j
gotta varP: 0x561b439d9100
gotta acc: 0x561b439d9010
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439dc060
with a INFRAME access
Translated indexT, which .exp = 0x561b439dc110
Ex's UnEx() called
Ex's UnEx() called
translated expT. which exp = 0x561b439dc1d0
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. ** Trying to analyze list
gotta varP: 0x561b439d65e0
gotta acc: 0x561b439d63d0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x561b439dc1f0
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x561b439dc490
with a INFRAME access
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze j
gotta varP: 0x561b439d9100
gotta acc: 0x561b439d9010
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439dc5b0
with a INFRAME access
Translated indexT, which .exp = 0x561b439dc660
Ex's UnEx() called
Ex's UnEx() called
Ex's UnEx() called
Ex's UnEx() called
Entered WhileExp::Translate.
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: LT_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x561b439d8de0
gotta acc: 0x561b439d8cf0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439db730
with a INFRAME access
Analyzed leftT, which.exp = 0x561b439dc840
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze j
gotta varP: 0x561b439d9100
gotta acc: 0x561b439d9010
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439dc860
with a INFRAME access
Analyzed rightT, which.exp = 0x561b439dc910
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x561b439dc9b0
this->elsee != empty. 
Entered OpExp::Translate. OpCode: GE_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze key
gotta varP: 0x561b439d9880
gotta acc: 0x561b439d9310
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439dc9e0
with a INFRAME access
Analyzed leftT, which.exp = 0x561b439dca90
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. ** Trying to analyze list
gotta varP: 0x561b439d65e0
gotta acc: 0x561b439d63d0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x561b439dcab0
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x561b439dcd50
with a INFRAME access
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x561b439d8de0
gotta acc: 0x561b439d8cf0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439dce70
with a INFRAME access
Translated indexT, which .exp = 0x561b439dcf20
Ex's UnEx() called
Ex's UnEx() called
Analyzed rightT, which.exp = 0x561b439dcfe0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
(exists else) translated then, exp = 0x561b439dd080
Entered IntExp::Translate.
(exists else) translated else, exp = 0x561b439dd0d0
Entered AllocLocal. escape? 1
create newAcc fine
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x561b439dd200
with a INFRAME access
Cx's UnCx() called
IfExp: has a return type!
Cx's UnEx() called
Ex's UnEx() called
called addLoop. 
Entered AssignExp::Translate.
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x561b439d8de0
gotta acc: 0x561b439d8cf0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439dd8d0
with a INFRAME access
translated varKind. which exp = 0x561b439dd980
Entered OpExp::Translate. OpCode: PLUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x561b439d8de0
gotta acc: 0x561b439d8cf0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439dd9a0
with a INFRAME access
Analyzed leftT, which.exp = 0x561b439dda50
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x561b439dda90
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated expT. which exp = 0x561b439ddae0
Entered OpExp::Translate. OpCode: PLUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x561b439d8de0
gotta acc: 0x561b439d8cf0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439ddb00
with a INFRAME access
Analyzed leftT, which.exp = 0x561b439ddbb0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x561b439ddbf0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Ex's UnEx() called
Ex's UnEx() called
called popLoop. 
Ex's UnCx() called
cond.stm = 0x561b439ddcd0
Nx's UnNx() called
Entered AssignExp::Translate.
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. ** Trying to analyze list
gotta varP: 0x561b439d65e0
gotta acc: 0x561b439d63d0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x561b439dc790
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x561b439de1e0
with a INFRAME access
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze j
gotta varP: 0x561b439d9100
gotta acc: 0x561b439d9010
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439de300
with a INFRAME access
Translated indexT, which .exp = 0x561b439de3b0
Ex's UnEx() called
Ex's UnEx() called
translated varKind. which exp = 0x561b439de470
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. ** Trying to analyze list
gotta varP: 0x561b439d65e0
gotta acc: 0x561b439d63d0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x561b439de490
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x561b439de730
with a INFRAME access
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x561b439d8de0
gotta acc: 0x561b439d8cf0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439de850
with a INFRAME access
Translated indexT, which .exp = 0x561b439de900
Ex's UnEx() called
Ex's UnEx() called
translated expT. which exp = 0x561b439de9c0
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. ** Trying to analyze list
gotta varP: 0x561b439d65e0
gotta acc: 0x561b439d63d0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x561b439de9e0
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x561b439dec80
with a INFRAME access
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x561b439d8de0
gotta acc: 0x561b439d8cf0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439deda0
with a INFRAME access
Translated indexT, which .exp = 0x561b439dee50
Ex's UnEx() called
Ex's UnEx() called
Ex's UnEx() called
Ex's UnEx() called
Nx's UnNx() called
Nx's UnNx() called
Nx's UnNx() called
Nx's UnNx() called
Nx's UnEx() called
called popLoop. 
Cx's UnCx() called
cond.stm = 0x561b439d9e30
Ex's UnNx() called
Entered AssignExp::Translate.
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. ** Trying to analyze list
gotta varP: 0x561b439d65e0
gotta acc: 0x561b439d63d0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x561b439df2a0
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x561b439df540
with a INFRAME access
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x561b439d8de0
gotta acc: 0x561b439d8cf0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439df660
with a INFRAME access
Translated indexT, which .exp = 0x561b439df710
Ex's UnEx() called
Ex's UnEx() called
translated varKind. which exp = 0x561b439df7d0
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze key
gotta varP: 0x561b439d9880
gotta acc: 0x561b439d9310
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439df7f0
with a INFRAME access
translated expT. which exp = 0x561b439df8a0
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze key
gotta varP: 0x561b439d9880
gotta acc: 0x561b439d9310
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439df8c0
with a INFRAME access
Ex's UnEx() called
Ex's UnEx() called
Entered CallExp::Translate.
found function quicksort
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze left
gotta varP: 0x561b439d8b90
gotta acc: 0x561b439d8b10
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439df280
with a INFRAME access
comparing arg->head and formals->head
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x561b439d8de0
gotta acc: 0x561b439d8cf0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439dfae0
with a INFRAME access
Analyzed leftT, which.exp = 0x561b439dfb90
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x561b439dfbd0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x561b439d2c20
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze left
gotta varP: 0x561b439d8b90
gotta acc: 0x561b439d8b10
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439dfc40
with a INFRAME access
Ex's UnEx() called
[callexp] while (rawExps) => 0x561b439d2c00
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x561b439d8de0
gotta acc: 0x561b439d8cf0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439dfd30
with a INFRAME access
Analyzed leftT, which.exp = 0x561b439dfde0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x561b439dfe20
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Ex's UnEx() called
Entered CallExp::Translate.
found function quicksort
comparing arg->head and formals->head
Entered OpExp::Translate. OpCode: PLUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x561b439d8de0
gotta acc: 0x561b439d8cf0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439df9e0
with a INFRAME access
Analyzed leftT, which.exp = 0x561b439e0010
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x561b439e0050
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze right
gotta varP: 0x561b439d8be0
gotta acc: 0x561b439d8b30
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439e00c0
with a INFRAME access
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x561b439d2d80
Entered OpExp::Translate. OpCode: PLUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x561b439d8de0
gotta acc: 0x561b439d8cf0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439e0190
with a INFRAME access
Analyzed leftT, which.exp = 0x561b439e0240
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x561b439e0280
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Ex's UnEx() called
[callexp] while (rawExps) => 0x561b439d2d60
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze right
gotta varP: 0x561b439d8be0
gotta acc: 0x561b439d8b30
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439e0310
with a INFRAME access
Ex's UnEx() called
Nx's UnNx() called
Nx's UnNx() called
Nx's UnNx() called
Ex's UnNx() called
Ex's UnEx() called
(no else) translated then, exp = 0x561b439e0550
Cx's UnCx() called
IfExp: has no return type!
Ex's UnNx() called
[translate] [seq] exp.size = 1
LetExp translated bodyT, which.exp = 0x561b439e06c0
Nx's UnEx() called
Analyzing function 0x561b439d2fe0
called new level. label: dosort
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
gonna build formals.
buildFormals called. level->frame: 0x561b439e08f0
f_accl = 0x561b439d87b0
formals built.
while #3 end. 
Entered SeqExp::Translate.
Entered CallExp::Translate.
found function init
Call operation returns an 6
[callexp] start traversing rawExps
Entered CallExp::Translate.
found function quicksort
comparing arg->head and formals->head
Entered IntExp::Translate.
comparing arg->head and formals->head
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze N
gotta varP: 0x561b439d5bd0
gotta acc: 0x561b439d5b70
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x561b439e0a90
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x561b439e0d30
with a INFRAME access
Analyzed leftT, which.exp = 0x561b439e0e30
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x561b439e0e70
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x561b439d3170
Entered IntExp::Translate.
Ex's UnEx() called
[callexp] while (rawExps) => 0x561b439d3150
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze N
gotta varP: 0x561b439d5bd0
gotta acc: 0x561b439d5b70
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x561b439e0f40
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x561b439e11e0
with a INFRAME access
Analyzed leftT, which.exp = 0x561b439e12e0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x561b439e1320
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Ex's UnEx() called
Entered ForExp::Translate.
Entered IntExp::Translate.
loTrans success. loTrans.exp = 0x561b439e14d0
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze N
gotta varP: 0x561b439d5bd0
gotta acc: 0x561b439d5b70
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x561b439e14f0
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x561b439e1790
with a INFRAME access
Analyzed leftT, which.exp = 0x561b439e1890
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x561b439e18d0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
hiTrans success. hiTrans.exp = 0x561b439e1920
Entered AllocLocal. escape? 1
create newAcc fine
Entered SeqExp::Translate.
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. ** Trying to analyze list
gotta varP: 0x561b439d65e0
gotta acc: 0x561b439d63d0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x561b439e1ad0
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x561b439e1d70
with a INFRAME access
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x561b439e19f0
gotta acc: 0x561b439e19d0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439e1e90
with a INFRAME access
Translated indexT, which .exp = 0x561b439e1f40
Ex's UnEx() called
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x561b439d33b0
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. ** Trying to analyze list
gotta varP: 0x561b439d65e0
gotta acc: 0x561b439d63d0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x561b439e2020
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x561b439e22c0
with a INFRAME access
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x561b439e19f0
gotta acc: 0x561b439e19d0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x561b439e23e0
with a INFRAME access
Translated indexT, which .exp = 0x561b439e2490
Ex's UnEx() called
Ex's UnEx() called
Ex's UnEx() called
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x561b439d3480
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Ex's UnEx() called
[translate] [seq] exp.size = 2
Ex's UnNx() called
Ex's UnEx() called
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x561b439e2880
with a INFRAME access
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x561b439e2960
with a INFRAME access
Ex's UnEx() called
Ex's UnEx() called
Ex's UnNx() called
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x561b439d3630
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Ex's UnEx() called
Ex's UnNx() called
Ex's UnNx() called
Ex's UnNx() called
Nx's UnNx() called
Ex's UnEx() called
Ex's UnNx() called
Nx's UnNx() called
Ex's UnNx() called
Ex's UnNx() called
[translate] [letexp] while out, stms going to push_back Nx's UnNx() called
0x561b439e2ca0
Nx's UnNx() called
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Entered CallExp::Translate.
found function dosort
Call operation returns an 6
[callexp] start traversing rawExps
[translate] [seq] exp.size = 1
LetExp translated bodyT, which.exp = 0x561b439e3180
Ex's UnEx() called
Ex's UnNx() called
[translate] [frag] called add fragment. kind: PROC
 ~~~~ Completed Translation ~~~~
Ex's UnEx() called
gonna print a EseqExp~
My stm = 0x561b439e31c0, exp = 0x561b439e3150
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a SeqStm~
gonna print a ExpStm~
gonna print a ConstExp~
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a CallExp~
gonna print a NameExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a SeqStm~
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a NameExp~
gonna print a SeqStm~
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x561b439d7030, exp = 0x561b439d7060
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a TempExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a SeqStm~
gonna print a MoveStm~
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
My stm = 0x561b439d82a0, exp = 0x561b439d8360
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x561b439d75e0, exp = 0x561b439d7610
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a TempExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x561b439d7b30, exp = 0x561b439d7b60
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a TempExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a CallExp~
gonna print a NameExp~
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
gonna print a JumpStm~
gonna print a NameExp~
gonna print a LabelStm~
gonna print a SeqStm~
gonna print a ExpStm~
gonna print a EseqExp~
My stm = 0x561b439e0700, exp = 0x561b439e0730
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
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x561b439d9580, exp = 0x561b439d95b0
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a TempExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x561b439e0690, exp = 0x561b439e06e0
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
My stm = 0x561b439df230, exp = 0x561b439e04a0
gonna print a SeqStm~
gonna print a LabelStm~
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
My stm = 0x561b439db6e0, exp = 0x561b439defb0
gonna print a SeqStm~
gonna print a LabelStm~
gonna print a SeqStm~
gonna print a CjumpStm~
gonna print a EseqExp~
My stm = 0x561b439dafc0, exp = 0x561b439daa70
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
gonna print a EseqExp~
My stm = 0x561b439dabd0, exp = 0x561b439dad60
gonna print a MoveStm~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x561b439da800, exp = 0x561b439dad30
gonna print a CjumpStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x561b439da500, exp = 0x561b439da530
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a TempExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x561b439dac00, exp = 0x561b439dad00
gonna print a LabelStm~
gonna print a EseqExp~
My stm = 0x561b439dac60, exp = 0x561b439dacd0
gonna print a MoveStm~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x561b439dac90, exp = 0x561b439dacb0
gonna print a LabelStm~
gonna print a TempExp~
gonna print a SeqStm~
gonna print a JumpStm~
gonna print a NameExp~
gonna print a SeqStm~
gonna print a LabelStm~
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a LabelStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
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
gonna print a EseqExp~
My stm = 0x561b439db6e0, exp = 0x561b439defe0
gonna print a SeqStm~
gonna print a LabelStm~
gonna print a SeqStm~
gonna print a CjumpStm~
gonna print a EseqExp~
My stm = 0x561b439dafc0, exp = 0x561b439daa70
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
gonna print a EseqExp~
My stm = 0x561b439dabd0, exp = 0x561b439dad60
gonna print a MoveStm~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x561b439da800, exp = 0x561b439dad30
gonna print a CjumpStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x561b439da500, exp = 0x561b439da530
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a TempExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x561b439dac00, exp = 0x561b439dad00
gonna print a LabelStm~
gonna print a EseqExp~
My stm = 0x561b439dac60, exp = 0x561b439dacd0
gonna print a MoveStm~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x561b439dac90, exp = 0x561b439dacb0
gonna print a LabelStm~
gonna print a TempExp~
gonna print a SeqStm~
gonna print a JumpStm~
gonna print a NameExp~
gonna print a SeqStm~
gonna print a LabelStm~
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a LabelStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
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
gonna print a EseqExp~
My stm = 0x561b439dc740, exp = 0x561b439df010
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x561b439db9a0, exp = 0x561b439db9d0
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a TempExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x561b439dbef0, exp = 0x561b439dbf20
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a TempExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x561b439ddee0, exp = 0x561b439df060
gonna print a SeqStm~
gonna print a LabelStm~
gonna print a SeqStm~
gonna print a CjumpStm~
gonna print a EseqExp~
My stm = 0x561b439dd7c0, exp = 0x561b439dd270
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
gonna print a EseqExp~
My stm = 0x561b439dd3d0, exp = 0x561b439dd560
gonna print a MoveStm~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x561b439dd000, exp = 0x561b439dd530
gonna print a CjumpStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x561b439dcd00, exp = 0x561b439dcd30
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a TempExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x561b439dd400, exp = 0x561b439dd500
gonna print a LabelStm~
gonna print a EseqExp~
My stm = 0x561b439dd460, exp = 0x561b439dd4d0
gonna print a MoveStm~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x561b439dd490, exp = 0x561b439dd4b0
gonna print a LabelStm~
gonna print a TempExp~
gonna print a SeqStm~
gonna print a JumpStm~
gonna print a NameExp~
gonna print a SeqStm~
gonna print a LabelStm~
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a LabelStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
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
gonna print a EseqExp~
My stm = 0x561b439def30, exp = 0x561b439df040
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x561b439de190, exp = 0x561b439de1c0
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a TempExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x561b439de6e0, exp = 0x561b439de710
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a TempExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a SeqStm~
gonna print a JumpStm~
gonna print a NameExp~
gonna print a LabelStm~
gonna print a EseqExp~
My stm = 0x561b439df230, exp = 0x561b439e04d0
gonna print a SeqStm~
gonna print a LabelStm~
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
My stm = 0x561b439db6e0, exp = 0x561b439defb0
gonna print a SeqStm~
gonna print a LabelStm~
gonna print a SeqStm~
gonna print a CjumpStm~
gonna print a EseqExp~
My stm = 0x561b439dafc0, exp = 0x561b439daa70
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
gonna print a EseqExp~
My stm = 0x561b439dabd0, exp = 0x561b439dad60
gonna print a MoveStm~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x561b439da800, exp = 0x561b439dad30
gonna print a CjumpStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x561b439da500, exp = 0x561b439da530
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a TempExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x561b439dac00, exp = 0x561b439dad00
gonna print a LabelStm~
gonna print a EseqExp~
My stm = 0x561b439dac60, exp = 0x561b439dacd0
gonna print a MoveStm~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x561b439dac90, exp = 0x561b439dacb0
gonna print a LabelStm~
gonna print a TempExp~
gonna print a SeqStm~
gonna print a JumpStm~
gonna print a NameExp~
gonna print a SeqStm~
gonna print a LabelStm~
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a LabelStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
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
gonna print a EseqExp~
My stm = 0x561b439db6e0, exp = 0x561b439defe0
gonna print a SeqStm~
gonna print a LabelStm~
gonna print a SeqStm~
gonna print a CjumpStm~
gonna print a EseqExp~
My stm = 0x561b439dafc0, exp = 0x561b439daa70
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
gonna print a EseqExp~
My stm = 0x561b439dabd0, exp = 0x561b439dad60
gonna print a MoveStm~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x561b439da800, exp = 0x561b439dad30
gonna print a CjumpStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x561b439da500, exp = 0x561b439da530
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a TempExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x561b439dac00, exp = 0x561b439dad00
gonna print a LabelStm~
gonna print a EseqExp~
My stm = 0x561b439dac60, exp = 0x561b439dacd0
gonna print a MoveStm~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x561b439dac90, exp = 0x561b439dacb0
gonna print a LabelStm~
gonna print a TempExp~
gonna print a SeqStm~
gonna print a JumpStm~
gonna print a NameExp~
gonna print a SeqStm~
gonna print a LabelStm~
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a LabelStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
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
gonna print a EseqExp~
My stm = 0x561b439dc740, exp = 0x561b439df010
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x561b439db9a0, exp = 0x561b439db9d0
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a TempExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x561b439dbef0, exp = 0x561b439dbf20
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a TempExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x561b439ddee0, exp = 0x561b439df060
gonna print a SeqStm~
gonna print a LabelStm~
gonna print a SeqStm~
gonna print a CjumpStm~
gonna print a EseqExp~
My stm = 0x561b439dd7c0, exp = 0x561b439dd270
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
gonna print a EseqExp~
My stm = 0x561b439dd3d0, exp = 0x561b439dd560
gonna print a MoveStm~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x561b439dd000, exp = 0x561b439dd530
gonna print a CjumpStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x561b439dcd00, exp = 0x561b439dcd30
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a TempExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x561b439dd400, exp = 0x561b439dd500
gonna print a LabelStm~
gonna print a EseqExp~
My stm = 0x561b439dd460, exp = 0x561b439dd4d0
gonna print a MoveStm~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x561b439dd490, exp = 0x561b439dd4b0
gonna print a LabelStm~
gonna print a TempExp~
gonna print a SeqStm~
gonna print a JumpStm~
gonna print a NameExp~
gonna print a SeqStm~
gonna print a LabelStm~
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a LabelStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
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
gonna print a EseqExp~
My stm = 0x561b439def30, exp = 0x561b439df040
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x561b439de190, exp = 0x561b439de1c0
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a TempExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x561b439de6e0, exp = 0x561b439de710
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a TempExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a SeqStm~
gonna print a JumpStm~
gonna print a NameExp~
gonna print a LabelStm~
gonna print a EseqExp~
My stm = 0x561b439df990, exp = 0x561b439e0520
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x561b439df4f0, exp = 0x561b439df520
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a TempExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x561b439e0500, exp = 0x561b439e0420
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a CallExp~
gonna print a NameExp~
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
gonna print a LabelStm~
gonna print a ConstExp~
gonna print a ExpStm~
gonna print a EseqExp~
My stm = 0x561b439e2f10, exp = 0x561b439e2f80
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a EseqExp~
My stm = 0x561b439e2f60, exp = 0x561b439e2fd0
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a EseqExp~
My stm = 0x561b439e2fb0, exp = 0x561b439e3000
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x561b439e1190, exp = 0x561b439e11c0
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a TempExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x561b439e2c50, exp = 0x561b439e2ec0
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x561b439e1740, exp = 0x561b439e1770
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a TempExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a SeqStm~
gonna print a MoveStm~
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
My stm = 0x561b439e2600, exp = 0x561b439e2830
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x561b439e2270, exp = 0x561b439e22a0
gonna print a SeqStm~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MoveStm~
gonna print a TempExp~
gonna print a TempExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a CallExp~
gonna print a NameExp~
gonna print a NameExp~
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
gonna print a JumpStm~
gonna print a NameExp~
gonna print a LabelStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a NameExp~
gonna print a CallExp~
gonna print a NameExp~
 ~~~~ Completed Printing ~~~~
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x561b439d61e0, 0x561b439e3220
[canon] SeqStm::Canon called. this->left, right = 0x561b439d6350, 0x561b439e3250
[canon] SeqStm::Canon called. this->left, right = 0x561b439d6740, 0x561b439e2ca0
[canon] SeqStm::Canon called. this->left, right = 0x561b439e3050, 0x561b439e3070
[canon] SeqStm::Canon called. this->left, right = 0x561b439d8760, 0x561b439e30c0
[canon] SeqStm::Canon called. this->left, right = 0x561b439e30a0, 0x561b439e30f0
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x561b439e29f0, 0x561b439e2c20
[canon] SeqStm::Canon called. this->left, right = 0x561b439e2a20, 0x561b439e2bf0
[canon] SeqStm::Canon called. this->left, right = 0x561b439e2a50, 0x561b439e2bc0
[canon] SeqStm::Canon called. this->left, right = 0x561b439e2a70, 0x561b439e2b90
[canon] SeqStm::Canon called. this->left, right = 0x561b439e2a90, 0x561b439e2b60
[canon] SeqStm::Canon called. this->left, right = 0x561b439e2b10, 0x561b439e2b40
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439e2880, 0x561b439e28f0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439e2960, 0x561b439e2980
[canon] TempExp::Canon called
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
[canon] [binop] left, right = 0x561b439e23a0, 0x561b439e24d0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439e22c0, 0x561b439e2350
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x561b439e21d0, 0x561b439e2240
[canon] MoveStm::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439e2020, 0x561b439e2040
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439e2470, 0x561b439e24b0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439e23e0, 0x561b439e2420
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439e2880, 0x561b439e28f0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439e2960, 0x561b439e2980
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439e1870, 0x561b439e18b0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439e1790, 0x561b439e1820
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x561b439e16a0, 0x561b439e1710
[canon] MoveStm::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439e14f0, 0x561b439e1510
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439e12c0, 0x561b439e1300
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439e11e0, 0x561b439e1270
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x561b439e10f0, 0x561b439e1160
[canon] MoveStm::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439e0f40, 0x561b439e0f60
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x561b439d9be0, 0x561b439e0660
[canon] SeqStm::Canon called. this->left, right = 0x561b439e05d0, 0x561b439e0630
[canon] SeqStm::Canon called. this->left, right = 0x561b439e05f0, 0x561b439e0610
[canon] LabelStm::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439e0310, 0x561b439e0350
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439e0220, 0x561b439e0260
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439e0190, 0x561b439e01d0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439dfdc0, 0x561b439dfe00
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439dfd30, 0x561b439dfd70
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439dfc40, 0x561b439dfc80
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439df620, 0x561b439df750
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439df540, 0x561b439df5d0
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x561b439df450, 0x561b439df4c0
[canon] MoveStm::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439df2a0, 0x561b439df2c0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439df6f0, 0x561b439df730
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439df660, 0x561b439df6a0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439df7f0, 0x561b439df830
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x561b439df0b0, 0x561b439df200
[canon] SeqStm::Canon called. this->left, right = 0x561b439d9e30, 0x561b439df1d0
[canon] SeqStm::Canon called. this->left, right = 0x561b439df0d0, 0x561b439df1a0
[canon] SeqStm::Canon called. this->left, right = 0x561b439df0f0, 0x561b439df170
[canon] SeqStm::Canon called. this->left, right = 0x561b439ddf30, 0x561b439df150
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439de2c0, 0x561b439de3f0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439de1e0, 0x561b439de270
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x561b439de0f0, 0x561b439de160
[canon] MoveStm::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439dc790, 0x561b439ddf60
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439de390, 0x561b439de3d0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439de300, 0x561b439de340
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439de810, 0x561b439de940
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439de730, 0x561b439de7c0
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x561b439de640, 0x561b439de6b0
[canon] MoveStm::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439de490, 0x561b439de4b0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439de8e0, 0x561b439de920
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439de850, 0x561b439de890
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x561b439ddd50, 0x561b439ddeb0
[canon] SeqStm::Canon called. this->left, right = 0x561b439ddcd0, 0x561b439dde80
[canon] SeqStm::Canon called. this->left, right = 0x561b439ddd70, 0x561b439dde50
[canon] SeqStm::Canon called. this->left, right = 0x561b439ddc60, 0x561b439dde20
[canon] SeqStm::Canon called. this->left, right = 0x561b439dddd0, 0x561b439dde00
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439dd8d0, 0x561b439dd910
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439dda30, 0x561b439dda70
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439dd9a0, 0x561b439dd9e0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] EseqExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439dd200, 0x561b439dd220
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x561b439dc930, 0x561b439dd790
[canon] SeqStm::Canon called. this->left, right = 0x561b439dd290, 0x561b439dd760
[canon] SeqStm::Canon called. this->left, right = 0x561b439dd5c0, 0x561b439dd730
[canon] SeqStm::Canon called. this->left, right = 0x561b439dd630, 0x561b439dd700
[canon] SeqStm::Canon called. this->left, right = 0x561b439dd660, 0x561b439dd6d0
[canon] SeqStm::Canon called. this->left, right = 0x561b439dd680, 0x561b439dd6b0
[canon] LabelStm::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439dd200, 0x561b439dd220
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439dd200, 0x561b439dd220
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
[canon] [binop] left, right = 0x561b439dc9e0, 0x561b439dca20
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439dce30, 0x561b439dcf60
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439dcd50, 0x561b439dcde0
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x561b439dcc60, 0x561b439dccd0
[canon] MoveStm::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439dcab0, 0x561b439dcad0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439dcf00, 0x561b439dcf40
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439dce70, 0x561b439dceb0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439db730, 0x561b439dc7d0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439dc860, 0x561b439dc8a0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439dbad0, 0x561b439dbc00
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439db9f0, 0x561b439dba80
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x561b439db900, 0x561b439db970
[canon] MoveStm::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439db750, 0x561b439db770
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439dbba0, 0x561b439dbbe0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439dbb10, 0x561b439dbb50
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439dc020, 0x561b439dc150
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439dbf40, 0x561b439dbfd0
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x561b439dbe50, 0x561b439dbec0
[canon] MoveStm::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439dbca0, 0x561b439dbcc0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439dc0f0, 0x561b439dc130
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439dc060, 0x561b439dc0a0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x561b439db550, 0x561b439db6b0
[canon] SeqStm::Canon called. this->left, right = 0x561b439db4d0, 0x561b439db680
[canon] SeqStm::Canon called. this->left, right = 0x561b439db570, 0x561b439db650
[canon] SeqStm::Canon called. this->left, right = 0x561b439db460, 0x561b439db620
[canon] SeqStm::Canon called. this->left, right = 0x561b439db5d0, 0x561b439db600
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d9f70, 0x561b439db110
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439db230, 0x561b439db270
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439db1a0, 0x561b439db1e0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] EseqExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439daa00, 0x561b439daa20
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x561b439da130, 0x561b439daf90
[canon] SeqStm::Canon called. this->left, right = 0x561b439daa90, 0x561b439daf60
[canon] SeqStm::Canon called. this->left, right = 0x561b439dadc0, 0x561b439daf30
[canon] SeqStm::Canon called. this->left, right = 0x561b439dae30, 0x561b439daf00
[canon] SeqStm::Canon called. this->left, right = 0x561b439dae60, 0x561b439daed0
[canon] SeqStm::Canon called. this->left, right = 0x561b439dae80, 0x561b439daeb0
[canon] LabelStm::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439daa00, 0x561b439daa20
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439daa00, 0x561b439daa20
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
[canon] [binop] left, right = 0x561b439da1e0, 0x561b439da220
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439da630, 0x561b439da760
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439da550, 0x561b439da5e0
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x561b439da460, 0x561b439da4d0
[canon] MoveStm::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439da2b0, 0x561b439da2d0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439da700, 0x561b439da740
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439da670, 0x561b439da6b0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d9f90, 0x561b439d9fd0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439da060, 0x561b439da0a0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x561b439db550, 0x561b439db6b0
[canon] SeqStm::Canon called. this->left, right = 0x561b439db4d0, 0x561b439db680
[canon] SeqStm::Canon called. this->left, right = 0x561b439db570, 0x561b439db650
[canon] SeqStm::Canon called. this->left, right = 0x561b439db460, 0x561b439db620
[canon] SeqStm::Canon called. this->left, right = 0x561b439db5d0, 0x561b439db600
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d9f70, 0x561b439db110
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439db230, 0x561b439db270
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439db1a0, 0x561b439db1e0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d9c90, 0x561b439d9cd0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d9d60, 0x561b439d9da0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x561b439df0b0, 0x561b439df200
[canon] SeqStm::Canon called. this->left, right = 0x561b439d9e30, 0x561b439df1d0
[canon] SeqStm::Canon called. this->left, right = 0x561b439df0d0, 0x561b439df1a0
[canon] SeqStm::Canon called. this->left, right = 0x561b439df0f0, 0x561b439df170
[canon] SeqStm::Canon called. this->left, right = 0x561b439ddf30, 0x561b439df150
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d9c90, 0x561b439d9cd0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d9d60, 0x561b439d9da0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d92b0, 0x561b439d9a80
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d9b10, 0x561b439d9b50
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x561b439d8f40, 0x561b439e0790
[canon] SeqStm::Canon called. this->left, right = 0x561b439d9260, 0x561b439d99e0
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d9950, 0x561b439d9970
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d96b0, 0x561b439d97e0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d95d0, 0x561b439d9660
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x561b439d94e0, 0x561b439d9550
[canon] MoveStm::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d9330, 0x561b439d9350
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d9780, 0x561b439d97c0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d96f0, 0x561b439d9730
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d91d0, 0x561b439d91f0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d9030, 0x561b439d9070
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d8eb0, 0x561b439d8ed0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d8d10, 0x561b439d8d50
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x561b439d8500, 0x561b439d8730
[canon] SeqStm::Canon called. this->left, right = 0x561b439d8530, 0x561b439d8700
[canon] SeqStm::Canon called. this->left, right = 0x561b439d8560, 0x561b439d86d0
[canon] SeqStm::Canon called. this->left, right = 0x561b439d8580, 0x561b439d86a0
[canon] SeqStm::Canon called. this->left, right = 0x561b439d85a0, 0x561b439d8670
[canon] SeqStm::Canon called. this->left, right = 0x561b439d8620, 0x561b439d8650
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d83b0, 0x561b439d8400
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d8470, 0x561b439d8490
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d7710, 0x561b439d7840
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d7630, 0x561b439d76c0
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x561b439d7540, 0x561b439d75b0
[canon] MoveStm::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d7390, 0x561b439d73b0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d77e0, 0x561b439d7820
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d7750, 0x561b439d7790
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d7c60, 0x561b439d7d30
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d7b80, 0x561b439d7c10
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x561b439d7a90, 0x561b439d7b00
[canon] MoveStm::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d78e0, 0x561b439d7900
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d7ca0, 0x561b439d7ce0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d83b0, 0x561b439d8400
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d8470, 0x561b439d8490
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d7160, 0x561b439d71a0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d7080, 0x561b439d7110
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x561b439d6f90, 0x561b439d7000
[canon] MoveStm::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d6de0, 0x561b439d6e00
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d66b0, 0x561b439d66d0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d6430, 0x561b439d6470
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d6430, 0x561b439d6470
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x561b439d6150, 0x561b439d6170
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439f3870
[codegen] fallen into LABEL
I'm trying to find the label L37
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439d61e0
[codegen] fallen into MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)
[codegen] entered munchExp. expNode: 0x561b439d6150
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439d5b90
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439f2470
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439d66f0
[codegen] fallen into BINOP(PLUS, e1, CONST(i))
[codegen] entered munchExp. expNode: 0x561b439d66b0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439f1f10
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439d6590
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x561b439d64c0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439d6430
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439d64c0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439d6430
[codegen] fallen into TEMP(t)
returnValue register requested
gonna return new returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439d6740
[codegen] fallen into MOVE(MEM(e1), e2)
[codegen] entered munchExp. expNode: 0x561b439f2430
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439f1f40
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439e3050
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x561b439d6b00
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x561b439d6a80
[codegen] fallen into NAME
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439f1b10
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439d84b0
[codegen] fallen into BINOP(PLUS, e1, CONST(i))
[codegen] entered munchExp. expNode: 0x561b439d8470
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439d6f90
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439d6e50
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439d6de0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439d7000
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439d6fe0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439d8500
[codegen] fallen into MOVE(MEM(e1), e2)
[codegen] entered munchExp. expNode: 0x561b439f1ad0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439d71e0
[codegen] entered munchExp. expNode: 0x561b439d7160
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439d7060
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439d71a0
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439d8530
[codegen] fallen into MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)
[codegen] entered munchExp. expNode: 0x561b439d83b0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439d6da0
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439d8560
[codegen] fallen into LABEL
I'm trying to find the label L5
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439d7540
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439d7400
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439d7390
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439d75b0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439d7590
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439f10a0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439d7870
[codegen] fallen into BINOP(PLUS(e1, e2)
[codegen] entered munchExp. expNode: 0x561b439d7710
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439d7610
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439d7840
[codegen] entered munchExp. expNode: 0x561b439d77e0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439d7750
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439d7820
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439d7a90
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439d7950
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439d78e0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439d7b00
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439d7ae0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439d82a0
[codegen] fallen into MOVE(MEM(e1), e2)
[codegen] entered munchExp. expNode: 0x561b439f1060
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439d7d70
[codegen] entered munchExp. expNode: 0x561b439d7c60
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439d7b60
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439d7d30
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439d7ca0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439d8580
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x561b439d8360
[codegen] fallen into CALL
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439d85a0
[codegen] fallen into CJUMP
[codegen] entered munchExp. expNode: 0x561b439d8450
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439d83b0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439d84e0
[codegen] fallen into MEM(e1)
[codegen] entered munchExp. expNode: 0x561b439f1ad0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439d8650
[codegen] fallen into LABEL
I'm trying to find the label L4
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439d8f40
[codegen] fallen into MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)
[codegen] entered munchExp. expNode: 0x561b439d8eb0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439d8da0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439d8d10
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439d9260
[codegen] fallen into MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)
[codegen] entered munchExp. expNode: 0x561b439d91d0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439d90c0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439d9030
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439ef6b0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439d9990
[codegen] fallen into BINOP(PLUS, e1, CONST(i))
[codegen] entered munchExp. expNode: 0x561b439d9950
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439d94e0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439d93a0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439d9330
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439d9550
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439d9530
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439d99e0
[codegen] fallen into MOVE(MEM(e1), MEM(e2)
[codegen] entered munchExp. expNode: 0x561b439ef670
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439d9810
[codegen] fallen into BINOP(PLUS(e1, e2)
[codegen] entered munchExp. expNode: 0x561b439d96b0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439d95b0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439d97e0
[codegen] entered munchExp. expNode: 0x561b439d9780
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439d96f0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439d97c0
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439d9be0
[codegen] fallen into CJUMP
[codegen] entered munchExp. expNode: 0x561b439d9ad0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439d92b0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439d9ba0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439d9b10
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439e0610
[codegen] fallen into LABEL
I'm trying to find the label L27
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439e2f10
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x561b439e09b0
[codegen] fallen into CALL
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439e2f60
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x561b439e09b0
[codegen] fallen into CALL
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439e10f0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439e0fb0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439e0f40
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439e1160
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439e1140
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439e2fb0
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x561b439e13d0
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x561b439e0ee0
[codegen] fallen into CONST(i)
[codegen] entered munchExp. expNode: 0x561b439e1340
[codegen] entered munchExp. expNode: 0x561b439e12c0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439e11c0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439e1300
[codegen] fallen into CONST(i)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439e61f0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439e29a0
[codegen] fallen into BINOP(PLUS, e1, CONST(i))
[codegen] entered munchExp. expNode: 0x561b439e2960
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439e16a0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439e1560
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439e14f0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439e1710
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439e16f0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439e29f0
[codegen] fallen into MOVE(MEM(e1), e2)
[codegen] entered munchExp. expNode: 0x561b439e61b0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439e18f0
[codegen] entered munchExp. expNode: 0x561b439e1870
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439e1770
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439e18b0
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439e2a20
[codegen] fallen into MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)
[codegen] entered munchExp. expNode: 0x561b439e2880
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439e0a00
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439e2a50
[codegen] fallen into LABEL
I'm trying to find the label L30
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439e21d0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439e2090
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439e2020
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439e2240
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439e2220
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439e2600
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x561b439e25b0
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x561b439e2530
[codegen] fallen into MEM(e1)
[codegen] entered munchExp. expNode: 0x561b439e2500
[codegen] fallen into BINOP(PLUS(e1, e2)
[codegen] entered munchExp. expNode: 0x561b439e23a0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439e22a0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439e24d0
[codegen] entered munchExp. expNode: 0x561b439e2470
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439e23e0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439e24b0
[codegen] fallen into CONST(i)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439e2a70
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x561b439e2830
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x561b439e27b0
[codegen] fallen into NAME
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439e2a90
[codegen] fallen into CJUMP
[codegen] entered munchExp. expNode: 0x561b439e2940
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439e2880
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439e29d0
[codegen] fallen into MEM(e1)
[codegen] entered munchExp. expNode: 0x561b439e61b0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439e2b40
[codegen] fallen into LABEL
I'm trying to find the label L29
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439e30f0
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x561b439e2ec0
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x561b439e2e40
[codegen] fallen into NAME
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439e3280
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x561b439e3150
[codegen] fallen into CALL
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439f4090
[codegen] fallen into JUMP
gotta jexp = 0x561b439f4070
gotta jmpTo = 0x561b439f3810
escaped from instr = 0x561b439fbea0
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439f3970
[codegen] fallen into LABEL
I'm trying to find the label L38
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439d8620
[codegen] fallen into JUMP
gotta jexp = 0x561b439d8600
gotta jmpTo = 0x561b439d6d40
escaped from instr = 0x561b439fbf90
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439e05d0
[codegen] fallen into LABEL
I'm trying to find the label L26
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439df0b0
[codegen] fallen into LABEL
I'm trying to find the label L7
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439d9e30
[codegen] fallen into CJUMP
[codegen] entered munchExp. expNode: 0x561b439d9d20
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439d9c90
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439d9df0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439d9d60
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439df150
[codegen] fallen into LABEL
I'm trying to find the label L9
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439df450
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439df310
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439df2a0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439df4c0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439df4a0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439df990
[codegen] fallen into MOVE(MEM(e1), MEM(e2)
[codegen] entered munchExp. expNode: 0x561b439df780
[codegen] fallen into BINOP(PLUS(e1, e2)
[codegen] entered munchExp. expNode: 0x561b439df620
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439df520
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439df750
[codegen] entered munchExp. expNode: 0x561b439df6f0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439df660
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439df730
[codegen] fallen into CONST(i)
[codegen] entered munchExp. expNode: 0x561b439df850
[codegen] fallen into BINOP(PLUS, e1, CONST(i))
[codegen] entered munchExp. expNode: 0x561b439df7f0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439e0500
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x561b439dfed0
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x561b439dfcd0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439dfc40
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439dfe40
[codegen] entered munchExp. expNode: 0x561b439dfdc0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439dfd30
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439dfe00
[codegen] fallen into CONST(i)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439e05f0
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x561b439e0420
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x561b439e02a0
[codegen] fallen into BINOP(PLUS, e1, CONST(i))
[codegen] entered munchExp. expNode: 0x561b439e0220
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439e0190
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439e03a0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439e0310
[codegen] fallen into TEMP(t)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439f3f00
[codegen] fallen into JUMP
gotta jexp = 0x561b439f3ee0
gotta jmpTo = 0x561b439e0570
escaped from instr = 0x561b439fdae0
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439df0d0
[codegen] fallen into LABEL
I'm trying to find the label L8
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439ddf30
[codegen] fallen into JUMP
gotta jexp = 0x561b439df130
gotta jmpTo = 0x561b439d9ee0
escaped from instr = 0x561b439fdbd0
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439db550
[codegen] fallen into LABEL
I'm trying to find the label L15
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439db4d0
[codegen] fallen into CJUMP
[codegen] entered munchExp. expNode: 0x561b439daa70
[codegen] fallen into MEM(e1)
[codegen] entered munchExp. expNode: 0x561b439ed2c0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439db4b0
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439db600
[codegen] fallen into LABEL
I'm trying to find the label L17
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439db900
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439db7c0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439db750
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439db970
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439db950
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439eba10
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439dbc30
[codegen] fallen into BINOP(PLUS(e1, e2)
[codegen] entered munchExp. expNode: 0x561b439dbad0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439db9d0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439dbc00
[codegen] entered munchExp. expNode: 0x561b439dbba0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439dbb10
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439dbbe0
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439dbe50
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439dbd10
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439dbca0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439dbec0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439dbea0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439dc740
[codegen] fallen into MOVE(MEM(e1), MEM(e2)
[codegen] entered munchExp. expNode: 0x561b439eb9d0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439dc180
[codegen] fallen into BINOP(PLUS(e1, e2)
[codegen] entered munchExp. expNode: 0x561b439dc020
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439dbf20
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439dc150
[codegen] entered munchExp. expNode: 0x561b439dc0f0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439dc060
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439dc130
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439ddd50
[codegen] fallen into LABEL
I'm trying to find the label L23
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439dc930
[codegen] fallen into CJUMP
[codegen] entered munchExp. expNode: 0x561b439dc820
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439db730
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439dc8f0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439dc860
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439dd660
[codegen] fallen into LABEL
I'm trying to find the label L19
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439dd680
[codegen] fallen into MOVE(MEM(e1), e2)
[codegen] entered munchExp. expNode: 0x561b439ea570
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439dd0b0
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439dd6b0
[codegen] fallen into LABEL
I'm trying to find the label L20
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439ddcd0
[codegen] fallen into CJUMP
[codegen] entered munchExp. expNode: 0x561b439dd270
[codegen] fallen into MEM(e1)
[codegen] entered munchExp. expNode: 0x561b439ea570
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439ddcb0
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439dde00
[codegen] fallen into LABEL
I'm trying to find the label L25
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439de0f0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439ddfb0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439dc790
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439de160
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439de140
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439e8cf0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439de420
[codegen] fallen into BINOP(PLUS(e1, e2)
[codegen] entered munchExp. expNode: 0x561b439de2c0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439de1c0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439de3f0
[codegen] entered munchExp. expNode: 0x561b439de390
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439de300
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439de3d0
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439de640
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439de500
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439de490
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439de6b0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439de690
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439def30
[codegen] fallen into MOVE(MEM(e1), MEM(e2)
[codegen] entered munchExp. expNode: 0x561b439e8cb0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439de970
[codegen] fallen into BINOP(PLUS(e1, e2)
[codegen] entered munchExp. expNode: 0x561b439de810
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439de710
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439de940
[codegen] entered munchExp. expNode: 0x561b439de8e0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439de850
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439de920
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439ddf30
[codegen] fallen into JUMP
gotta jexp = 0x561b439df130
gotta jmpTo = 0x561b439d9ee0
escaped from instr = 0x561b43a012d0
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439db570
[codegen] fallen into LABEL
I'm trying to find the label L16
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439db460
[codegen] fallen into MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)
[codegen] entered munchExp. expNode: 0x561b439d9f70
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439db2b0
[codegen] entered munchExp. expNode: 0x561b439db230
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439db1a0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439db270
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439db5d0
[codegen] fallen into JUMP
gotta jexp = 0x561b439db5b0
gotta jmpTo = 0x561b439db040
escaped from instr = 0x561b43a01860
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439daa90
[codegen] fallen into LABEL
I'm trying to find the label L10
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439ed300
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439daa40
[codegen] fallen into BINOP(PLUS, e1, CONST(i))
[codegen] entered munchExp. expNode: 0x561b439daa00
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439dabd0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439dabb0
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439ed070
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439da270
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439da1e0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439da460
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439da320
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439da2b0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439da4d0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439da4b0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439da800
[codegen] fallen into CJUMP
[codegen] entered munchExp. expNode: 0x561b439ed030
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439da7c0
[codegen] fallen into MEM(e1)
[codegen] entered munchExp. expNode: 0x561b439da790
[codegen] fallen into BINOP(PLUS(e1, e2)
[codegen] entered munchExp. expNode: 0x561b439da630
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439da530
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439da760
[codegen] entered munchExp. expNode: 0x561b439da700
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439da670
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439da740
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439dac00
[codegen] fallen into LABEL
I'm trying to find the label L14
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439dac60
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439dac40
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439dac90
[codegen] fallen into LABEL
I'm trying to find the label L13
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439dadc0
[codegen] fallen into MOVE(MEM(e1), e2)
[codegen] entered munchExp. expNode: 0x561b439ed2c0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439dacb0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439daeb0
[codegen] fallen into LABEL
I'm trying to find the label L12
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439f5400
[codegen] fallen into CJUMP
[codegen] entered munchExp. expNode: 0x561b439daa70
[codegen] fallen into MEM(e1)
[codegen] entered munchExp. expNode: 0x561b439ed2c0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439db4b0
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439f5440
[codegen] fallen into LABEL
I'm trying to find the label L40
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439f54a0
[codegen] fallen into JUMP
gotta jexp = 0x561b439f5480
gotta jmpTo = 0x561b439db0a0
escaped from instr = 0x561b43a03240
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439dae60
[codegen] fallen into LABEL
I'm trying to find the label L11
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439dae80
[codegen] fallen into MOVE(MEM(e1), e2)
[codegen] entered munchExp. expNode: 0x561b439ed2c0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439da8b0
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439f3cc0
[codegen] fallen into JUMP
gotta jexp = 0x561b439f3ca0
gotta jmpTo = 0x561b439da950
escaped from instr = 0x561b43a034f0
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439dd290
[codegen] fallen into LABEL
I'm trying to find the label L18
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439ea5b0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439dd240
[codegen] fallen into BINOP(PLUS, e1, CONST(i))
[codegen] entered munchExp. expNode: 0x561b439dd200
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439dd3d0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439dd3b0
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439ea320
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439dca70
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439dc9e0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439dcc60
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439dcb20
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439dcab0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439dccd0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439dccb0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439dd000
[codegen] fallen into CJUMP
[codegen] entered munchExp. expNode: 0x561b439ea2e0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439dcfc0
[codegen] fallen into MEM(e1)
[codegen] entered munchExp. expNode: 0x561b439dcf90
[codegen] fallen into BINOP(PLUS(e1, e2)
[codegen] entered munchExp. expNode: 0x561b439dce30
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439dcd30
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439dcf60
[codegen] entered munchExp. expNode: 0x561b439dcf00
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439dce70
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439dcf40
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439dd400
[codegen] fallen into LABEL
I'm trying to find the label L22
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439dd460
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x561b439dd440
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439dd490
[codegen] fallen into LABEL
I'm trying to find the label L21
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439dd5c0
[codegen] fallen into MOVE(MEM(e1), e2)
[codegen] entered munchExp. expNode: 0x561b439ea570
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439dd4b0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439dd630
[codegen] fallen into JUMP
gotta jexp = 0x561b439dd610
gotta jmpTo = 0x561b439dd150
escaped from instr = 0x561b43a04a80
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439ddd70
[codegen] fallen into LABEL
I'm trying to find the label L24
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439ddc60
[codegen] fallen into MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)
[codegen] entered munchExp. expNode: 0x561b439dd8d0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x561b439ddab0
[codegen] fallen into BINOP(PLUS, e1, CONST(i))
[codegen] entered munchExp. expNode: 0x561b439dda30
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x561b439dd9a0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439dddd0
[codegen] fallen into JUMP
gotta jexp = 0x561b439dddb0
gotta jmpTo = 0x561b439dd840
escaped from instr = 0x561b43a04f10
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439f4010
[codegen] fallen into LABEL
I'm trying to find the label L39
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439e2b10
[codegen] fallen into JUMP
gotta jexp = 0x561b439e2af0
gotta jmpTo = 0x561b439e1470
escaped from instr = 0x561b43a05000
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x561b439f55f0
[codegen] fallen into LABEL
I'm trying to find the label L36
