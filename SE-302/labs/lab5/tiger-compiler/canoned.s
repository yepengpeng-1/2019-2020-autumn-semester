


============================



 LABEL L16
 MOVE(
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST -16)),
  CONST 16)
 MOVE(
  TEMP t124,
  BINOP(PLUS,
   TEMP t100,
   CONST -32))
 MOVE(
  TEMP t123,
  CALL(
   NAME initArray,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -8)),
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -8))))
 MOVE(
  MEM(
   TEMP t124),
  TEMP t123)
 EXP(
  CALL(
   NAME print,
    NAME L3))
 MOVE(
  TEMP t122,
  BINOP(PLUS,
   TEMP t100,
   CONST -8))
 MOVE(
  TEMP t102,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)))
 MOVE(
  TEMP t101,
  TEMP t102)
 MOVE(
  MEM(
   TEMP t122),
  BINOP(MINUS,
   MEM(
    BINOP(PLUS,
     TEMP t102,
     CONST -8)),
   CONST 1))
 MOVE(
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST -8)),
  CONST 0)
 LABEL L5
 MOVE(
  TEMP t104,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)))
 MOVE(
  TEMP t103,
  TEMP t104)
 MOVE(
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t104,
      CONST -24)),
    BINOP(TIMES,
     MEM(
      BINOP(PLUS,
       TEMP t100,
       CONST -8)),
     CONST 8))),
  BINOP(PLUS,
   BINOP(TIMES,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -8)),
    CONST 2),
   CONST 1))
 EXP(
  CALL(
   NAME nop))
 CJUMP(LT,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST -8)),
  MEM(
   TEMP t122),
  L6,L4)
 LABEL L4
 CJUMP(EQ,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 24)),
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 16)),
  L10,L11)
 LABEL L11
 MOVE(
  TEMP t121,
  BINOP(PLUS,
   TEMP t100,
   CONST -32))
 MOVE(
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST -16)),
  BINOP(DIVIDE,
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 24)),
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 16))),
   CONST 2))
 MOVE(
  TEMP t106,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 32)))
 MOVE(
  TEMP t105,
  TEMP t106)
 CJUMP(LT,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t106,
      CONST -24)),
    BINOP(TIMES,
     MEM(
      BINOP(PLUS,
       TEMP t100,
       CONST -8)),
     CONST 8))),
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)),
  L7,L8)
 LABEL L8
 MOVE(
  TEMP t118,
  BINOP(PLUS,
   TEMP t100,
   CONST -24))
 MOVE(
  TEMP t117,
  CALL(
   NAME bsearch,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 8)),
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -8)),
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 24))))
 MOVE(
  MEM(
   TEMP t120),
  TEMP t117)
 LABEL L9
 MOVE(
  MEM(
   TEMP t121),
  MEM(
   TEMP t120))
 LABEL L12
 MOVE(
  TEMP t107,
  MEM(
   TEMP t121))
 EXP(
  CALL(
   NAME init))
 EXP(
  CALL(
   NAME init))
 MOVE(
  TEMP t115,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)))
 MOVE(
  TEMP t114,
  TEMP t115)
 MOVE(
  TEMP t116,
  CALL(
   NAME bsearch,
    CONST 7,
    BINOP(MINUS,
     MEM(
      BINOP(PLUS,
       TEMP t115,
       CONST -8)),
     CONST 1),
    CONST 0))
 EXP(
  CALL(
   NAME printi,
    TEMP t116))
 EXP(
  CALL(
   NAME print,
    NAME L14))
 EXP(
  CALL(
   NAME try))
 JUMP(
  NAME L15)
 LABEL L17
 JUMP(
  NAME L5)
 LABEL L10
 MOVE(
  MEM(
   TEMP t121),
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 24)))
 JUMP(
  NAME L12)
 LABEL L7
 MOVE(
  TEMP t120,
  TEMP t118)
 MOVE(
  TEMP t119,
  CALL(
   NAME bsearch,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 8)),
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 16)),
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       TEMP t100,
       CONST -8)),
     CONST 1)))
 MOVE(
  MEM(
   TEMP t120),
  TEMP t119)
 JUMP(
  NAME L9)
 LABEL L15



