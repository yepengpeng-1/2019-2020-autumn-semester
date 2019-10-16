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
  ARRAY IF THEN ELSE WHILE FOR TO DO LET IN END OF 
  BREAK NIL
  FUNCTION VAR TYPE

%type <exp> exp expseq
%type <explist> actuals  nonemptyactuals sequencing sequencing_exps
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

%left EQ NEQ LT LE GT GE
%left PLUS MINUS
%left TIMES DIVIDE
%left AND OR
 /*
  * Put your codes here (lab3).
  */

%%
program: exp {
    absyn_root = $1;
};

exp: INT {
    $$ = new A::IntExp(errormsg.tokPos, $1);
    std::cout << "[yacc] exp: INT. Actual Value: " << $1 << std::endl;
}
| STRING {
    $$ = new A::StringExp(errormsg.tokPos, $1);
    std::cout << "[yacc] exp: STRING. Actual Value: " << $1 << std::endl;
}
| exp EQ exp {
    $$ = new A::IntExp(errormsg.tokPos, ((A::IntExp *)$1)->i == ((A::IntExp *)$3)->i ? 1 : 0);
    std::cout << "[yacc] exp: exp EQ exp. Actual Value: " << ((A::IntExp *)$1)->i << " == " << ((A::IntExp *)$3)->i << std::endl;
}
| exp NEQ exp {
    $$ = new A::IntExp(errormsg.tokPos, ((A::IntExp *)$1)->i != ((A::IntExp *)$3)->i ? 1 : 0);
    std::cout << "[yacc] exp: exp NEQ exp. Actual Value: " << ((A::IntExp *)$1)->i << " != " << ((A::IntExp *)$3)->i << std::endl;
}
| exp LT exp {
    $$ = new A::IntExp(errormsg.tokPos, ((A::IntExp *)$1)->i < ((A::IntExp *)$3)->i ? 1 : 0);
    std::cout << "[yacc] exp: exp LT exp. Actual Value: " << ((A::IntExp *)$1)->i << " < " << ((A::IntExp *)$3)->i << std::endl;
}
| exp LE exp {
    $$ = new A::IntExp(errormsg.tokPos, ((A::IntExp *)$1)->i <= ((A::IntExp *)$3)->i ? 1 : 0);
    std::cout << "[yacc] exp: exp LE exp. Actual Value: " << ((A::IntExp *)$1)->i << " <= " << ((A::IntExp *)$3)->i << std::endl;
}
| exp GT exp {
    $$ = new A::IntExp(errormsg.tokPos, ((A::IntExp *)$1)->i > ((A::IntExp *)$3)->i ? 1 : 0);
    std::cout << "[yacc] exp: exp GT exp. Actual Value: " << ((A::IntExp *)$1)->i << " > " << ((A::IntExp *)$3)->i << std::endl;
}
| exp GE exp {
    $$ = new A::IntExp(errormsg.tokPos, ((A::IntExp *)$1)->i >= ((A::IntExp *)$3)->i ? 1 : 0);
    std::cout << "[yacc] exp: exp GE exp. Actual Value: " << ((A::IntExp *)$1)->i << " >= " << ((A::IntExp *)$3)->i << std::endl;
}
| exp TIMES exp {
    $$ = new A::IntExp(errormsg.tokPos, ((A::IntExp *)$1)->i * ((A::IntExp *)$3)->i);
    std::cout << "[yacc] exp: exp TIMES exp. Actual Value: " << ((A::IntExp *)$1)->i << " * " << ((A::IntExp *)$3)->i << std::endl;
}
| exp DIVIDE exp {
    $$ = new A::IntExp(errormsg.tokPos, ((A::IntExp *)$1)->i / ((A::IntExp *)$3)->i);
    std::cout << "[yacc] exp: exp DIVIDE exp. Actual Value: " << ((A::IntExp *)$1)->i << " / " << ((A::IntExp *)$3)->i << std::endl;
}
| exp PLUS exp {
    $$ = new A::IntExp(errormsg.tokPos, ((A::IntExp *)$1)->i + ((A::IntExp *)$3)->i);
    std::cout << "[yacc] exp: exp PLUS exp. Actual Value: " << ((A::IntExp *)$1)->i << " + " << ((A::IntExp *)$3)->i << std::endl;
}
| exp MINUS exp {
    $$ = new A::IntExp(errormsg.tokPos, ((A::IntExp *)$1)->i - ((A::IntExp *)$3)->i);
    std::cout << "[yacc] exp: exp MINUS exp. Actual Value: " << ((A::IntExp *)$1)->i << " - " << ((A::IntExp *)$3)->i << std::endl;
}
| exp AND exp {
    $$ = new A::IntExp(errormsg.tokPos, ((A::IntExp *)$1)->i != 0 && ((A::IntExp *)$3)->i != 0);
    std::cout << "[yacc] exp: exp AND exp. Actual Value: " << ((A::IntExp *)$1)->i << " && " << ((A::IntExp *)$3)->i << std::endl;
}
| exp OR exp {
    $$ = new A::IntExp(errormsg.tokPos, ((A::IntExp *)$1)->i != 0 || ((A::IntExp *)$3)->i != 0);
    std::cout << "[yacc] exp: exp OR exp. Actual Value: " << ((A::IntExp *)$1)->i << " || " << ((A::IntExp *)$3)->i << std::endl;
}
| var ASSIGN exp {
    $$ = new A::VoidExp(errormsg.tokPos);
    std::cout << "[yacc] exp: exp ASSIGN exp." << std::endl;
};


var: ID {
    std::cout << "[yacc] var: ID." << std::endl;
};

vardec: VAR ID ASSIGN exp {
    $$ = new A::VarDec(errormsg.tokPos, $2, nullptr, $4);
} | VAR ID COLON ID ASSIGN exp {
    $$ = new A::VarDec(errormsg.tokPos, $2, $4, $6);
};
