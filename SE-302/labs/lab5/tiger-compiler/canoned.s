


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