============================



 LABEL L15
 MOVE(
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST -16)),
  CONST 16)
 MOVE(
  TEMP t125,
  BINOP(PLUS,
   TEMP t100,
   CONST -32))
 MOVE(
  TEMP t124,
  CALL(
   NAME initArray,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -8)),
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -8))))
 MOVE(
  MEM(
   TEMP t125),
  TEMP t124)
 EXP(
  CALL(
   NAME print,
    NAME L2))
 MOVE(
  TEMP t123,
  BINOP(PLUS,
   TEMP t100,
   CONST -8))
 MOVE(
  TEMP t102,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)))
 MOVE(
  TEMP t101,
  TEMP t102)
 MOVE(
  MEM(
   TEMP t123),
  BINOP(MINUS,
   MEM(
    BINOP(PLUS,
     TEMP t102,
     CONST -8)),
   CONST 1))
 MOVE(
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST -8)),
  CONST 0)
 LABEL L4
 MOVE(
  TEMP t104,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)))
 MOVE(
  TEMP t103,
  TEMP t104)
 MOVE(
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t104,
      CONST -24)),
    BINOP(TIMES,
     MEM(
      BINOP(PLUS,
       TEMP t100,
       CONST -8)),
     CONST 8))),
  BINOP(PLUS,
   BINOP(TIMES,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -8)),
    CONST 2),
   CONST 1))
 EXP(
  CALL(
   NAME nop))
 CJUMP(LT,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST -8)),
  MEM(
   TEMP t123),
  L5,L3)
 LABEL L3
 CJUMP(EQ,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 24)),
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 16)),
  L9,L10)
 LABEL L10
 MOVE(
  TEMP t122,
  BINOP(PLUS,
   TEMP t100,
   CONST -32))
 MOVE(
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST -16)),
  BINOP(DIVIDE,
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 24)),
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 16))),
   CONST 2))
 MOVE(
  TEMP t106,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 32)))
 MOVE(
  TEMP t105,
  TEMP t106)
 CJUMP(LT,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t106,
      CONST -24)),
    BINOP(TIMES,
     MEM(
      BINOP(PLUS,
       TEMP t100,
       CONST -8)),
     CONST 8))),
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)),
  L6,L7)
 LABEL L7
 MOVE(
  TEMP t119,
  BINOP(PLUS,
   TEMP t100,
   CONST -24))
 MOVE(
  TEMP t118,
  CALL(
   NAME bsearch,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 8)),
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -8)),
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 24))))
 MOVE(
  MEM(
   TEMP t121),
  TEMP t118)
 LABEL L8
 MOVE(
  MEM(
   TEMP t122),
  MEM(
   TEMP t121))
 LABEL L11
 MOVE(
  TEMP t107,
  MEM(
   TEMP t122))
 EXP(
  CALL(
   NAME init))
 EXP(
  CALL(
   NAME init))
 MOVE(
  TEMP t115,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)))
 MOVE(
  TEMP t114,
  TEMP t115)
 MOVE(
  TEMP t117,
  CALL(
   NAME bsearch,
    CONST 7,
    BINOP(MINUS,
     MEM(
      BINOP(PLUS,
       TEMP t115,
       CONST -8)),
     CONST 1),
    CONST 0))
 EXP(
  CALL(
   NAME printi,
    TEMP t117))
 EXP(
  CALL(
   NAME print,
    NAME L13))
 EXP(
  CALL(
   NAME try))
 JUMP(
  NAME L14)
 LABEL L16
 JUMP(
  NAME L4)
 LABEL L9
 MOVE(
  MEM(
   TEMP t122),
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 24)))
 JUMP(
  NAME L11)
 LABEL L6
 MOVE(
  TEMP t121,
  TEMP t119)
 MOVE(
  TEMP t120,
  CALL(
   NAME bsearch,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 8)),
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 16)),
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       TEMP t100,
       CONST -8)),
     CONST 1)))
 MOVE(
  MEM(
   TEMP t121),
  TEMP t120)
 JUMP(
  NAME L8)
 LABEL L14



============================



 LABEL L15
 MOVE(
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST -16)),
  CONST 16)
 MOVE(
  TEMP t125,
  BINOP(PLUS,
   TEMP t100,
   CONST -32))
 MOVE(
  TEMP t124,
  CALL(
   NAME initArray,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -8)),
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -8))))
 MOVE(
  MEM(
   TEMP t125),
  TEMP t124)
 EXP(
  CALL(
   NAME print,
    NAME L2))
 MOVE(
  TEMP t123,
  BINOP(PLUS,
   TEMP t100,
   CONST -8))
 MOVE(
  TEMP t102,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)))
 MOVE(
  TEMP t101,
  TEMP t102)
 MOVE(
  MEM(
   TEMP t123),
  BINOP(MINUS,
   MEM(
    BINOP(PLUS,
     TEMP t102,
     CONST -8)),
   CONST 1))
 MOVE(
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST -8)),
  CONST 0)
 LABEL L4
 MOVE(
  TEMP t104,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)))
 MOVE(
  TEMP t103,
  TEMP t104)
 MOVE(
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t104,
      CONST -24)),
    BINOP(TIMES,
     MEM(
      BINOP(PLUS,
       TEMP t100,
       CONST -8)),
     CONST 8))),
  BINOP(PLUS,
   BINOP(TIMES,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -8)),
    CONST 2),
   CONST 1))
 EXP(
  CALL(
   NAME nop))
 CJUMP(LT,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST -8)),
  MEM(
   TEMP t123),
  L5,L3)
 LABEL L3
 CJUMP(EQ,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 24)),
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 16)),
  L9,L10)
 LABEL L10
 MOVE(
  TEMP t122,
  BINOP(PLUS,
   TEMP t100,
   CONST -32))
 MOVE(
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST -16)),
  BINOP(DIVIDE,
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 24)),
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 16))),
   CONST 2))
 MOVE(
  TEMP t106,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 32)))
 MOVE(
  TEMP t105,
  TEMP t106)
 CJUMP(LT,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t106,
      CONST -24)),
    BINOP(TIMES,
     MEM(
      BINOP(PLUS,
       TEMP t100,
       CONST -8)),
     CONST 8))),
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)),
  L6,L7)
 LABEL L7
 MOVE(
  TEMP t119,
  BINOP(PLUS,
   TEMP t100,
   CONST -24))
 MOVE(
  TEMP t118,
  CALL(
   NAME bsearch,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 8)),
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -8)),
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 24))))
 MOVE(
  MEM(
   TEMP t121),
  TEMP t118)
 LABEL L8
 MOVE(
  MEM(
   TEMP t122),
  MEM(
   TEMP t121))
 LABEL L11
 MOVE(
  TEMP t107,
  MEM(
   TEMP t122))
 EXP(
  CALL(
   NAME init))
 EXP(
  CALL(
   NAME init))
 MOVE(
  TEMP t115,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)))
 MOVE(
  TEMP t114,
  TEMP t115)
 MOVE(
  TEMP t117,
  CALL(
   NAME bsearch,
    CONST 7,
    BINOP(MINUS,
     MEM(
      BINOP(PLUS,
       TEMP t115,
       CONST -8)),
     CONST 1),
    CONST 0))
 EXP(
  CALL(
   NAME printi,
    TEMP t117))
 EXP(
  CALL(
   NAME print,
    NAME L13))
 EXP(
  CALL(
   NAME try))
 JUMP(
  NAME L14)
 LABEL L16
 JUMP(
  NAME L4)
 LABEL L9
 MOVE(
  MEM(
   TEMP t122),
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 24)))
 JUMP(
  NAME L11)
 LABEL L6
 MOVE(
  TEMP t121,
  TEMP t119)
 MOVE(
  TEMP t120,
  CALL(
   NAME bsearch,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 8)),
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 16)),
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       TEMP t100,
       CONST -8)),
     CONST 1)))
 MOVE(
  MEM(
   TEMP t121),
  TEMP t120)
 JUMP(
  NAME L8)
 LABEL L14



