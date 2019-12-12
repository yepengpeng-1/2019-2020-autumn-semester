Called TranslateProgram(A::Exp* root).
Entered LetExp::Translate.
[translate] [letexp] while!
Entered VarDec::Translate. going to declare var: N
Entered AllocLocal. escape? 1
create newAcc fine
Entered IntExp::Translate.
implicit type: 0x55ce5692c104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return new framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x55ce5867a230
[translate] [letexp] while out, stms going to push_back Nx's UnNx() called
0x55ce5867a200
Nx's UnNx() called
[translate] [letexp] while!
Entered TypeDec::Translate.
queue.size() <= 1
Entered ArrayTy::Translate.
declared type intArray, id: 0x55ce5867a2f0
[translate] [letexp] while out, stms going to push_back Ex's UnNx() called
0x55ce5867a350
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
gotta varP: 0x55ce58679bf0
gotta acc: 0x55ce58679b90
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867a450
with a INFRAME access
Ex's UnEx() called
Ex's UnEx() called
implicit type: 0x55ce5867a2f0
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return existed framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x55ce5867a790
[translate] [letexp] while out, stms going to push_back Nx's UnNx() called
0x55ce5867a760
Nx's UnNx() called
[translate] [letexp] while!
Entered FunctionDec::Translate.
Analyzing function 0x55ce58675f70
called new level. label: nop
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
gonna build formals.
buildFormals called. level->frame: 0x55ce5867a270
f_accl = 0x55ce5867a390
formals built.
while #3 end. 
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x55ce58676050
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Ex's UnEx() called
Analyzing function 0x55ce58676130
called new level. label: init
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
gonna build formals.
buildFormals called. level->frame: 0x55ce5867acc0
f_accl = 0x55ce5867aca0
formals built.
while #3 end. 
Entered ForExp::Translate.
Entered IntExp::Translate.
loTrans success. loTrans.exp = 0x55ce5867ade0
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze N
gotta varP: 0x55ce58679bf0
gotta acc: 0x55ce58679b90
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x55ce5867ae00
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867b0a0
with a INFRAME access
Analyzed leftT, which.exp = 0x55ce5867b1a0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55ce5867b1e0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
hiTrans success. hiTrans.exp = 0x55ce5867b230
Entered AllocLocal. escape? 1
create newAcc fine
Entered SeqExp::Translate.
Entered AssignExp::Translate.
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. ** Trying to analyze list
gotta varP: 0x55ce5867a600
gotta acc: 0x55ce5867a3f0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x55ce5867b3b0
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867b650
with a INFRAME access
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x55ce5867b300
gotta acc: 0x55ce5867b2e0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867b770
with a INFRAME access
Translated indexT, which .exp = 0x55ce5867b820
Ex's UnEx() called
Ex's UnEx() called
translated varKind. which exp = 0x55ce5867b8e0
Entered OpExp::Translate. OpCode: PLUS_OP
Entered OpExp::Translate. OpCode: TIMES_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x55ce5867b300
gotta acc: 0x55ce5867b2e0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867b900
with a INFRAME access
Analyzed leftT, which.exp = 0x55ce5867b9b0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55ce5867b9f0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Analyzed leftT, which.exp = 0x55ce5867ba40
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55ce5867ba80
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated expT. which exp = 0x55ce5867bad0
Entered OpExp::Translate. OpCode: PLUS_OP
Entered OpExp::Translate. OpCode: TIMES_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze i
gotta varP: 0x55ce5867b300
gotta acc: 0x55ce5867b2e0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867baf0
with a INFRAME access
Analyzed leftT, which.exp = 0x55ce5867bba0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55ce5867bbe0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Analyzed leftT, which.exp = 0x55ce5867bc30
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55ce5867bc70
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
called getExp. input framePtr = 0x55ce5867bdf0
with a INFRAME access
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x55ce5867beb0
with a INFRAME access
Ex's UnEx() called
Ex's UnEx() called
Ex's UnNx() called
Analyzing function 0x55ce58676890
called new level. label: bsearch
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
created new InFrameAccess. sym: left
created new InFrameAccess. sym: right
created new InFrameAccess. sym: c
gonna build formals.
buildFormals called. level->frame: 0x55ce5867c5c0
f_accl = 0x55ce5867c5a0
formals built.
while #3. name: left. fl, t, formals: 0x55ce58676a20, 0x55ce5867c290, 0x55ce5867c6d0
while #3. name: right. fl, t, formals: 0x55ce586769d0, 0x55ce5867c270, 0x55ce5867c6b0
while #3. name: c. fl, t, formals: 0x55ce58676980, 0x55ce5867c250, 0x55ce5867c690
while #3 end. 
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: EQ_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze left
gotta varP: 0x55ce5867c6f0
gotta acc: 0x55ce5867c630
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867c7e0
with a INFRAME access
Analyzed leftT, which.exp = 0x55ce5867c890
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze right
gotta varP: 0x55ce5867c740
gotta acc: 0x55ce5867c650
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867c8b0
with a INFRAME access
Analyzed rightT, which.exp = 0x55ce5867c960
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x55ce5867ca00
this->elsee != empty. 
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze left
gotta varP: 0x55ce5867c6f0
gotta acc: 0x55ce5867c630
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867ca30
with a INFRAME access
(exists else) translated then, exp = 0x55ce5867cae0
Entered LetExp::Translate.
[translate] [letexp] while!
Entered VarDec::Translate. going to declare var: mid
Entered AllocLocal. escape? 1
create newAcc fine
Entered OpExp::Translate. OpCode: DIVIDE_OP
Entered OpExp::Translate. OpCode: PLUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze left
gotta varP: 0x55ce5867c6f0
gotta acc: 0x55ce5867c630
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867cbe0
with a INFRAME access
Analyzed leftT, which.exp = 0x55ce5867cc90
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze right
gotta varP: 0x55ce5867c740
gotta acc: 0x55ce5867c650
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867ccb0
with a INFRAME access
Analyzed rightT, which.exp = 0x55ce5867cd60
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Analyzed leftT, which.exp = 0x55ce5867cdb0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55ce5867cdf0
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
implicit type: 0x55ce5692c104
Entered AllocLocal. escape? 1
create newAcc fine
AllocLocal fine
framePointer register requested
gonna return existed framePointer register
ToExp called
Ex's UnEx() called
successfully generated resultExp0x55ce5867cff0
[translate] [letexp] while out, stms going to push_back Nx's UnNx() called
0x55ce5867cfc0
Nx's UnNx() called
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Entered IfExp::Translate
Entered OpExp::Translate. OpCode: LT_OP
Entered VarExp::Translate.
analyse a SUBSCRIPT var
Entered SubscriptVar::Translate.
Entered SimpleVar::Translate. ** Trying to analyze list
gotta varP: 0x55ce5867a600
gotta acc: 0x55ce5867a3f0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x55ce5867d030
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867d2d0
with a INFRAME access
this->var->kind = SIMPLE
array type required
before we call recEnt->ty->kind
4
recEnt->ty->kind = ARRAY
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze mid
gotta varP: 0x55ce5867ce60
gotta acc: 0x55ce5867cbc0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867d3f0
with a INFRAME access
Translated indexT, which .exp = 0x55ce5867d4a0
Ex's UnEx() called
Ex's UnEx() called
Analyzed leftT, which.exp = 0x55ce5867d560
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze c
gotta varP: 0x55ce5867c790
gotta acc: 0x55ce5867c670
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867d580
with a INFRAME access
Analyzed rightT, which.exp = 0x55ce5867d630
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
translated testT. exp = 0x55ce5867d6d0
this->elsee != empty. 
Entered CallExp::Translate.
found function bsearch
comparing arg->head and formals->head
Entered OpExp::Translate. OpCode: PLUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze mid
gotta varP: 0x55ce5867ce60
gotta acc: 0x55ce5867cbc0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867d730
with a INFRAME access
Analyzed leftT, which.exp = 0x55ce5867d7e0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55ce5867d820
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze right
gotta varP: 0x55ce5867c740
gotta acc: 0x55ce5867c650
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867d890
with a INFRAME access
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze c
gotta varP: 0x55ce5867c790
gotta acc: 0x55ce5867c670
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867d960
with a INFRAME access
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x55ce58677030
Entered OpExp::Translate. OpCode: PLUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze mid
gotta varP: 0x55ce5867ce60
gotta acc: 0x55ce5867cbc0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867da30
with a INFRAME access
Analyzed leftT, which.exp = 0x55ce5867dae0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55ce5867db20
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Ex's UnEx() called
[callexp] while (rawExps) => 0x55ce58677010
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze right
gotta varP: 0x55ce5867c740
gotta acc: 0x55ce5867c650
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867dbb0
with a INFRAME access
Ex's UnEx() called
[callexp] while (rawExps) => 0x55ce58676ff0
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze c
gotta varP: 0x55ce5867c790
gotta acc: 0x55ce5867c670
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867dca0
with a INFRAME access
Ex's UnEx() called
(exists else) translated then, exp = 0x55ce5867dde0
Entered CallExp::Translate.
found function bsearch
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze left
gotta varP: 0x55ce5867c6f0
gotta acc: 0x55ce5867c630
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867de30
with a INFRAME access
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze mid
gotta varP: 0x55ce5867ce60
gotta acc: 0x55ce5867cbc0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867df00
with a INFRAME access
comparing arg->head and formals->head
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze c
gotta varP: 0x55ce5867c790
gotta acc: 0x55ce5867c670
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867dfd0
with a INFRAME access
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x55ce586771a0
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze left
gotta varP: 0x55ce5867c6f0
gotta acc: 0x55ce5867c630
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867e0a0
with a INFRAME access
Ex's UnEx() called
[callexp] while (rawExps) => 0x55ce58677180
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze mid
gotta varP: 0x55ce5867ce60
gotta acc: 0x55ce5867cbc0
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867e190
with a INFRAME access
Ex's UnEx() called
[callexp] while (rawExps) => 0x55ce58677160
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze c
gotta varP: 0x55ce5867c790
gotta acc: 0x55ce5867c670
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
at current level, needless to trace static link
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867e280
with a INFRAME access
Ex's UnEx() called
(exists else) translated else, exp = 0x55ce5867e3c0
Entered AllocLocal. escape? 1
create newAcc fine
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x55ce5867e4f0
with a INFRAME access
Cx's UnCx() called
IfExp: has a return type!
Ex's UnEx() called
Ex's UnEx() called
[translate] [seq] exp.size = 1
LetExp translated bodyT, which.exp = 0x55ce5867e800
Ex's UnEx() called
(exists else) translated else, exp = 0x55ce5867e820
Entered AllocLocal. escape? 1
create newAcc fine
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x55ce5867e960
with a INFRAME access
Cx's UnCx() called
IfExp: has a return type!
Ex's UnEx() called
Ex's UnEx() called
returnValue register requested
gonna return new returnValue register
Ex's UnEx() called
Analyzing function 0x55ce58677350
called new level. label: try
called newFrame
created new InFrameAccess. sym: __STATIC_LINK__
gonna build formals.
buildFormals called. level->frame: 0x55ce5867eec0
f_accl = 0x55ce5867c1f0
formals built.
while #3 end. 
Entered SeqExp::Translate.
Entered CallExp::Translate.
found function init
Call operation returns an 6
[callexp] start traversing rawExps
Entered CallExp::Translate.
found function printi
comparing arg->head and formals->head
Entered CallExp::Translate.
found function bsearch
comparing arg->head and formals->head
Entered IntExp::Translate.
comparing arg->head and formals->head
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze N
gotta varP: 0x55ce58679bf0
gotta acc: 0x55ce58679b90
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x55ce5867f090
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867f330
with a INFRAME access
Analyzed leftT, which.exp = 0x55ce5867f430
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55ce5867f470
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x55ce58677550
Entered IntExp::Translate.
Ex's UnEx() called
[callexp] while (rawExps) => 0x55ce58677530
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze N
gotta varP: 0x55ce58679bf0
gotta acc: 0x55ce58679b90
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x55ce5867f580
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867f820
with a INFRAME access
Analyzed leftT, which.exp = 0x55ce5867f920
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55ce5867f960
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Ex's UnEx() called
[callexp] while (rawExps) => 0x55ce58677510
Entered IntExp::Translate.
Ex's UnEx() called
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x55ce586775a0
Entered CallExp::Translate.
found function bsearch
comparing arg->head and formals->head
Entered IntExp::Translate.
comparing arg->head and formals->head
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze N
gotta varP: 0x55ce58679bf0
gotta acc: 0x55ce58679b90
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x55ce5867fb30
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x55ce5867fdd0
with a INFRAME access
Analyzed leftT, which.exp = 0x55ce5867fed0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55ce5867ff10
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
comparing arg->head and formals->head
Entered IntExp::Translate.
Call operation returns an 2
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x55ce58677550
Entered IntExp::Translate.
Ex's UnEx() called
[callexp] while (rawExps) => 0x55ce58677530
Entered OpExp::Translate. OpCode: MINUS_OP
Entered VarExp::Translate.
analyse a SIMPLE var
Entered SimpleVar::Translate. ** Trying to analyze N
gotta varP: 0x55ce58679bf0
gotta acc: 0x55ce58679b90
called findStaticLink 
framePointer register requested
gonna return existed framePointer register
called getExp. input framePtr = 0x55ce58680020
with a INFRAME access
Ex's UnEx() called
called getExp. input framePtr = 0x55ce586802c0
with a INFRAME access
Analyzed leftT, which.exp = 0x55ce586803c0
Entered IntExp::Translate.
Analyzed rightT, which.exp = 0x55ce58680400
Ex's UnEx() called
Ex's UnEx() called
  making a comparison between <type> 2 and <type> 2
