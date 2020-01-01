


============================



 MOVE(
  TEMP t101,
  ESEQ(
   MOVE(
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -24)),
    CONST 1),
   ESEQ(
    SEQ(
     MOVE(
      MEM(
       BINOP(PLUS,
        TEMP t100,
        CONST -40)),
      BINOP(DIVIDE,
       MEM(
        BINOP(PLUS,
         TEMP t100,
         CONST -16)),
       CONST 2)),
     SEQ(
      MOVE(
       MEM(
        BINOP(PLUS,
         TEMP t100,
         CONST -32)),
       CONST 2),
      SEQ(
       CJUMP(LE,
        MEM(
         BINOP(PLUS,
          TEMP t100,
          CONST -32)),
        MEM(
         BINOP(PLUS,
          TEMP t100,
          CONST -40)),
        L2,L1),
       SEQ(
        LABEL L2,
        SEQ(
         SEQ(
          CJUMP(EQ,
           BINOP(TIMES,
            BINOP(DIVIDE,
             MEM(
              BINOP(PLUS,
               TEMP t100,
               CONST -16)),
             MEM(
              BINOP(PLUS,
               TEMP t100,
               CONST -32))),
            MEM(
             BINOP(PLUS,
              TEMP t100,
              CONST -32))),
           MEM(
            BINOP(PLUS,
             TEMP t100,
             CONST -16)),
           L4,L5),
          SEQ(
           LABEL L4,
           SEQ(
            EXP(
             ESEQ(
              MOVE(
               MEM(
                BINOP(PLUS,
                 TEMP t100,
                 CONST -24)),
               CONST 0),
              ESEQ(
               JUMP(
                NAME L1),
               CONST 0))),
            LABEL L5))),
         SEQ(
          CJUMP(LT,
           MEM(
            BINOP(PLUS,
             TEMP t100,
             CONST -32)),
           MEM(
            BINOP(PLUS,
             TEMP t100,
             CONST -40)),
           L3,L1),
          SEQ(
           LABEL L3,
           SEQ(
            MOVE(
             MEM(
              BINOP(PLUS,
               TEMP t100,
               CONST -32)),
             BINOP(PLUS,
              MEM(
               BINOP(PLUS,
                TEMP t100,
                CONST -32)),
              CONST 1)),
            SEQ(
             JUMP(
              NAME L2),
             LABEL L1))))))))),
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -24))))) EXP(
  ESEQ(
   EXP(
    CALL(
     NAME printi,
      CALL(
       NAME check,
        CONST 56,
        MEM(
         BINOP(PLUS,
          TEMP t100,
          CONST -8))),
      MEM(
       BINOP(PLUS,
        MEM(
         BINOP(PLUS,
          TEMP t100,
          CONST -8)),
        CONST -8)))),
   ESEQ(
    EXP(
     CALL(
      NAME print,
       NAME L7,
       MEM(
        BINOP(PLUS,
         MEM(
          BINOP(PLUS,
           TEMP t100,
           CONST -8)),
         CONST -8)))),
    ESEQ(
     EXP(
      CALL(
       NAME printi,
        CALL(
         NAME check,
          CONST 23,
          MEM(
           BINOP(PLUS,
            TEMP t100,
            CONST -8))),
        MEM(
         BINOP(PLUS,
          MEM(
           BINOP(PLUS,
            TEMP t100,
            CONST -8)),
          CONST -8)))),
     ESEQ(
      EXP(
       CALL(
        NAME print,
         NAME L8,
         MEM(
          BINOP(PLUS,
           MEM(
            BINOP(PLUS,
             TEMP t100,
             CONST -8)),
           CONST -8)))),
      ESEQ(
       EXP(
        CALL(
         NAME printi,
          CALL(
           NAME check,
            CONST 71,
            MEM(
             BINOP(PLUS,
              TEMP t100,
              CONST -8))),
          MEM(
           BINOP(PLUS,
            MEM(
             BINOP(PLUS,
              TEMP t100,
              CONST -8)),
            CONST -8)))),
       ESEQ(
        EXP(
         CALL(
          NAME print,
           NAME L9,
           MEM(
            BINOP(PLUS,
             MEM(
              BINOP(PLUS,
               TEMP t100,
               CONST -8)),
             CONST -8)))),
        ESEQ(
         EXP(
          CALL(
           NAME printi,
            CALL(
             NAME check,
              CONST 72,
              MEM(
               BINOP(PLUS,
                TEMP t100,
                CONST -8))),
            MEM(
             BINOP(PLUS,
              MEM(
               BINOP(PLUS,
                TEMP t100,
                CONST -8)),
              CONST -8)))),
         ESEQ(
          EXP(
           CALL(
            NAME print,
             NAME L10,
             MEM(
              BINOP(PLUS,
               MEM(
                BINOP(PLUS,
                 TEMP t100,
                 CONST -8)),
               CONST -8)))),
          ESEQ(
           EXP(
            CALL(
             NAME printi,
              CALL(
               NAME check,
                CONST 173,
                MEM(
                 BINOP(PLUS,
                  TEMP t100,
                  CONST -8))),
              MEM(
               BINOP(PLUS,
                MEM(
                 BINOP(PLUS,
                  TEMP t100,
                  CONST -8)),
                CONST -8)))),
           ESEQ(
            EXP(
             CALL(
              NAME print,
               NAME L11,
               MEM(
                BINOP(PLUS,
                 MEM(
                  BINOP(PLUS,
                   TEMP t100,
                   CONST -8)),
                 CONST -8)))),
            ESEQ(
             EXP(
              CALL(
               NAME printi,
                CALL(
                 NAME check,
                  CONST 181,
                  MEM(
                   BINOP(PLUS,
                    TEMP t100,
                    CONST -8))),
                MEM(
                 BINOP(PLUS,
                  MEM(
                   BINOP(PLUS,
                    TEMP t100,
                    CONST -8)),
                  CONST -8)))),
             ESEQ(
              EXP(
               CALL(
                NAME print,
                 NAME L12,
                 MEM(
                  BINOP(PLUS,
                   MEM(
                    BINOP(PLUS,
                     TEMP t100,
                     CONST -8)),
                   CONST -8)))),
              ESEQ(
               EXP(
                CALL(
                 NAME printi,
                  CALL(
                   NAME check,
                    CONST 281,
                    MEM(
                     BINOP(PLUS,
                      TEMP t100,
                      CONST -8))),
                  MEM(
                   BINOP(PLUS,
                    MEM(
                     BINOP(PLUS,
                      TEMP t100,
                      CONST -8)),
                    CONST -8)))),
               ESEQ(
                EXP(
                 CALL(
                  NAME print,
                   NAME L13,
                   MEM(
                    BINOP(PLUS,
                     MEM(
                      BINOP(PLUS,
                       TEMP t100,
                       CONST -8)),
                     CONST -8)))),
                ESEQ(
                 EXP(
                  CALL(
                   NAME printi,
                    CALL(
                     NAME check,
                      CONST 659,
                      MEM(
                       BINOP(PLUS,
                        TEMP t100,
                        CONST -8))),
                    MEM(
                     BINOP(PLUS,
                      MEM(
                       BINOP(PLUS,
                        TEMP t100,
                        CONST -8)),
                      CONST -8)))),
                 ESEQ(
                  EXP(
                   CALL(
                    NAME print,
                     NAME L14,
                     MEM(
                      BINOP(PLUS,
                       MEM(
                        BINOP(PLUS,
                         TEMP t100,
                         CONST -8)),
                       CONST -8)))),
                  ESEQ(
                   EXP(
                    CALL(
                     NAME printi,
                      CALL(
                       NAME check,
                        CONST 729,
                        MEM(
                         BINOP(PLUS,
                          TEMP t100,
                          CONST -8))),
                      MEM(
                       BINOP(PLUS,
                        MEM(
                         BINOP(PLUS,
                          TEMP t100,
                          CONST -8)),
                        CONST -8)))),
                   ESEQ(
                    EXP(
                     CALL(
                      NAME print,
                       NAME L15,
                       MEM(
                        BINOP(PLUS,
                         MEM(
                          BINOP(PLUS,
                           TEMP t100,
                           CONST -8)),
                         CONST -8)))),
                    ESEQ(
                     EXP(
                      CALL(
                       NAME printi,
                        CALL(
                         NAME check,
                          CONST 947,
                          MEM(
                           BINOP(PLUS,
                            TEMP t100,
                            CONST -8))),
                        MEM(
                         BINOP(PLUS,
                          MEM(
                           BINOP(PLUS,
                            TEMP t100,
                            CONST -8)),
                          CONST -8)))),
                     ESEQ(
                      EXP(
                       CALL(
                        NAME print,
                         NAME L16,
                         MEM(
                          BINOP(PLUS,
                           MEM(
                            BINOP(PLUS,
                             TEMP t100,
                             CONST -8)),
                           CONST -8)))),
                      ESEQ(
                       EXP(
                        CALL(
                         NAME printi,
                          CALL(
                           NAME check,
                            CONST 945,
                            MEM(
                             BINOP(PLUS,
                              TEMP t100,
                              CONST -8))),
                          MEM(
                           BINOP(PLUS,
                            MEM(
                             BINOP(PLUS,
                              TEMP t100,
                              CONST -8)),
                            CONST -8)))),
                       CALL(
                        NAME print,
                         NAME L17,
                         MEM(
                          BINOP(PLUS,
                           MEM(
                            BINOP(PLUS,
                             TEMP t100,
                             CONST -8)),
                           CONST -8))))))))))))))))))))))))) EXP(
  ESEQ(
   EXP(
    CONST 0),
   CALL(
    NAME try,
     TEMP t100)))