============================



 LABEL L15
 MOVE(
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST -16)),
  CONST 16)
 MOVE(
  TEMP t125,
  BINOP(PLUS,
   TEMP t100,
   CONST -32))
 MOVE(
  TEMP t124,
  CALL(
   NAME initArray,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -8)),
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -8))))
 MOVE(
  MEM(
   TEMP t125),
  TEMP t124)
 EXP(
  CALL(
   NAME print,
    NAME L2))
 MOVE(
  TEMP t123,
  BINOP(PLUS,
   TEMP t100,
   CONST -8))
 MOVE(
  TEMP t102,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)))
 MOVE(
  TEMP t101,
  TEMP t102)
 MOVE(
  MEM(
   TEMP t123),
  BINOP(MINUS,
   MEM(
    BINOP(PLUS,
     TEMP t102,
     CONST -8)),
   CONST 1))
 MOVE(
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST -8)),
  CONST 0)
 LABEL L4
 MOVE(
  TEMP t104,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)))
 MOVE(
  TEMP t103,
  TEMP t104)
 MOVE(
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t104,
      CONST -24)),
    BINOP(TIMES,
     MEM(
      BINOP(PLUS,
       TEMP t100,
       CONST -8)),
     CONST 8))),
  BINOP(PLUS,
   BINOP(TIMES,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -8)),
    CONST 2),
   CONST 1))
 EXP(
  CALL(
   NAME nop))
 CJUMP(LT,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST -8)),
  MEM(
   TEMP t123),
  L5,L3)
 LABEL L3
 CJUMP(EQ,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 24)),
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 16)),
  L9,L10)
 LABEL L10
 MOVE(
  TEMP t122,
  BINOP(PLUS,
   TEMP t100,
   CONST -32))
 MOVE(
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST -16)),
  BINOP(DIVIDE,
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 24)),
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 16))),
   CONST 2))
 MOVE(
  TEMP t106,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 32)))
 MOVE(
  TEMP t105,
  TEMP t106)
 CJUMP(LT,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t106,
      CONST -24)),
    BINOP(TIMES,
     MEM(
      BINOP(PLUS,
       TEMP t100,
       CONST -8)),
     CONST 8))),
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)),
  L6,L7)
 LABEL L7
 MOVE(
  TEMP t119,
  BINOP(PLUS,
   TEMP t100,
   CONST -24))
 MOVE(
  TEMP t118,
  CALL(
   NAME bsearch,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 8)),
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -8)),
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 24))))
 MOVE(
  MEM(
   TEMP t121),
  TEMP t118)
 LABEL L8
 MOVE(
  MEM(
   TEMP t122),
  MEM(
   TEMP t121))
 LABEL L11
 MOVE(
  TEMP t107,
  MEM(
   TEMP t122))
 EXP(
  CALL(
   NAME init))
 EXP(
  CALL(
   NAME init))
 MOVE(
  TEMP t115,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)))
 MOVE(
  TEMP t114,
  TEMP t115)
 MOVE(
  TEMP t117,
  CALL(
   NAME bsearch,
    CONST 7,
    BINOP(MINUS,
     MEM(
      BINOP(PLUS,
       TEMP t115,
       CONST -8)),
     CONST 1),
    CONST 0))
 EXP(
  CALL(
   NAME printi,
    TEMP t117))
 EXP(
  CALL(
   NAME print,
    NAME L13))
 EXP(
  CALL(
   NAME try))
 JUMP(
  NAME L14)
 LABEL L16
 JUMP(
  NAME L4)
 LABEL L9
 MOVE(
  MEM(
   TEMP t122),
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 24)))
 JUMP(
  NAME L11)
 LABEL L6
 MOVE(
  TEMP t121,
  TEMP t119)
 MOVE(
  TEMP t120,
  CALL(
   NAME bsearch,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 8)),
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 16)),
    BINOP(PLUS,
     MEM(
      BINOP(PLUS,
       TEMP t100,
       CONST -8)),
     CONST 1)))
 MOVE(
  MEM(
   TEMP t121),
  TEMP t120)
 JUMP(
  NAME L8)
 LABEL L14



