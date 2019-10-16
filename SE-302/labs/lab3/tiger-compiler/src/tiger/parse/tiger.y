%filenames parser
%scanner tiger/lex/scanner.h
%debug
%baseclass-preinclude tiger/absyn/absyn.h
 /*
  * Please don't modify the lines above.
  */

%union {
  int ival;
  std::string* sval;
  S::Symbol *sym;
  A::Exp *exp;
  A::ExpList *explist;
  A::Var *var;
  A::DecList *declist;
  A::Dec *dec;
  A::EFieldList *efieldlist;
  A::EField *efield;
  A::NameAndTyList *tydeclist;
  A::NameAndTy *tydec;
  A::FieldList *fieldlist;
  A::Field *field;
  A::FunDecList *fundeclist;
  A::FunDec *fundec;
  A::Ty *ty;
  }

%token<sym> ID
%token <sval> STRING
%token <ival> INT

%token 
  COMMA COLON SEMICOLON LPAREN RPAREN LBRACK RBRACK 
  LBRACE RBRACE DOT 
//   PLUS MINUS TIMES DIVIDE 
//   EQ NEQ LT LE GT GE
//   AND OR 
  ASSIGN
  ARRAY IF /* THEN ELSE */ WHILE FOR TO DO LET IN END OF 
  BREAK NIL
  FUNCTION VAR TYPE

%type <exp> exp expseq
%type <explist> actuals nonemptyactuals sequencing sequencing_exps
%type <var>  lvalue one oneormore
%type <declist> decs decs_nonempty
%type <dec>  decs_nonempty_s vardec
%type <efieldlist> rec rec_nonempty
%type <efield> rec_one
%type <tydeclist> tydec
%type <tydec>  tydec_one
%type <fieldlist> tyfields tyfields_nonempty
%type <ty> ty
%type <fundeclist> fundec
%type <fundec> fundec_one

%start program
 /*
  * Put your codes here (lab3).
  */

%left EQ NEQ LT LE GT GE
%left PLUS MINUS
%left TIMES DIVIDE
%left AND OR

%right THEN ELSE

%%
program: exp {
    absyn_root = $1;
}
| dec {
    
};

exp: SEMICOLON {
    $$ = new A::VoidExp(errormsg.tokPos);
}
| INT {
    $$ = new A::IntExp(errormsg.tokPos, $1);
    std::cout << "[yacc] exp: INT. Actual Value: " << $1 << std::endl;
}
| STRING {
    $$ = new A::StringExp(errormsg.tokPos, $1);
    std::cout << "[yacc] exp: STRING. Actual Value: " << $1 << std::endl;
}
| exp EQ exp {
    $$ = new A::OpExp(errormsg.tokPos, A::EQ_OP, $1, $3);
    std::cout << "[yacc] exp: exp EQ exp." << std::endl;
}
| exp NEQ exp {
    $$ = new A::OpExp(errormsg.tokPos, A::NEQ_OP, $1, $3);
    std::cout << "[yacc] exp: exp NEQ exp." << std::endl;
}
| exp LT exp {
    $$ = new A::OpExp(errormsg.tokPos, A::LT_OP, $1, $3);
    std::cout << "[yacc] exp: exp LT exp. " << std::endl;
}
| exp LE exp {
    $$ = new A::OpExp(errormsg.tokPos, A::LE_OP, $1, $3);
    std::cout << "[yacc] exp: exp LE exp. " << std::endl;
}
| exp GT exp {
    $$ = new A::OpExp(errormsg.tokPos, A::GT_OP, $1, $3);
    std::cout << "[yacc] exp: exp GT exp. " << std::endl;
}
| exp GE exp {
    $$ = new A::OpExp(errormsg.tokPos, A::GE_OP, $1, $3);
    std::cout << "[yacc] exp: exp GE exp. " << std::endl;
}
| exp TIMES exp {
    $$ = new A::OpExp(errormsg.tokPos, A::TIMES_OP, $1, $3);
    std::cout << "[yacc] exp: exp TIMES exp. " << std::endl;
}
| exp DIVIDE exp {
    $$ = new A::OpExp(errormsg.tokPos, A::DIVIDE_OP, $1, $3);
    std::cout << "[yacc] exp: exp DIVIDE exp. " << std::endl;
}
| exp PLUS exp {
    $$ = new A::OpExp(errormsg.tokPos, A::PLUS_OP, $1, $3);
    std::cout << "[yacc] exp: exp PLUS exp. " << std::endl;
}
| exp MINUS exp {
    $$ = new A::OpExp(errormsg.tokPos, A::MINUS_OP, $1, $3);
    std::cout << "[yacc] exp: exp MINUS exp. " << std::endl;
}
| exp AND exp {
    $$ = new A::IfExp(errormsg.tokPos, $1, $3, $1);
    std::cout << "[yacc] exp: exp1 AND exp2 => IF exp1 THEN exp2 ELSE exp1." << std::endl;
}
| exp OR exp {
    $$ = new A::IfExp(errormsg.tokPos, $1, $1, $3);
    std::cout << "[yacc] exp: exp1 OR exp2 => IF exp1 THEN exp1 ELSE exp2." << std::endl;
}
| lvalue ASSIGN exp {
    $$ = new A::AssignExp(errormsg.tokPos, $1, $3);
    std::cout << "[yacc] exp: exp ASSIGN exp." << std::endl;
}
| IF exp THEN exp {
    $$ = new A::IfExp(errormsg.tokPos, $2, $4, new A::VoidExp(errormsg.tokPos));
    std::cout << "[yacc] exp: IF exp THEN exp." << std::endl;
}
| IF exp THEN exp ELSE exp {
    $$ = new A::IfExp(errormsg.tokPos, $2, $4, $6);
    std::cout << "[yacc] exp: IF exp THEN exp ELSE exp." << std::endl;
}
| BREAK {
    $$ = new A::BreakExp(errormsg.tokPos);
    std::cout << "[yacc] exp: BREAK." << std::endl;
}
| LET decs IN expseq END {
    $$ = new A::LetExp(errormsg.tokPos, $2, $4);
    std::cout << "[yacc] exp: LET." << std::endl;
}
| FOR var ASSIGN exp TO exp DO exp {
    $$ = new A::ForExp(errormsg.tokPos, $2.sym, $4, $6, $8);
    std::cout << "[yacc] exp: FOR." << std::endl;
}
| WHILE exp DO exp {
    $$ = new A::WhileExp(errormsg.tokPos, $2, $4);
    std::cout << "[yacc] exp: WHILE." << std::endl;
}
| NIL {
    $$ = new A::NilExp(errormsg.tokPos);
    std::cout << "[yacc] exp: NIL." << std::endl;
}
| ID LPAREN explist RPAREN {
    $$ = new A::CallExp(errormsg.tokPos, $2);
};