============================



 MOVE(
  TEMP t101,
  ESEQ(
   MOVE(
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -24)),
    CONST 1),
   ESEQ(
    SEQ(
     MOVE(
      MEM(
       BINOP(PLUS,
        TEMP t100,
        CONST -40)),
      BINOP(DIVIDE,
       MEM(
        BINOP(PLUS,
         TEMP t100,
         CONST -16)),
       CONST 2)),
     SEQ(
      MOVE(
       MEM(
        BINOP(PLUS,
         TEMP t100,
         CONST -32)),
       CONST 2),
      SEQ(
       CJUMP(LE,
        MEM(
         BINOP(PLUS,
          TEMP t100,
          CONST -32)),
        MEM(
         BINOP(PLUS,
          TEMP t100,
          CONST -40)),
        L2,L1),
       SEQ(
        LABEL L2,
        SEQ(
         SEQ(
          CJUMP(EQ,
           BINOP(TIMES,
            BINOP(DIVIDE,
             MEM(
              BINOP(PLUS,
               TEMP t100,
               CONST -16)),
             MEM(
              BINOP(PLUS,
               TEMP t100,
               CONST -32))),
            MEM(
             BINOP(PLUS,
              TEMP t100,
              CONST -32))),
           MEM(
            BINOP(PLUS,
             TEMP t100,
             CONST -16)),
           L4,L5),
          SEQ(
           LABEL L4,
           SEQ(
            EXP(
             ESEQ(
              MOVE(
               MEM(
                BINOP(PLUS,
                 TEMP t100,
                 CONST -24)),
               CONST 0),
              ESEQ(
               JUMP(
                NAME L1),
               CONST 0))),
            LABEL L5))),
         SEQ(
          CJUMP(LT,
           MEM(
            BINOP(PLUS,
             TEMP t100,
             CONST -32)),
           MEM(
            BINOP(PLUS,
             TEMP t100,
             CONST -40)),
           L3,L1),
          SEQ(
           LABEL L3,
           SEQ(
            MOVE(
             MEM(
              BINOP(PLUS,
               TEMP t100,
               CONST -32)),
             BINOP(PLUS,
              MEM(
               BINOP(PLUS,
                TEMP t100,
                CONST -32)),
              CONST 1)),
            SEQ(
             JUMP(
              NAME L2),
             LABEL L1))))))))),
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -24))))) EXP(
  ESEQ(
   EXP(
    CALL(
     NAME printi,
      CALL(
       NAME check,
        CONST 56,
        MEM(
         BINOP(PLUS,
          TEMP t100,
          CONST -8))),
      MEM(
       BINOP(PLUS,
        MEM(
         BINOP(PLUS,
          TEMP t100,
          CONST -8)),
        CONST -8)))),
   ESEQ(
    EXP(
     CALL(
      NAME print,
       NAME L7,
       MEM(
        BINOP(PLUS,
         MEM(
          BINOP(PLUS,
           TEMP t100,
           CONST -8)),
         CONST -8)))),
    ESEQ(
     EXP(
      CALL(
       NAME printi,
        CALL(
         NAME check,
          CONST 23,
          MEM(
           BINOP(PLUS,
            TEMP t100,
            CONST -8))),
        MEM(
         BINOP(PLUS,
          MEM(
           BINOP(PLUS,
            TEMP t100,
            CONST -8)),
          CONST -8)))),
     ESEQ(
      EXP(
       CALL(
        NAME print,
         NAME L8,
         MEM(
          BINOP(PLUS,
           MEM(
            BINOP(PLUS,
             TEMP t100,
             CONST -8)),
           CONST -8)))),
      ESEQ(
       EXP(
        CALL(
         NAME printi,
          CALL(
           NAME check,
            CONST 71,
            MEM(
             BINOP(PLUS,
              TEMP t100,
              CONST -8))),
          MEM(
           BINOP(PLUS,
            MEM(
             BINOP(PLUS,
              TEMP t100,
              CONST -8)),
            CONST -8)))),
       ESEQ(
        EXP(
         CALL(
          NAME print,
           NAME L9,
           MEM(
            BINOP(PLUS,
             MEM(
              BINOP(PLUS,
               TEMP t100,
               CONST -8)),
             CONST -8)))),
        ESEQ(
         EXP(
          CALL(
           NAME printi,
            CALL(
             NAME check,
              CONST 72,
              MEM(
               BINOP(PLUS,
                TEMP t100,
                CONST -8))),
            MEM(
             BINOP(PLUS,
              MEM(
               BINOP(PLUS,
                TEMP t100,
                CONST -8)),
              CONST -8)))),
         ESEQ(
          EXP(
           CALL(
            NAME print,
             NAME L10,
             MEM(
              BINOP(PLUS,
               MEM(
                BINOP(PLUS,
                 TEMP t100,
                 CONST -8)),
               CONST -8)))),
          ESEQ(
           EXP(
            CALL(
             NAME printi,
              CALL(
               NAME check,
                CONST 173,
                MEM(
                 BINOP(PLUS,
                  TEMP t100,
                  CONST -8))),
              MEM(
               BINOP(PLUS,
                MEM(
                 BINOP(PLUS,
                  TEMP t100,
                  CONST -8)),
                CONST -8)))),
           ESEQ(
            EXP(
             CALL(
              NAME print,
               NAME L11,
               MEM(
                BINOP(PLUS,
                 MEM(
                  BINOP(PLUS,
                   TEMP t100,
                   CONST -8)),
                 CONST -8)))),
            ESEQ(
             EXP(
              CALL(
               NAME printi,
                CALL(
                 NAME check,
                  CONST 181,
                  MEM(
                   BINOP(PLUS,
                    TEMP t100,
                    CONST -8))),
                MEM(
                 BINOP(PLUS,
                  MEM(
                   BINOP(PLUS,
                    TEMP t100,
                    CONST -8)),
                  CONST -8)))),
             ESEQ(
              EXP(
               CALL(
                NAME print,
                 NAME L12,
                 MEM(
                  BINOP(PLUS,
                   MEM(
                    BINOP(PLUS,
                     TEMP t100,
                     CONST -8)),
                   CONST -8)))),
              ESEQ(
               EXP(
                CALL(
                 NAME printi,
                  CALL(
                   NAME check,
                    CONST 281,
                    MEM(
                     BINOP(PLUS,
                      TEMP t100,
                      CONST -8))),
                  MEM(
                   BINOP(PLUS,
                    MEM(
                     BINOP(PLUS,
                      TEMP t100,
                      CONST -8)),
                    CONST -8)))),
               ESEQ(
                EXP(
                 CALL(
                  NAME print,
                   NAME L13,
                   MEM(
                    BINOP(PLUS,
                     MEM(
                      BINOP(PLUS,
                       TEMP t100,
                       CONST -8)),
                     CONST -8)))),
                ESEQ(
                 EXP(
                  CALL(
                   NAME printi,
                    CALL(
                     NAME check,
                      CONST 659,
                      MEM(
                       BINOP(PLUS,
                        TEMP t100,
                        CONST -8))),
                    MEM(
                     BINOP(PLUS,
                      MEM(
                       BINOP(PLUS,
                        TEMP t100,
                        CONST -8)),
                      CONST -8)))),
                 ESEQ(
                  EXP(
                   CALL(
                    NAME print,
                     NAME L14,
                     MEM(
                      BINOP(PLUS,
                       MEM(
                        BINOP(PLUS,
                         TEMP t100,
                         CONST -8)),
                       CONST -8)))),
                  ESEQ(
                   EXP(
                    CALL(
                     NAME printi,
                      CALL(
                       NAME check,
                        CONST 729,
                        MEM(
                         BINOP(PLUS,
                          TEMP t100,
                          CONST -8))),
                      MEM(
                       BINOP(PLUS,
                        MEM(
                         BINOP(PLUS,
                          TEMP t100,
                          CONST -8)),
                        CONST -8)))),
                   ESEQ(
                    EXP(
                     CALL(
                      NAME print,
                       NAME L15,
                       MEM(
                        BINOP(PLUS,
                         MEM(
                          BINOP(PLUS,
                           TEMP t100,
                           CONST -8)),
                         CONST -8)))),
                    ESEQ(
                     EXP(
                      CALL(
                       NAME printi,
                        CALL(
                         NAME check,
                          CONST 947,
                          MEM(
                           BINOP(PLUS,
                            TEMP t100,
                            CONST -8))),
                        MEM(
                         BINOP(PLUS,
                          MEM(
                           BINOP(PLUS,
                            TEMP t100,
                            CONST -8)),
                          CONST -8)))),
                     ESEQ(
                      EXP(
                       CALL(
                        NAME print,
                         NAME L16,
                         MEM(
                          BINOP(PLUS,
                           MEM(
                            BINOP(PLUS,
                             TEMP t100,
                             CONST -8)),
                           CONST -8)))),
                      ESEQ(
                       EXP(
                        CALL(
                         NAME printi,
                          CALL(
                           NAME check,
                            CONST 945,
                            MEM(
                             BINOP(PLUS,
                              TEMP t100,
                              CONST -8))),
                          MEM(
                           BINOP(PLUS,
                            MEM(
                             BINOP(PLUS,
                              TEMP t100,
                              CONST -8)),
                            CONST -8)))),
                       CALL(
                        NAME print,
                         NAME L17,
                         MEM(
                          BINOP(PLUS,
                           MEM(
                            BINOP(PLUS,
                             TEMP t100,
                             CONST -8)),
                           CONST -8))))))))))))))))))))))))) EXP(
  ESEQ(
   EXP(
    CONST 0),
   CALL(
    NAME try,
     TEMP t100)))