============================



 LABEL L68
 MOVE(
  TEMP t199,
  BINOP(PLUS,
   TEMP t100,
   CONST -16))
 MOVE(
  TEMP t198,
  CALL(
   NAME getchar))
 MOVE(
  MEM(
   TEMP t199),
  TEMP t198)
 MOVE(
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST -16)),
  CONST 0)
 MOVE(
  TEMP t104,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 16)),
    CONST 16)))
 MOVE(
  TEMP t103,
  TEMP t104)
 MOVE(
  TEMP t195,
  CALL(
   NAME ord,
    MEM(
     BINOP(PLUS,
      TEMP t104,
      CONST -8))))
 MOVE(
  TEMP t197,
  TEMP t195)
 MOVE(
  TEMP t196,
  CALL(
   NAME ord,
    NAME L2))
 CJUMP(GE,
  TEMP t197,
  TEMP t196,
  L5,L6)
 LABEL L6
 MOVE(
  MEM(
   TEMP t194),
  CONST 0)
 LABEL L7
 MOVE(
  TEMP t110,
  MEM(
   TEMP t194))
 LABEL L17
 MOVE(
  TEMP t112,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 8)),
    CONST 16)))
 MOVE(
  TEMP t111,
  TEMP t112)
 CJUMP(EQ,
  MEM(
   BINOP(PLUS,
    TEMP t112,
    CONST -8)),
  NAME L10,
  L12,L13)
 LABEL L13
 MOVE(
  TEMP t190,
  BINOP(PLUS,
   TEMP t100,
   CONST -8))
 MOVE(
  TEMP t115,
  CONST 1)
 MOVE(
  TEMP t114,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 8)),
    CONST 16)))
 MOVE(
  TEMP t113,
  TEMP t114)
 CJUMP(EQ,
  MEM(
   BINOP(PLUS,
    TEMP t114,
    CONST -8)),
  NAME L11,
  L15,L16)
 LABEL L16
 MOVE(
  TEMP t115,
  CONST 0)
 LABEL L15
 MOVE(
  MEM(
   TEMP t190),
  TEMP t115)
 LABEL L14
 CJUMP(NE,
  MEM(
   TEMP t190),
  CONST 0,
  L18,L19)
 LABEL L19
 EXP(
  CALL(
   NAME skipto))
 EXP(
  CALL(
   NAME skipto))
 MOVE(
  TEMP t187,
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP t100,
     CONST 8)),
   CONST 0))
 MOVE(
  TEMP t121,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 16)))
 MOVE(
  TEMP t120,
  TEMP t121)
 MOVE(
  TEMP t186,
  CALL(
   NAME isdigit,
    MEM(
     BINOP(PLUS,
      TEMP t121,
      CONST -8))))
 MOVE(
  MEM(
   TEMP t187),
  TEMP t186)
 LABEL L20
 MOVE(
  TEMP t129,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 16)))
 MOVE(
  TEMP t128,
  TEMP t129)
 MOVE(
  TEMP t185,
  CALL(
   NAME isdigit,
    MEM(
     BINOP(PLUS,
      TEMP t129,
      CONST -8))))
 CJUMP(NE,
  TEMP t185,
  CONST 0,
  L21,L22)
 LABEL L22
 MOVE(
  TEMP t110,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST -8)))
 MOVE(
  TEMP t177,
  BINOP(PLUS,
   TEMP t100,
   CONST -24))
 MOVE(
  TEMP t176,
  BINOP(PLUS,
   TEMP t100,
   CONST -16))
 MOVE(
  TEMP t175,
  CALL(
   NAME allocRecord,
    CONST 8))
 MOVE(
  MEM(
   TEMP t176),
  TEMP t175)
 MOVE(
  MEM(
   BINOP(PLUS,
    MEM(
     TEMP t176),
    CONST 0)),
  CONST 0)
 MOVE(
  MEM(
   TEMP t177),
  MEM(
   TEMP t176))
 MOVE(
  TEMP t174,
  BINOP(PLUS,
   TEMP t100,
   CONST -40))
 MOVE(
  TEMP t173,
  CALL(
   NAME readint,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -8))))
 MOVE(
  MEM(
   TEMP t174),
  TEMP t173)
 CJUMP(NE,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -8)),
    CONST 0)),
  CONST 0,
  L27,L28)
 LABEL L28
 MOVE(
  MEM(
   TEMP t172),
  CONST 0)
 LABEL L29
 MOVE(
  TEMP t110,
  MEM(
   TEMP t172))
 CJUMP(EQ,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 16)),
  CONST 0,
  L36,L37)
 LABEL L37
 MOVE(
  TEMP t169,
  BINOP(PLUS,
   TEMP t100,
   CONST -40))
 CJUMP(EQ,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)),
  CONST 0,
  L33,L34)
 LABEL L34
 MOVE(
  TEMP t168,
  BINOP(PLUS,
   TEMP t100,
   CONST -32))
 CJUMP(LT,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 16)),
    CONST 0)),
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 8)),
    CONST 0)),
  L30,L31)
 LABEL L31
 MOVE(
  TEMP t164,
  BINOP(PLUS,
   TEMP t100,
   CONST -24))
 MOVE(
  TEMP t163,
  BINOP(PLUS,
   TEMP t100,
   CONST -16))
 MOVE(
  TEMP t162,
  CALL(
   NAME allocRecord,
    CONST 16))
 MOVE(
  MEM(
   TEMP t163),
  TEMP t162)
 MOVE(
  MEM(
   BINOP(PLUS,
    MEM(
     TEMP t163),
    CONST 8)),
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 8)),
    CONST 0)))
 MOVE(
  MEM(
   TEMP t167),
  MEM(
   TEMP t163))
 LABEL L32
 MOVE(
  MEM(
   TEMP t168),
  MEM(
   TEMP t167))
 LABEL L35
 MOVE(
  MEM(
   TEMP t169),
  MEM(
   TEMP t168))
 LABEL L38
 MOVE(
  TEMP t110,
  MEM(
   TEMP t169))
 CJUMP(GT,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)),
  CONST 0,
  L47,L48)
 LABEL L48
 CJUMP(LT,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)),
  CONST 0,
  L57,L58)
 LABEL L58
 MOVE(
  TEMP t157,
  BINOP(PLUS,
   TEMP t100,
   CONST -16))
 CJUMP(GT,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)),
  CONST 0,
  L54,L55)
 LABEL L55
 MOVE(
  TEMP t154,
  BINOP(PLUS,
   TEMP t100,
   CONST -8))
 MOVE(
  TEMP t153,
  CALL(
   NAME print,
    NAME L53))
 MOVE(
  MEM(
   TEMP t156),
  TEMP t153)
 LABEL L56
 MOVE(
  MEM(
   TEMP t158),
  MEM(
   TEMP t156))
 LABEL L59
 EXP(
  MEM(
   TEMP t158))
 CJUMP(EQ,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)),
  CONST 0,
  L64,L65)
 LABEL L65
 MOVE(
  TEMP t150,
  BINOP(PLUS,
   TEMP t100,
   CONST -8))
 EXP(
  CALL(
   NAME printint,
    MEM(
     BINOP(PLUS,
      MEM(
       BINOP(PLUS,
        TEMP t100,
        CONST 8)),
      CONST 0))))
 EXP(
  CALL(
   NAME printint,
    MEM(
     BINOP(PLUS,
      MEM(
       BINOP(PLUS,
        TEMP t100,
        CONST 8)),
      CONST 0))))
 EXP(
  CALL(
   NAME print,
    NAME L63))
 MOVE(
  MEM(
   TEMP t152),
  CALL(
   NAME printlist,
    MEM(
     BINOP(PLUS,
      MEM(
       BINOP(PLUS,
        TEMP t100,
        CONST 8)),
      CONST 8))))
 LABEL L66
 EXP(
  MEM(
   TEMP t152))
 MOVE(
  TEMP t149,
  BINOP(PLUS,
   TEMP t100,
   CONST -32))
 MOVE(
  TEMP t148,
  CALL(
   NAME readlist))
 MOVE(
  MEM(
   TEMP t149),
  TEMP t148)
 MOVE(
  TEMP t147,
  BINOP(PLUS,
   TEMP t100,
   CONST -48))
 MOVE(
  TEMP t146,
  BINOP(PLUS,
   TEMP t100,
   CONST -8))
 MOVE(
  TEMP t145,
  CALL(
   NAME getchar))
 MOVE(
  MEM(
   TEMP t146),
  TEMP t145)
 MOVE(
  MEM(
   TEMP t147),
  CALL(
   NAME readlist))
 MOVE(
  TEMP t144,
  CALL(
   NAME merge,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -40)),
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -24))))
 EXP(
  CALL(
   NAME printlist,
    TEMP t144))
 JUMP(
  NAME L67)
 LABEL L5
 MOVE(
  TEMP t194,
  BINOP(PLUS,
   TEMP t100,
   CONST -8))
 MOVE(
  TEMP t109,
  CONST 1)
 MOVE(
  TEMP t108,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 16)),
    CONST 16)))
 MOVE(
  TEMP t107,
  TEMP t108)
 MOVE(
  TEMP t191,
  CALL(
   NAME ord,
    MEM(
     BINOP(PLUS,
      TEMP t108,
      CONST -8))))
 MOVE(
  TEMP t193,
  TEMP t191)
 MOVE(
  TEMP t192,
  CALL(
   NAME ord,
    NAME L4))
 CJUMP(LE,
  TEMP t193,
  TEMP t192,
  L8,L9)
 LABEL L9
 MOVE(
  TEMP t109,
  CONST 0)
 LABEL L8
 MOVE(
  MEM(
   TEMP t194),
  TEMP t109)
 JUMP(
  NAME L7)
 LABEL L12
 MOVE(
  MEM(
   TEMP t190),
  CONST 1)
 JUMP(
  NAME L14)
 LABEL L18
 MOVE(
  TEMP t117,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 8)),
    CONST 16)))
 MOVE(
  TEMP t116,
  TEMP t117)
 MOVE(
  TEMP t189,
  BINOP(PLUS,
   TEMP t117,
   CONST -8))
 MOVE(
  TEMP t188,
  CALL(
   NAME getchar))
 MOVE(
  MEM(
   TEMP t189),
  TEMP t188)
 JUMP(
  NAME L17)
 LABEL L21
 MOVE(
  TEMP t184,
  BINOP(PLUS,
   TEMP t100,
   CONST -8))
 MOVE(
  TEMP t181,
  BINOP(TIMES,
   MEM(
    BINOP(PLUS,
     TEMP t100,
     CONST -8)),
   CONST 10))
 MOVE(
  TEMP t133,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 16)))
 MOVE(
  TEMP t132,
  TEMP t133)
 MOVE(
  TEMP t180,
  CALL(
   NAME ord,
    MEM(
     BINOP(PLUS,
      TEMP t133,
      CONST -8))))
 MOVE(
  TEMP t183,
  BINOP(PLUS,
   TEMP t181,
   TEMP t180))
 MOVE(
  TEMP t182,
  CALL(
   NAME ord,
    NAME L24))
 MOVE(
  MEM(
   TEMP t184),
  BINOP(MINUS,
   TEMP t183,
   TEMP t182))
 MOVE(
  TEMP t139,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 16)))
 MOVE(
  TEMP t138,
  TEMP t139)
 MOVE(
  TEMP t179,
  BINOP(PLUS,
   TEMP t139,
   CONST -8))
 MOVE(
  TEMP t178,
  CALL(
   NAME getchar))
 MOVE(
  MEM(
   TEMP t179),
  TEMP t178)
 JUMP(
  NAME L20)
 LABEL L27
 MOVE(
  TEMP t172,
  BINOP(PLUS,
   TEMP t100,
   CONST -56))
 MOVE(
  TEMP t171,
  BINOP(PLUS,
   TEMP t100,
   CONST -48))
 MOVE(
  TEMP t170,
  CALL(
   NAME allocRecord,
    CONST 16))
 MOVE(
  MEM(
   TEMP t171),
  TEMP t170)
 MOVE(
  MEM(
   BINOP(PLUS,
    MEM(
     TEMP t171),
    CONST 8)),
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST -32)))
 MOVE(
  MEM(
   TEMP t172),
  MEM(
   TEMP t171))
 JUMP(
  NAME L29)
 LABEL L36
 MOVE(
  MEM(
   TEMP t169),
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)))
 JUMP(
  NAME L38)
 LABEL L33
 MOVE(
  MEM(
   TEMP t168),
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 16)))
 JUMP(
  NAME L35)
 LABEL L30
 MOVE(
  TEMP t167,
  TEMP t164)
 MOVE(
  TEMP t166,
  BINOP(PLUS,
   TEMP t100,
   CONST -8))
 MOVE(
  TEMP t165,
  CALL(
   NAME allocRecord,
    CONST 16))
 MOVE(
  MEM(
   TEMP t166),
  TEMP t165)
 MOVE(
  MEM(
   BINOP(PLUS,
    MEM(
     TEMP t166),
    CONST 8)),
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 16)),
    CONST 0)))
 MOVE(
  MEM(
   TEMP t167),
  MEM(
   TEMP t166))
 JUMP(
  NAME L32)
 LABEL L47
 EXP(
  CALL(
   NAME f,
    BINOP(DIVIDE,
     MEM(
      BINOP(PLUS,
       TEMP t100,
       CONST 8)),
     CONST 10)))
 MOVE(
  TEMP t161,
  BINOP(MINUS,
   MEM(
    BINOP(PLUS,
     TEMP t100,
     CONST 8)),
   BINOP(TIMES,
    BINOP(DIVIDE,
     MEM(
      BINOP(PLUS,
       TEMP t100,
       CONST 8)),
     CONST 10),
    CONST 10)))
 MOVE(
  TEMP t160,
  CALL(
   NAME ord,
    NAME L46))
 MOVE(
  TEMP t159,
  CALL(
   NAME chr,
    BINOP(PLUS,
     TEMP t161,
     TEMP t160)))
 EXP(
  CALL(
   NAME print,
    TEMP t159))
 JUMP(
  NAME L48)
 LABEL L57
 MOVE(
  TEMP t158,
  TEMP t157)
 EXP(
  CALL(
   NAME print,
    NAME L51))
 MOVE(
  MEM(
   TEMP t158),
  CALL(
   NAME f,
    BINOP(MINUS,
     CONST 0,
     MEM(
      BINOP(PLUS,
       TEMP t100,
       CONST 8)))))
 JUMP(
  NAME L59)
 LABEL L54
 MOVE(
  TEMP t156,
  TEMP t154)
 MOVE(
  TEMP t155,
  CALL(
   NAME f,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 8))))
 MOVE(
  MEM(
   TEMP t156),
  TEMP t155)
 JUMP(
  NAME L56)
 LABEL L64
 MOVE(
  TEMP t152,
  TEMP t150)
 MOVE(
  TEMP t151,
  CALL(
   NAME print,
    NAME L61))
 MOVE(
  MEM(
   TEMP t152),
  TEMP t151)
 JUMP(
  NAME L66)
 LABEL L67