var: ID {
    $$.var = new A::SimpleVar(errormsg.tokPos, $1);
    std::cout << "[yacc] var: ID." << std::endl;
};


ty: ID {
    $$ = new A::NameTy(errormsg.tokPos, $1);
}
| LBRACE tyfields RBRACE {
    $$ = new A::RecordTy(errormsg.tokPos, $2);
}
| ARRAY OF ID {
    $$ = new A::ArrayTy(errormsg.tokPos, $3);
};

tyfields_nonempty: ID COLON ty COMMA tyfields {
    $$ = new A::FieldList(new A::Field(errormsg.tokPos, $1, ((A::NameTy *)$3)->name), nullptr);
}
| ID COLON ID {
    $$ = new A::FieldList(new A::Field(errormsg.tokPos, $1, $3), nullptr);
};

tyfields: ID COLON ID COMMA tyfields {
    $$ = new A::FieldList(new A::Field(errormsg.tokPos, $1, $3), $5);
}
| ID COLON ID {
    $$ = new A::FieldList(new A::Field(errormsg.tokPos, $1, $3), nullptr);
}
| {
    $$ = new A::FieldList(nullptr, nullptr);
};


dec: vardec {
    $$.dec = $1;
}
| tydec {
    $$.tydeclist = $1;
}
| fundec {
    $$.fundeclist = $1;
};

decs: declist {
    $$ = $1.declist;
};

declist: declist dec {
    $$.declist = new A::DecList($1.dec, $2.declist);
} | dec {
    $$.declist = new A::DecList($1.dec, nullptr);
};

lvalue: ID {
    $$ = new A::SimpleVar(errormsg.tokPos, $1);
} | var DOT ID {
    $$ = new A::FieldVar(errormsg.tokPos, $1.var, $3);
} | var LBRACK exp RBRACK {
    $$ = new A::SubscriptVar(errormsg.tokPos, $1.var, $3);
};

fundec_one: FUNCTION ID LPAREN tyfields RPAREN ASSIGN exp {
    $$ = new A::FunDec(errormsg.tokPos, $2, $4, nullptr, $7);
    std::cout << "[yacc] fundec: FUNCTION ID LPAREN tyfields RPAREN ASSIGN exp." << std::endl;
}
| FUNCTION ID LPAREN tyfields RPAREN COLON ID ASSIGN exp {
    $$ = new A::FunDec(errormsg.tokPos, $2, $4, $7, $9);
    std::cout << "[yacc] fundec: FUNCTION ID LPAREN tyfields RPAREN ASSIGN exp." << std::endl;
};

fundeclist: fundeclist fundec_one {
    $$.fundeclist = new A::FunDecList($2, $1.fundeclist);
    std::cout << "[yacc] fundeclist: fundec FUNCTION ID LPAREN tyfields RPAREN ASSIGN exp." << std::endl;
};

fundec: fundeclist {
    $$ = $1.fundeclist;
}
| fundec_one {
    $$ = new A::FunDecList($1, nullptr);
};

vardec: VAR ID ASSIGN exp {
    $$ = new A::VarDec(errormsg.tokPos, $2, nullptr, $4);
} 
| VAR ID COLON ID ASSIGN exp {
    $$ = new A::VarDec(errormsg.tokPos, $2, $4, $6);
};

tydec_one: TYPE ID EQ ty {
    $$ = new A::NameAndTy($2, $4);
};

tydeclist: tydeclist tydec_one {
    $$.tydeclist = new A::NameAndTyList($2, $1.tydeclist);
};

tydec: LBRACE tydeclist RBRACE {
    $$ = $1.tydeclist;
} | tydec_one {
    $$ = new A::NameAndTyList($1, nullptr);
};