============================



 MOVE(
  TEMP t101,
  ESEQ(
   MOVE(
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -24)),
    CONST 1),
   ESEQ(
    SEQ(
     MOVE(
      MEM(
       BINOP(PLUS,
        TEMP t100,
        CONST -40)),
      BINOP(DIVIDE,
       MEM(
        BINOP(PLUS,
         TEMP t100,
         CONST -16)),
       CONST 2)),
     SEQ(
      MOVE(
       MEM(
        BINOP(PLUS,
         TEMP t100,
         CONST -32)),
       CONST 2),
      SEQ(
       CJUMP(LE,
        MEM(
         BINOP(PLUS,
          TEMP t100,
          CONST -32)),
        MEM(
         BINOP(PLUS,
          TEMP t100,
          CONST -40)),
        L2,L1),
       SEQ(
        LABEL L2,
        SEQ(
         SEQ(
          CJUMP(EQ,
           BINOP(TIMES,
            BINOP(DIVIDE,
             MEM(
              BINOP(PLUS,
               TEMP t100,
               CONST -16)),
             MEM(
              BINOP(PLUS,
               TEMP t100,
               CONST -32))),
            MEM(
             BINOP(PLUS,
              TEMP t100,
              CONST -32))),
           MEM(
            BINOP(PLUS,
             TEMP t100,
             CONST -16)),
           L4,L5),
          SEQ(
           LABEL L4,
           SEQ(
            EXP(
             ESEQ(
              MOVE(
               MEM(
                BINOP(PLUS,
                 TEMP t100,
                 CONST -24)),
               CONST 0),
              ESEQ(
               JUMP(
                NAME L1),
               CONST 0))),
            LABEL L5))),
         SEQ(
          CJUMP(LT,
           MEM(
            BINOP(PLUS,
             TEMP t100,
             CONST -32)),
           MEM(
            BINOP(PLUS,
             TEMP t100,
             CONST -40)),
           L3,L1),
          SEQ(
           LABEL L3,
           SEQ(
            MOVE(
             MEM(
              BINOP(PLUS,
               TEMP t100,
               CONST -32)),
             BINOP(PLUS,
              MEM(
               BINOP(PLUS,
                TEMP t100,
                CONST -32)),
              CONST 1)),
            SEQ(
             JUMP(
              NAME L2),
             LABEL L1))))))))),
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -24))))) EXP(
  ESEQ(
   EXP(
    CALL(
     NAME printi,
      CALL(
       NAME check,
        CONST 56,
        MEM(
         BINOP(PLUS,
          TEMP t100,
          CONST -8))),
      MEM(
       BINOP(PLUS,
        MEM(
         BINOP(PLUS,
          TEMP t100,
          CONST -8)),
        CONST -8)))),
   ESEQ(
    EXP(
     CALL(
      NAME print,
       NAME L7,
       MEM(
        BINOP(PLUS,
         MEM(
          BINOP(PLUS,
           TEMP t100,
           CONST -8)),
         CONST -8)))),
    ESEQ(
     EXP(
      CALL(
       NAME printi,
        CALL(
         NAME check,
          CONST 23,
          MEM(
           BINOP(PLUS,
            TEMP t100,
            CONST -8))),
        MEM(
         BINOP(PLUS,
          MEM(
           BINOP(PLUS,
            TEMP t100,
            CONST -8)),
          CONST -8)))),
     ESEQ(
      EXP(
       CALL(
        NAME print,
         NAME L8,
         MEM(
          BINOP(PLUS,
           MEM(
            BINOP(PLUS,
             TEMP t100,
             CONST -8)),
           CONST -8)))),
      ESEQ(
       EXP(
        CALL(
         NAME printi,
          CALL(
           NAME check,
            CONST 71,
            MEM(
             BINOP(PLUS,
              TEMP t100,
              CONST -8))),
          MEM(
           BINOP(PLUS,
            MEM(
             BINOP(PLUS,
              TEMP t100,
              CONST -8)),
            CONST -8)))),
       ESEQ(
        EXP(
         CALL(
          NAME print,
           NAME L9,
           MEM(
            BINOP(PLUS,
             MEM(
              BINOP(PLUS,
               TEMP t100,
               CONST -8)),
             CONST -8)))),
        ESEQ(
         EXP(
          CALL(
           NAME printi,
            CALL(
             NAME check,
              CONST 72,
              MEM(
               BINOP(PLUS,
                TEMP t100,
                CONST -8))),
            MEM(
             BINOP(PLUS,
              MEM(
               BINOP(PLUS,
                TEMP t100,
                CONST -8)),
              CONST -8)))),
         ESEQ(
          EXP(
           CALL(
            NAME print,
             NAME L10,
             MEM(
              BINOP(PLUS,
               MEM(
                BINOP(PLUS,
                 TEMP t100,
                 CONST -8)),
               CONST -8)))),
          ESEQ(
           EXP(
            CALL(
             NAME printi,
              CALL(
               NAME check,
                CONST 173,
                MEM(
                 BINOP(PLUS,
                  TEMP t100,
                  CONST -8))),
              MEM(
               BINOP(PLUS,
                MEM(
                 BINOP(PLUS,
                  TEMP t100,
                  CONST -8)),
                CONST -8)))),
           ESEQ(
            EXP(
             CALL(
              NAME print,
               NAME L11,
               MEM(
                BINOP(PLUS,
                 MEM(
                  BINOP(PLUS,
                   TEMP t100,
                   CONST -8)),
                 CONST -8)))),
            ESEQ(
             EXP(
              CALL(
               NAME printi,
                CALL(
                 NAME check,
                  CONST 181,
                  MEM(
                   BINOP(PLUS,
                    TEMP t100,
                    CONST -8))),
                MEM(
                 BINOP(PLUS,
                  MEM(
                   BINOP(PLUS,
                    TEMP t100,
                    CONST -8)),
                  CONST -8)))),
             ESEQ(
              EXP(
               CALL(
                NAME print,
                 NAME L12,
                 MEM(
                  BINOP(PLUS,
                   MEM(
                    BINOP(PLUS,
                     TEMP t100,
                     CONST -8)),
                   CONST -8)))),
              ESEQ(
               EXP(
                CALL(
                 NAME printi,
                  CALL(
                   NAME check,
                    CONST 281,
                    MEM(
                     BINOP(PLUS,
                      TEMP t100,
                      CONST -8))),
                  MEM(
                   BINOP(PLUS,
                    MEM(
                     BINOP(PLUS,
                      TEMP t100,
                      CONST -8)),
                    CONST -8)))),
               ESEQ(
                EXP(
                 CALL(
                  NAME print,
                   NAME L13,
                   MEM(
                    BINOP(PLUS,
                     MEM(
                      BINOP(PLUS,
                       TEMP t100,
                       CONST -8)),
                     CONST -8)))),
                ESEQ(
                 EXP(
                  CALL(
                   NAME printi,
                    CALL(
                     NAME check,
                      CONST 659,
                      MEM(
                       BINOP(PLUS,
                        TEMP t100,
                        CONST -8))),
                    MEM(
                     BINOP(PLUS,
                      MEM(
                       BINOP(PLUS,
                        TEMP t100,
                        CONST -8)),
                      CONST -8)))),
                 ESEQ(
                  EXP(
                   CALL(
                    NAME print,
                     NAME L14,
                     MEM(
                      BINOP(PLUS,
                       MEM(
                        BINOP(PLUS,
                         TEMP t100,
                         CONST -8)),
                       CONST -8)))),
                  ESEQ(
                   EXP(
                    CALL(
                     NAME printi,
                      CALL(
                       NAME check,
                        CONST 729,
                        MEM(
                         BINOP(PLUS,
                          TEMP t100,
                          CONST -8))),
                      MEM(
                       BINOP(PLUS,
                        MEM(
                         BINOP(PLUS,
                          TEMP t100,
                          CONST -8)),
                        CONST -8)))),
                   ESEQ(
                    EXP(
                     CALL(
                      NAME print,
                       NAME L15,
                       MEM(
                        BINOP(PLUS,
                         MEM(
                          BINOP(PLUS,
                           TEMP t100,
                           CONST -8)),
                         CONST -8)))),
                    ESEQ(
                     EXP(
                      CALL(
                       NAME printi,
                        CALL(
                         NAME check,
                          CONST 947,
                          MEM(
                           BINOP(PLUS,
                            TEMP t100,
                            CONST -8))),
                        MEM(
                         BINOP(PLUS,
                          MEM(
                           BINOP(PLUS,
                            TEMP t100,
                            CONST -8)),
                          CONST -8)))),
                     ESEQ(
                      EXP(
                       CALL(
                        NAME print,
                         NAME L16,
                         MEM(
                          BINOP(PLUS,
                           MEM(
                            BINOP(PLUS,
                             TEMP t100,
                             CONST -8)),
                           CONST -8)))),
                      ESEQ(
                       EXP(
                        CALL(
                         NAME printi,
                          CALL(
                           NAME check,
                            CONST 945,
                            MEM(
                             BINOP(PLUS,
                              TEMP t100,
                              CONST -8))),
                          MEM(
                           BINOP(PLUS,
                            MEM(
                             BINOP(PLUS,
                              TEMP t100,
                              CONST -8)),
                            CONST -8)))),
                       CALL(
                        NAME print,
                         NAME L17,
                         MEM(
                          BINOP(PLUS,
                           MEM(
                            BINOP(PLUS,
                             TEMP t100,
                             CONST -8)),
                           CONST -8))))))))))))))))))))))))) EXP(
  ESEQ(
   EXP(
    CONST 0),
   CALL(
    NAME try,
     TEMP t100)))