============================



 LABEL L68
 MOVE(
  TEMP t199,
  BINOP(PLUS,
   TEMP t100,
   CONST -16))
 MOVE(
  TEMP t198,
  CALL(
   NAME getchar))
 MOVE(
  MEM(
   TEMP t199),
  TEMP t198)
 MOVE(
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST -16)),
  CONST 0)
 MOVE(
  TEMP t104,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 16)),
    CONST 16)))
 MOVE(
  TEMP t103,
  TEMP t104)
 MOVE(
  TEMP t195,
  CALL(
   NAME ord,
    MEM(
     BINOP(PLUS,
      TEMP t104,
      CONST -8))))
 MOVE(
  TEMP t197,
  TEMP t195)
 MOVE(
  TEMP t196,
  CALL(
   NAME ord,
    NAME L2))
 CJUMP(GE,
  TEMP t197,
  TEMP t196,
  L5,L6)
 LABEL L6
 MOVE(
  MEM(
   TEMP t194),
  CONST 0)
 LABEL L7
 MOVE(
  TEMP t110,
  MEM(
   TEMP t194))
 LABEL L17
 MOVE(
  TEMP t112,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 8)),
    CONST 16)))
 MOVE(
  TEMP t111,
  TEMP t112)
 CJUMP(EQ,
  MEM(
   BINOP(PLUS,
    TEMP t112,
    CONST -8)),
  NAME L10,
  L12,L13)
 LABEL L13
 MOVE(
  TEMP t190,
  BINOP(PLUS,
   TEMP t100,
   CONST -8))
 MOVE(
  TEMP t115,
  CONST 1)
 MOVE(
  TEMP t114,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 8)),
    CONST 16)))
 MOVE(
  TEMP t113,
  TEMP t114)
 CJUMP(EQ,
  MEM(
   BINOP(PLUS,
    TEMP t114,
    CONST -8)),
  NAME L11,
  L15,L16)
 LABEL L16
 MOVE(
  TEMP t115,
  CONST 0)
 LABEL L15
 MOVE(
  MEM(
   TEMP t190),
  TEMP t115)
 LABEL L14
 CJUMP(NE,
  MEM(
   TEMP t190),
  CONST 0,
  L18,L19)
 LABEL L19
 EXP(
  CALL(
   NAME skipto))
 EXP(
  CALL(
   NAME skipto))
 MOVE(
  TEMP t187,
  BINOP(PLUS,
   MEM(
    BINOP(PLUS,
     TEMP t100,
     CONST 8)),
   CONST 0))
 MOVE(
  TEMP t121,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 16)))
 MOVE(
  TEMP t120,
  TEMP t121)
 MOVE(
  TEMP t186,
  CALL(
   NAME isdigit,
    MEM(
     BINOP(PLUS,
      TEMP t121,
      CONST -8))))
 MOVE(
  MEM(
   TEMP t187),
  TEMP t186)
 LABEL L20
 MOVE(
  TEMP t129,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 16)))
 MOVE(
  TEMP t128,
  TEMP t129)
 MOVE(
  TEMP t185,
  CALL(
   NAME isdigit,
    MEM(
     BINOP(PLUS,
      TEMP t129,
      CONST -8))))
 CJUMP(NE,
  TEMP t185,
  CONST 0,
  L21,L22)
 LABEL L22
 MOVE(
  TEMP t110,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST -8)))
 MOVE(
  TEMP t177,
  BINOP(PLUS,
   TEMP t100,
   CONST -24))
 MOVE(
  TEMP t176,
  BINOP(PLUS,
   TEMP t100,
   CONST -16))
 MOVE(
  TEMP t175,
  CALL(
   NAME allocRecord,
    CONST 8))
 MOVE(
  MEM(
   TEMP t176),
  TEMP t175)
 MOVE(
  MEM(
   BINOP(PLUS,
    MEM(
     TEMP t176),
    CONST 0)),
  CONST 0)
 MOVE(
  MEM(
   TEMP t177),
  MEM(
   TEMP t176))
 MOVE(
  TEMP t174,
  BINOP(PLUS,
   TEMP t100,
   CONST -40))
 MOVE(
  TEMP t173,
  CALL(
   NAME readint,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -8))))
 MOVE(
  MEM(
   TEMP t174),
  TEMP t173)
 CJUMP(NE,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -8)),
    CONST 0)),
  CONST 0,
  L27,L28)
 LABEL L28
 MOVE(
  MEM(
   TEMP t172),
  CONST 0)
 LABEL L29
 MOVE(
  TEMP t110,
  MEM(
   TEMP t172))
 CJUMP(EQ,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 16)),
  CONST 0,
  L36,L37)
 LABEL L37
 MOVE(
  TEMP t169,
  BINOP(PLUS,
   TEMP t100,
   CONST -40))
 CJUMP(EQ,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)),
  CONST 0,
  L33,L34)
 LABEL L34
 MOVE(
  TEMP t168,
  BINOP(PLUS,
   TEMP t100,
   CONST -32))
 CJUMP(LT,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 16)),
    CONST 0)),
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 8)),
    CONST 0)),
  L30,L31)
 LABEL L31
 MOVE(
  TEMP t164,
  BINOP(PLUS,
   TEMP t100,
   CONST -24))
 MOVE(
  TEMP t163,
  BINOP(PLUS,
   TEMP t100,
   CONST -16))
 MOVE(
  TEMP t162,
  CALL(
   NAME allocRecord,
    CONST 16))
 MOVE(
  MEM(
   TEMP t163),
  TEMP t162)
 MOVE(
  MEM(
   BINOP(PLUS,
    MEM(
     TEMP t163),
    CONST 8)),
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 8)),
    CONST 0)))
 MOVE(
  MEM(
   TEMP t167),
  MEM(
   TEMP t163))
 LABEL L32
 MOVE(
  MEM(
   TEMP t168),
  MEM(
   TEMP t167))
 LABEL L35
 MOVE(
  MEM(
   TEMP t169),
  MEM(
   TEMP t168))
 LABEL L38
 MOVE(
  TEMP t110,
  MEM(
   TEMP t169))
 CJUMP(GT,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)),
  CONST 0,
  L47,L48)
 LABEL L48
 CJUMP(LT,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)),
  CONST 0,
  L57,L58)
 LABEL L58
 MOVE(
  TEMP t157,
  BINOP(PLUS,
   TEMP t100,
   CONST -16))
 CJUMP(GT,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)),
  CONST 0,
  L54,L55)
 LABEL L55
 MOVE(
  TEMP t154,
  BINOP(PLUS,
   TEMP t100,
   CONST -8))
 MOVE(
  TEMP t153,
  CALL(
   NAME print,
    NAME L53))
 MOVE(
  MEM(
   TEMP t156),
  TEMP t153)
 LABEL L56
 MOVE(
  MEM(
   TEMP t158),
  MEM(
   TEMP t156))
 LABEL L59
 EXP(
  MEM(
   TEMP t158))
 CJUMP(EQ,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)),
  CONST 0,
  L64,L65)
 LABEL L65
 MOVE(
  TEMP t150,
  BINOP(PLUS,
   TEMP t100,
   CONST -8))
 EXP(
  CALL(
   NAME printint,
    MEM(
     BINOP(PLUS,
      MEM(
       BINOP(PLUS,
        TEMP t100,
        CONST 8)),
      CONST 0))))
 EXP(
  CALL(
   NAME printint,
    MEM(
     BINOP(PLUS,
      MEM(
       BINOP(PLUS,
        TEMP t100,
        CONST 8)),
      CONST 0))))
 EXP(
  CALL(
   NAME print,
    NAME L63))
 MOVE(
  MEM(
   TEMP t152),
  CALL(
   NAME printlist,
    MEM(
     BINOP(PLUS,
      MEM(
       BINOP(PLUS,
        TEMP t100,
        CONST 8)),
      CONST 8))))
 LABEL L66
 EXP(
  MEM(
   TEMP t152))
 MOVE(
  TEMP t149,
  BINOP(PLUS,
   TEMP t100,
   CONST -32))
 MOVE(
  TEMP t148,
  CALL(
   NAME readlist))
 MOVE(
  MEM(
   TEMP t149),
  TEMP t148)
 MOVE(
  TEMP t147,
  BINOP(PLUS,
   TEMP t100,
   CONST -48))
 MOVE(
  TEMP t146,
  BINOP(PLUS,
   TEMP t100,
   CONST -8))
 MOVE(
  TEMP t145,
  CALL(
   NAME getchar))
 MOVE(
  MEM(
   TEMP t146),
  TEMP t145)
 MOVE(
  MEM(
   TEMP t147),
  CALL(
   NAME readlist))
 MOVE(
  TEMP t144,
  CALL(
   NAME merge,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -40)),
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -24))))
 EXP(
  CALL(
   NAME printlist,
    TEMP t144))
 JUMP(
  NAME L67)
 LABEL L5
 MOVE(
  TEMP t194,
  BINOP(PLUS,
   TEMP t100,
   CONST -8))
 MOVE(
  TEMP t109,
  CONST 1)
 MOVE(
  TEMP t108,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 16)),
    CONST 16)))
 MOVE(
  TEMP t107,
  TEMP t108)
 MOVE(
  TEMP t191,
  CALL(
   NAME ord,
    MEM(
     BINOP(PLUS,
      TEMP t108,
      CONST -8))))
 MOVE(
  TEMP t193,
  TEMP t191)
 MOVE(
  TEMP t192,
  CALL(
   NAME ord,
    NAME L4))
 CJUMP(LE,
  TEMP t193,
  TEMP t192,
  L8,L9)
 LABEL L9
 MOVE(
  TEMP t109,
  CONST 0)
 LABEL L8
 MOVE(
  MEM(
   TEMP t194),
  TEMP t109)
 JUMP(
  NAME L7)
 LABEL L12
 MOVE(
  MEM(
   TEMP t190),
  CONST 1)
 JUMP(
  NAME L14)
 LABEL L18
 MOVE(
  TEMP t117,
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 8)),
    CONST 16)))
 MOVE(
  TEMP t116,
  TEMP t117)
 MOVE(
  TEMP t189,
  BINOP(PLUS,
   TEMP t117,
   CONST -8))
 MOVE(
  TEMP t188,
  CALL(
   NAME getchar))
 MOVE(
  MEM(
   TEMP t189),
  TEMP t188)
 JUMP(
  NAME L17)
 LABEL L21
 MOVE(
  TEMP t184,
  BINOP(PLUS,
   TEMP t100,
   CONST -8))
 MOVE(
  TEMP t181,
  BINOP(TIMES,
   MEM(
    BINOP(PLUS,
     TEMP t100,
     CONST -8)),
   CONST 10))
 MOVE(
  TEMP t133,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 16)))
 MOVE(
  TEMP t132,
  TEMP t133)
 MOVE(
  TEMP t180,
  CALL(
   NAME ord,
    MEM(
     BINOP(PLUS,
      TEMP t133,
      CONST -8))))
 MOVE(
  TEMP t183,
  BINOP(PLUS,
   TEMP t181,
   TEMP t180))
 MOVE(
  TEMP t182,
  CALL(
   NAME ord,
    NAME L24))
 MOVE(
  MEM(
   TEMP t184),
  BINOP(MINUS,
   TEMP t183,
   TEMP t182))
 MOVE(
  TEMP t139,
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 16)))
 MOVE(
  TEMP t138,
  TEMP t139)
 MOVE(
  TEMP t179,
  BINOP(PLUS,
   TEMP t139,
   CONST -8))
 MOVE(
  TEMP t178,
  CALL(
   NAME getchar))
 MOVE(
  MEM(
   TEMP t179),
  TEMP t178)
 JUMP(
  NAME L20)
 LABEL L27
 MOVE(
  TEMP t172,
  BINOP(PLUS,
   TEMP t100,
   CONST -56))
 MOVE(
  TEMP t171,
  BINOP(PLUS,
   TEMP t100,
   CONST -48))
 MOVE(
  TEMP t170,
  CALL(
   NAME allocRecord,
    CONST 16))
 MOVE(
  MEM(
   TEMP t171),
  TEMP t170)
 MOVE(
  MEM(
   BINOP(PLUS,
    MEM(
     TEMP t171),
    CONST 8)),
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST -32)))
 MOVE(
  MEM(
   TEMP t172),
  MEM(
   TEMP t171))
 JUMP(
  NAME L29)
 LABEL L36
 MOVE(
  MEM(
   TEMP t169),
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 8)))
 JUMP(
  NAME L38)
 LABEL L33
 MOVE(
  MEM(
   TEMP t168),
  MEM(
   BINOP(PLUS,
    TEMP t100,
    CONST 16)))
 JUMP(
  NAME L35)
 LABEL L30
 MOVE(
  TEMP t167,
  TEMP t164)
 MOVE(
  TEMP t166,
  BINOP(PLUS,
   TEMP t100,
   CONST -8))
 MOVE(
  TEMP t165,
  CALL(
   NAME allocRecord,
    CONST 16))
 MOVE(
  MEM(
   TEMP t166),
  TEMP t165)
 MOVE(
  MEM(
   BINOP(PLUS,
    MEM(
     TEMP t166),
    CONST 8)),
  MEM(
   BINOP(PLUS,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 16)),
    CONST 0)))
 MOVE(
  MEM(
   TEMP t167),
  MEM(
   TEMP t166))
 JUMP(
  NAME L32)
 LABEL L47
 EXP(
  CALL(
   NAME f,
    BINOP(DIVIDE,
     MEM(
      BINOP(PLUS,
       TEMP t100,
       CONST 8)),
     CONST 10)))
 MOVE(
  TEMP t161,
  BINOP(MINUS,
   MEM(
    BINOP(PLUS,
     TEMP t100,
     CONST 8)),
   BINOP(TIMES,
    BINOP(DIVIDE,
     MEM(
      BINOP(PLUS,
       TEMP t100,
       CONST 8)),
     CONST 10),
    CONST 10)))
 MOVE(
  TEMP t160,
  CALL(
   NAME ord,
    NAME L46))
 MOVE(
  TEMP t159,
  CALL(
   NAME chr,
    BINOP(PLUS,
     TEMP t161,
     TEMP t160)))
 EXP(
  CALL(
   NAME print,
    TEMP t159))
 JUMP(
  NAME L48)
 LABEL L57
 MOVE(
  TEMP t158,
  TEMP t157)
 EXP(
  CALL(
   NAME print,
    NAME L51))
 MOVE(
  MEM(
   TEMP t158),
  CALL(
   NAME f,
    BINOP(MINUS,
     CONST 0,
     MEM(
      BINOP(PLUS,
       TEMP t100,
       CONST 8)))))
 JUMP(
  NAME L59)
 LABEL L54
 MOVE(
  TEMP t156,
  TEMP t154)
 MOVE(
  TEMP t155,
  CALL(
   NAME f,
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST 8))))
 MOVE(
  MEM(
   TEMP t156),
  TEMP t155)
 JUMP(
  NAME L56)
 LABEL L64
 MOVE(
  TEMP t152,
  TEMP t150)
 MOVE(
  TEMP t151,
  CALL(
   NAME print,
    NAME L61))
 MOVE(
  MEM(
   TEMP t152),
  TEMP t151)
 JUMP(
  NAME L66)
 LABEL L67