Ex's UnEx() called
[callexp] while (rawExps) => 0x55ce58677510
Entered IntExp::Translate.
Ex's UnEx() called
Ex's UnEx() called
Entered CallExp::Translate.
found function print
comparing arg->head and formals->head
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Call operation returns an 6
[callexp] start traversing rawExps
[callexp] while (rawExps) => 0x55ce58677690
Entered StringExp::Translate.
[translate] [frag] called add fragment. kind: STRING
Ex's UnEx() called
Ex's UnNx() called
Ex's UnNx() called
Ex's UnNx() called
Ex's UnEx() called
Ex's UnNx() called
Nx's UnNx() called
Nx's UnNx() called
Ex's UnNx() called
[translate] [letexp] while out, stms going to push_back Nx's UnNx() called
0x55ce58680850
Nx's UnNx() called
LetExp Going to translate bodyT 
Entered SeqExp::Translate.
Entered CallExp::Translate.
found function try
Call operation returns an 6
[callexp] start traversing rawExps
[translate] [seq] exp.size = 1
LetExp translated bodyT, which.exp = 0x55ce58680a80
Ex's UnEx() called
Ex's UnNx() called
[translate] [frag] called add fragment. kind: PROC
 ~~~~ Completed Translation ~~~~
Ex's UnEx() called
gonna print a EseqExp~
My stm = 0x55ce58680ac0, exp = 0x55ce58680a50
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
My stm = 0x55ce5867b050, exp = 0x55ce5867b080
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
My stm = 0x55ce5867bce0, exp = 0x55ce5867bda0
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x55ce5867b600, exp = 0x55ce5867b630
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
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
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
gonna print a MoveStm~
gonna print a TempExp~
gonna print a EseqExp~
My stm = 0x55ce5867ec10, exp = 0x55ce5867e9d0
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
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
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
gonna print a EseqExp~
My stm = 0x55ce5867cfc0, exp = 0x55ce5867e7d0
gonna print a MoveStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a BinopExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
gonna print a EseqExp~
My stm = 0x55ce5867e7a0, exp = 0x55ce5867e560
gonna print a SeqStm~
gonna print a CjumpStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x55ce5867d280, exp = 0x55ce5867d2b0
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
gonna print a SeqStm~
gonna print a LabelStm~
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
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ConstExp~
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
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a LabelStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a LabelStm~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a TempExp~
gonna print a ConstExp~
gonna print a ExpStm~
gonna print a EseqExp~
My stm = 0x55ce586805f0, exp = 0x55ce586808d0
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a EseqExp~
My stm = 0x55ce586808b0, exp = 0x55ce58680920
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a EseqExp~
My stm = 0x55ce58680900, exp = 0x55ce58680800
gonna print a ExpStm~
gonna print a CallExp~
gonna print a NameExp~
gonna print a CallExp~
gonna print a NameExp~
gonna print a ConstExp~
gonna print a BinopExp~
gonna print a MemExp~
gonna print a BinopExp~
gonna print a EseqExp~
My stm = 0x55ce58680270, exp = 0x55ce586802a0
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
[canon] SeqStm::Canon called. this->left, right = 0x55ce5867a200, 0x55ce58680b20
[canon] SeqStm::Canon called. this->left, right = 0x55ce5867a370, 0x55ce58680b50
[canon] SeqStm::Canon called. this->left, right = 0x55ce5867a760, 0x55ce58680850
[canon] SeqStm::Canon called. this->left, right = 0x55ce58680970, 0x55ce58680990
[canon] SeqStm::Canon called. this->left, right = 0x55ce5867c1a0, 0x55ce586809c0
[canon] SeqStm::Canon called. this->left, right = 0x55ce5867ed30, 0x55ce586809f0
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
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
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce586803a0, 0x55ce586803e0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce586802c0, 0x55ce58680350
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x55ce586801d0, 0x55ce58680240
[canon] MoveStm::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce58680020, 0x55ce58680040
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] MoveStm::Canon called
[canon] EseqExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867e960, 0x55ce5867e980
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x55ce5867c980, 0x55ce5867ebe0
[canon] SeqStm::Canon called. this->left, right = 0x55ce5867e9f0, 0x55ce5867ebb0
[canon] SeqStm::Canon called. this->left, right = 0x55ce5867ea10, 0x55ce5867eb80
[canon] SeqStm::Canon called. this->left, right = 0x55ce5867ea80, 0x55ce5867eb50
[canon] SeqStm::Canon called. this->left, right = 0x55ce5867eab0, 0x55ce5867eb20
[canon] SeqStm::Canon called. this->left, right = 0x55ce5867ead0, 0x55ce5867eb00
[canon] LabelStm::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867e960, 0x55ce5867e980
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] EseqExp::Canon called
[canon] EseqExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867e4f0, 0x55ce5867e510
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x55ce5867d650, 0x55ce5867e770
[canon] SeqStm::Canon called. this->left, right = 0x55ce5867e580, 0x55ce5867e740
[canon] SeqStm::Canon called. this->left, right = 0x55ce5867e5a0, 0x55ce5867e710
[canon] SeqStm::Canon called. this->left, right = 0x55ce5867e610, 0x55ce5867e6e0
[canon] SeqStm::Canon called. this->left, right = 0x55ce5867e640, 0x55ce5867e6b0
[canon] SeqStm::Canon called. this->left, right = 0x55ce5867e660, 0x55ce5867e690
[canon] LabelStm::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867e4f0, 0x55ce5867e510
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867e280, 0x55ce5867e2c0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867e190, 0x55ce5867e1d0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867e0a0, 0x55ce5867e0e0
[canon] TempExp::Canon called
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
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867dca0, 0x55ce5867dce0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867dbb0, 0x55ce5867dbf0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867dac0, 0x55ce5867db00
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867da30, 0x55ce5867da70
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867d3b0, 0x55ce5867d4e0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867d2d0, 0x55ce5867d360
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x55ce5867d1e0, 0x55ce5867d250
[canon] MoveStm::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867d030, 0x55ce5867d050
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867d480, 0x55ce5867d4c0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867d3f0, 0x55ce5867d430
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867d580, 0x55ce5867d5c0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867cf30, 0x55ce5867cf50
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867cd80, 0x55ce5867cdd0
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867cc70, 0x55ce5867cd40
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867cbe0, 0x55ce5867cc20
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867ccb0, 0x55ce5867ccf0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] MoveStm::Canon called
[canon] TempExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867ca30, 0x55ce5867ca70
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867c7e0, 0x55ce5867c820
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867c8b0, 0x55ce5867c8f0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x55ce5867bf40, 0x55ce5867c170
[canon] SeqStm::Canon called. this->left, right = 0x55ce5867bf70, 0x55ce5867c140
[canon] SeqStm::Canon called. this->left, right = 0x55ce5867bfa0, 0x55ce5867c110
[canon] SeqStm::Canon called. this->left, right = 0x55ce5867bfc0, 0x55ce5867c0e0
[canon] SeqStm::Canon called. this->left, right = 0x55ce5867bfe0, 0x55ce5867c0b0
[canon] SeqStm::Canon called. this->left, right = 0x55ce5867c060, 0x55ce5867c090
[canon] LabelStm::Canon called
[canon] JumpStm::Canon called
[canon] NameExp::Canon called
[canon] CjumpStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867bdf0, 0x55ce5867be40
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867beb0, 0x55ce5867bed0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] EseqExp::Canon called
[canon] CallExp::Canon called
[canon] NameExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867b730, 0x55ce5867b860
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867b650, 0x55ce5867b6e0
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x55ce5867b560, 0x55ce5867b5d0
[canon] MoveStm::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867b3b0, 0x55ce5867b3d0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867b800, 0x55ce5867b840
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867b770, 0x55ce5867b7b0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867ba10, 0x55ce5867ba60
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867b990, 0x55ce5867b9d0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867b900, 0x55ce5867b940
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] LabelStm::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867bdf0, 0x55ce5867be40
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867beb0, 0x55ce5867bed0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867b180, 0x55ce5867b1c0
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867b0a0, 0x55ce5867b130
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] SeqStm::Canon called. this->left, right = 0x55ce5867afb0, 0x55ce5867b020
[canon] MoveStm::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867ae00, 0x55ce5867ae20
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] NameExp::Canon called
[canon] NameExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867a6d0, 0x55ce5867a6f0
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] EseqExp::Canon called
[canon] TempExp::Canon called
[canon] MoveStm::Canon called
[canon] NameExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867a450, 0x55ce5867a490
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] MemExp::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867a450, 0x55ce5867a490
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ExpStm::Canon called
[canon] ConstExp::Canon called
[canon] MoveStm::Canon called
[canon] BinopExp::Canon called
[canon] [binop] left, right = 0x55ce5867a170, 0x55ce5867a190
[canon] TempExp::Canon called
[canon] ConstExp::Canon called
[canon] ConstExp::Canon called
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce58688bb0
[codegen] fallen into LABEL
I'm trying to find the label L16
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867a200
[codegen] fallen into MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)
[codegen] entered munchExp. expNode: 0x55ce5867a170
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55ce58679bb0
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce58688170
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x55ce5867a710
[codegen] fallen into BINOP(PLUS, e1, CONST(i))
[codegen] entered munchExp. expNode: 0x55ce5867a6d0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce58687c10
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x55ce5867a5b0
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x55ce5867a4e0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55ce5867a450
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55ce5867a4e0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55ce5867a450
[codegen] fallen into TEMP(t)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867a760
[codegen] fallen into MOVE(MEM(e1), e2)
[codegen] entered munchExp. expNode: 0x55ce58688130
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55ce58687c40
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce58680970
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x55ce5867ab20
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x55ce5867aaa0
[codegen] fallen into NAME
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce58687810
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x55ce5867bef0
[codegen] fallen into BINOP(PLUS, e1, CONST(i))
[codegen] entered munchExp. expNode: 0x55ce5867beb0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867afb0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x55ce5867ae70
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55ce5867ae00
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867b020
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x55ce5867b000
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867bf40
[codegen] fallen into MOVE(MEM(e1), e2)
[codegen] entered munchExp. expNode: 0x55ce586877d0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55ce5867b200
[codegen] entered munchExp. expNode: 0x55ce5867b180
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55ce5867b080
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55ce5867b1c0
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867bf70
[codegen] fallen into MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)
[codegen] entered munchExp. expNode: 0x55ce5867bdf0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55ce5867adc0
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867bfa0
[codegen] fallen into LABEL
I'm trying to find the label L5
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867b560
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x55ce5867b420
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55ce5867b3b0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867b5d0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x55ce5867b5b0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867bce0
[codegen] fallen into MOVE(MEM(e1), e2)
[codegen] entered munchExp. expNode: 0x55ce5867b890
[codegen] fallen into BINOP(PLUS(e1, e2)
[codegen] entered munchExp. expNode: 0x55ce5867b730
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55ce5867b630
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55ce5867b860
[codegen] entered munchExp. expNode: 0x55ce5867b800
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55ce5867b770
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55ce5867b840
[codegen] fallen into CONST(i)
[codegen] entered munchExp. expNode: 0x55ce5867baa0
[codegen] fallen into BINOP(PLUS, e1, CONST(i))
[codegen] entered munchExp. expNode: 0x55ce5867ba10
[codegen] entered munchExp. expNode: 0x55ce5867b990
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55ce5867b900
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55ce5867b9d0
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867bfc0
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x55ce5867bda0
[codegen] fallen into CALL
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867bfe0
[codegen] fallen into CJUMP
[codegen] entered munchExp. expNode: 0x55ce5867be90
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55ce5867bdf0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55ce5867bf20
[codegen] fallen into MEM(e1)
[codegen] entered munchExp. expNode: 0x55ce586877d0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867c090
[codegen] fallen into LABEL
I'm trying to find the label L4
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867c980
[codegen] fallen into CJUMP
[codegen] entered munchExp. expNode: 0x55ce5867c870
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55ce5867c7e0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55ce5867c940
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55ce5867c8b0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867eab0
[codegen] fallen into LABEL
I'm trying to find the label L11
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce586856f0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x55ce5867e9a0
[codegen] fallen into BINOP(PLUS, e1, CONST(i))
[codegen] entered munchExp. expNode: 0x55ce5867e960
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867cfc0
[codegen] fallen into MOVE(MEM(BINOP(PLUS, e1, CONST(i))), e2)
[codegen] entered munchExp. expNode: 0x55ce5867cf30
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55ce5867ce10
[codegen] entered munchExp. expNode: 0x55ce5867cd80
[codegen] fallen into BINOP(PLUS(e1, e2)
[codegen] entered munchExp. expNode: 0x55ce5867cc70
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55ce5867cbe0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55ce5867cd40
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55ce5867ccb0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55ce5867cdd0
[codegen] fallen into CONST(i)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867d1e0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x55ce5867d0a0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55ce5867d030
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867d250
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x55ce5867d230
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867d650
[codegen] fallen into CJUMP
[codegen] entered munchExp. expNode: 0x55ce5867d540
[codegen] fallen into MEM(e1)
[codegen] entered munchExp. expNode: 0x55ce5867d510
[codegen] fallen into BINOP(PLUS(e1, e2)
[codegen] entered munchExp. expNode: 0x55ce5867d3b0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55ce5867d2b0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55ce5867d4e0
[codegen] entered munchExp. expNode: 0x55ce5867d480
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55ce5867d3f0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55ce5867d4c0
[codegen] fallen into CONST(i)
[codegen] entered munchExp. expNode: 0x55ce5867d610
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55ce5867d580
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867e640
[codegen] fallen into LABEL
I'm trying to find the label L8
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce58683ba0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x55ce5867e530
[codegen] fallen into BINOP(PLUS, e1, CONST(i))
[codegen] entered munchExp. expNode: 0x55ce5867e4f0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce586834c0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x55ce5867e390
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x55ce5867e130
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55ce5867e0a0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55ce5867e220
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55ce5867e190
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55ce5867e310
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55ce5867e280
[codegen] fallen into TEMP(t)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867e660
[codegen] fallen into MOVE(MEM(e1), e2)
[codegen] entered munchExp. expNode: 0x55ce586845e0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55ce586834f0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867e690
[codegen] fallen into LABEL
I'm trying to find the label L9
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867ead0
[codegen] fallen into MOVE(MEM(e1), MEM(e2)
[codegen] entered munchExp. expNode: 0x55ce586856b0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55ce586845e0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867eb00
[codegen] fallen into LABEL
I'm trying to find the label L12
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867ed30
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x55ce5867e9d0
[codegen] fallen into MEM(e1)
[codegen] entered munchExp. expNode: 0x55ce586856b0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce586805f0
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x55ce5867ef80
[codegen] fallen into CALL
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce586808b0
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x55ce5867ef80
[codegen] fallen into CALL
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce586801d0
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x55ce58680090
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55ce58680020
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce58680240
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x55ce58680220
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce58682520
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x55ce58680510
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x55ce5867ffc0
[codegen] fallen into CONST(i)
[codegen] entered munchExp. expNode: 0x55ce58680420
[codegen] entered munchExp. expNode: 0x55ce586803a0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55ce586802a0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55ce586803e0
[codegen] fallen into CONST(i)
[codegen] entered munchExp. expNode: 0x55ce58680490
[codegen] fallen into CONST(i)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce58680900
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x55ce586805a0
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x55ce58682550
[codegen] fallen into TEMP(t)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce586809f0
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x55ce58680800
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x55ce58680780
[codegen] fallen into NAME
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce58680b80
[codegen] fallen into EXP
[codegen] entered munchExp. expNode: 0x55ce58680a50
[codegen] fallen into CALL
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce58688e50
[codegen] fallen into JUMP
gotta jexp = 0x55ce58688e30
gotta jmpTo = 0x55ce58688b50
escaped from instr = 0x55ce5868f5c0
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce58688cb0
[codegen] fallen into LABEL
I'm trying to find the label L17
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867c060
[codegen] fallen into JUMP
gotta jexp = 0x55ce5867c040
gotta jmpTo = 0x55ce5867ad60
escaped from instr = 0x55ce5868f6b0
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867e9f0
[codegen] fallen into LABEL
I'm trying to find the label L10
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867ea10
[codegen] fallen into MOVE(MEM(e1), MEM(e2)
[codegen] entered munchExp. expNode: 0x55ce586856b0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55ce5867ca90
[codegen] fallen into BINOP(PLUS, e1, CONST(i))
[codegen] entered munchExp. expNode: 0x55ce5867ca30
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867ea80
[codegen] fallen into JUMP
gotta jexp = 0x55ce5867ea60
gotta jmpTo = 0x55ce5867e8d0
escaped from instr = 0x55ce5868f9f0
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867e580
[codegen] fallen into LABEL
I'm trying to find the label L7
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce58684620
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x55ce58683b60
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce58683e80
[codegen] fallen into MOVE(TEMP(t), e2)
[codegen] entered munchExp. expNode: 0x55ce5867ddb0
[codegen] fallen into CALL
[codegen] entered munchExp. expNode: 0x55ce5867db40
[codegen] fallen into BINOP(PLUS, e1, CONST(i))
[codegen] entered munchExp. expNode: 0x55ce5867dac0
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55ce5867da30
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55ce5867dc40
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55ce5867dbb0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55ce5867dd30
[codegen] fallen into MEM(BINOP(PLUS, e1, CONST(i)))
[codegen] entered munchExp. expNode: 0x55ce5867dca0
[codegen] fallen into TEMP(t)
returnValue register requested
gonna return existed returnValue register
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867e5a0
[codegen] fallen into MOVE(MEM(e1), e2)
[codegen] entered munchExp. expNode: 0x55ce586845e0
[codegen] fallen into TEMP(t)
[codegen] entered munchExp. expNode: 0x55ce58683eb0
[codegen] fallen into TEMP(t)
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce5867e610
[codegen] fallen into JUMP
gotta jexp = 0x55ce5867e5f0
gotta jmpTo = 0x55ce5867e440
escaped from instr = 0x55ce58690320
[as] [codegen] stmList called
[codegen] entered munchStm. stmNode: 0x55ce586897d0
[codegen] fallen into LABEL
I'm trying to find the label L15