============================



 MOVE(
  TEMP t101,
  ESEQ(
   MOVE(
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -24)),
    CONST 1),
   ESEQ(
    SEQ(
     MOVE(
      MEM(
       BINOP(PLUS,
        TEMP t100,
        CONST -40)),
      BINOP(DIVIDE,
       MEM(
        BINOP(PLUS,
         TEMP t100,
         CONST -16)),
       CONST 2)),
     SEQ(
      MOVE(
       MEM(
        BINOP(PLUS,
         TEMP t100,
         CONST -32)),
       CONST 2),
      SEQ(
       CJUMP(LE,
        MEM(
         BINOP(PLUS,
          TEMP t100,
          CONST -32)),
        MEM(
         BINOP(PLUS,
          TEMP t100,
          CONST -40)),
        L2,L1),
       SEQ(
        LABEL L2,
        SEQ(
         SEQ(
          CJUMP(EQ,
           BINOP(TIMES,
            BINOP(DIVIDE,
             MEM(
              BINOP(PLUS,
               TEMP t100,
               CONST -16)),
             MEM(
              BINOP(PLUS,
               TEMP t100,
               CONST -32))),
            MEM(
             BINOP(PLUS,
              TEMP t100,
              CONST -32))),
           MEM(
            BINOP(PLUS,
             TEMP t100,
             CONST -16)),
           L4,L5),
          SEQ(
           LABEL L4,
           SEQ(
            EXP(
             ESEQ(
              MOVE(
               MEM(
                BINOP(PLUS,
                 TEMP t100,
                 CONST -24)),
               CONST 0),
              ESEQ(
               JUMP(
                NAME L1),
               CONST 0))),
            LABEL L5))),
         SEQ(
          CJUMP(LT,
           MEM(
            BINOP(PLUS,
             TEMP t100,
             CONST -32)),
           MEM(
            BINOP(PLUS,
             TEMP t100,
             CONST -40)),
           L3,L1),
          SEQ(
           LABEL L3,
           SEQ(
            MOVE(
             MEM(
              BINOP(PLUS,
               TEMP t100,
               CONST -32)),
             BINOP(PLUS,
              MEM(
               BINOP(PLUS,
                TEMP t100,
                CONST -32)),
              CONST 1)),
            SEQ(
             JUMP(
              NAME L2),
             LABEL L1))))))))),
    MEM(
     BINOP(PLUS,
      TEMP t100,
      CONST -24))))) EXP(
  ESEQ(
   EXP(
    CALL(
     NAME printi,
      CALL(
       NAME check,
        CONST 56,
        MEM(
         BINOP(PLUS,
          TEMP t100,
          CONST -8))),
      MEM(
       BINOP(PLUS,
        MEM(
         BINOP(PLUS,
          TEMP t100,
          CONST -8)),
        CONST -8)))),
   ESEQ(
    EXP(
     CALL(
      NAME print,
       NAME L7,
       MEM(
        BINOP(PLUS,
         MEM(
          BINOP(PLUS,
           TEMP t100,
           CONST -8)),
         CONST -8)))),
    ESEQ(
     EXP(
      CALL(
       NAME printi,
        CALL(
         NAME check,
          CONST 23,
          MEM(
           BINOP(PLUS,
            TEMP t100,
            CONST -8))),
        MEM(
         BINOP(PLUS,
          MEM(
           BINOP(PLUS,
            TEMP t100,
            CONST -8)),
          CONST -8)))),
     ESEQ(
      EXP(
       CALL(
        NAME print,
         NAME L8,
         MEM(
          BINOP(PLUS,
           MEM(
            BINOP(PLUS,
             TEMP t100,
             CONST -8)),
           CONST -8)))),
      ESEQ(
       EXP(
        CALL(
         NAME printi,
          CALL(
           NAME check,
            CONST 71,
            MEM(
             BINOP(PLUS,
              TEMP t100,
              CONST -8))),
          MEM(
           BINOP(PLUS,
            MEM(
             BINOP(PLUS,
              TEMP t100,
              CONST -8)),
            CONST -8)))),
       ESEQ(
        EXP(
         CALL(
          NAME print,
           NAME L9,
           MEM(
            BINOP(PLUS,
             MEM(
              BINOP(PLUS,
               TEMP t100,
               CONST -8)),
             CONST -8)))),
        ESEQ(
         EXP(
          CALL(
           NAME printi,
            CALL(
             NAME check,
              CONST 72,
              MEM(
               BINOP(PLUS,
                TEMP t100,
                CONST -8))),
            MEM(
             BINOP(PLUS,
              MEM(
               BINOP(PLUS,
                TEMP t100,
                CONST -8)),
              CONST -8)))),
         ESEQ(
          EXP(
           CALL(
            NAME print,
             NAME L10,
             MEM(
              BINOP(PLUS,
               MEM(
                BINOP(PLUS,
                 TEMP t100,
                 CONST -8)),
               CONST -8)))),
          ESEQ(
           EXP(
            CALL(
             NAME printi,
              CALL(
               NAME check,
                CONST 173,
                MEM(
                 BINOP(PLUS,
                  TEMP t100,
                  CONST -8))),
              MEM(
               BINOP(PLUS,
                MEM(
                 BINOP(PLUS,
                  TEMP t100,
                  CONST -8)),
                CONST -8)))),
           ESEQ(
            EXP(
             CALL(
              NAME print,
               NAME L11,
               MEM(
                BINOP(PLUS,
                 MEM(
                  BINOP(PLUS,
                   TEMP t100,
                   CONST -8)),
                 CONST -8)))),
            ESEQ(
             EXP(
              CALL(
               NAME printi,
                CALL(
                 NAME check,
                  CONST 181,
                  MEM(
                   BINOP(PLUS,
                    TEMP t100,
                    CONST -8))),
                MEM(
                 BINOP(PLUS,
                  MEM(
                   BINOP(PLUS,
                    TEMP t100,
                    CONST -8)),
                  CONST -8)))),
             ESEQ(
              EXP(
               CALL(
                NAME print,
                 NAME L12,
                 MEM(
                  BINOP(PLUS,
                   MEM(
                    BINOP(PLUS,
                     TEMP t100,
                     CONST -8)),
                   CONST -8)))),
              ESEQ(
               EXP(
                CALL(
                 NAME printi,
                  CALL(
                   NAME check,
                    CONST 281,
                    MEM(
                     BINOP(PLUS,
                      TEMP t100,
                      CONST -8))),
                  MEM(
                   BINOP(PLUS,
                    MEM(
                     BINOP(PLUS,
                      TEMP t100,
                      CONST -8)),
                    CONST -8)))),
               ESEQ(
                EXP(
                 CALL(
                  NAME print,
                   NAME L13,
                   MEM(
                    BINOP(PLUS,
                     MEM(
                      BINOP(PLUS,
                       TEMP t100,
                       CONST -8)),
                     CONST -8)))),
                ESEQ(
                 EXP(
                  CALL(
                   NAME printi,
                    CALL(
                     NAME check,
                      CONST 659,
                      MEM(
                       BINOP(PLUS,
                        TEMP t100,
                        CONST -8))),
                    MEM(
                     BINOP(PLUS,
                      MEM(
                       BINOP(PLUS,
                        TEMP t100,
                        CONST -8)),
                      CONST -8)))),
                 ESEQ(
                  EXP(
                   CALL(
                    NAME print,
                     NAME L14,
                     MEM(
                      BINOP(PLUS,
                       MEM(
                        BINOP(PLUS,
                         TEMP t100,
                         CONST -8)),
                       CONST -8)))),
                  ESEQ(
                   EXP(
                    CALL(
                     NAME printi,
                      CALL(
                       NAME check,
                        CONST 729,
                        MEM(
                         BINOP(PLUS,
                          TEMP t100,
                          CONST -8))),
                      MEM(
                       BINOP(PLUS,
                        MEM(
                         BINOP(PLUS,
                          TEMP t100,
                          CONST -8)),
                        CONST -8)))),
                   ESEQ(
                    EXP(
                     CALL(
                      NAME print,
                       NAME L15,
                       MEM(
                        BINOP(PLUS,
                         MEM(
                          BINOP(PLUS,
                           TEMP t100,
                           CONST -8)),
                         CONST -8)))),
                    ESEQ(
                     EXP(
                      CALL(
                       NAME printi,
                        CALL(
                         NAME check,
                          CONST 947,
                          MEM(
                           BINOP(PLUS,
                            TEMP t100,
                            CONST -8))),
                        MEM(
                         BINOP(PLUS,
                          MEM(
                           BINOP(PLUS,
                            TEMP t100,
                            CONST -8)),
                          CONST -8)))),
                     ESEQ(
                      EXP(
                       CALL(
                        NAME print,
                         NAME L16,
                         MEM(
                          BINOP(PLUS,
                           MEM(
                            BINOP(PLUS,
                             TEMP t100,
                             CONST -8)),
                           CONST -8)))),
                      ESEQ(
                       EXP(
                        CALL(
                         NAME printi,
                          CALL(
                           NAME check,
                            CONST 945,
                            MEM(
                             BINOP(PLUS,
                              TEMP t100,
                              CONST -8))),
                          MEM(
                           BINOP(PLUS,
                            MEM(
                             BINOP(PLUS,
                              TEMP t100,
                              CONST -8)),
                            CONST -8)))),
                       CALL(
                        NAME print,
                         NAME L17,
                         MEM(
                          BINOP(PLUS,
                           MEM(
                            BINOP(PLUS,
                             TEMP t100,
                             CONST -8)),
                           CONST -8))))))))))))))))))))))))) EXP(
  ESEQ(
   EXP(
    CONST 0),
   CALL(
    NAME try,
     TEMP t100)))