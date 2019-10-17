%filenames parser
%scanner tiger/lex/scanner.h
// %debug
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
  ARRAY /* IF THEN ELSE */ WHILE FOR TO DO LET IN END OF 
  BREAK NIL
  FUNCTION VAR TYPE

%type <exp> exp expseq subscriber
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

%right IF THEN ELSE
%left AND OR
%right EQ NEQ LT LE GT GE
%left PLUS MINUS
%left TIMES DIVIDE


%%
program: exp {
    absyn_root = $1;
}
| dec {
    
};


lvalue: var {
    $$ = (A::SimpleVar *)$1.var;
    // std::cout << "lvalue: var, its actual content is " << ((A::SimpleVar *)$1.var)->sym->Name() << std::endl;
} | lvalue DOT ID {
    // std::cout << "var DOT ID => lvalue! " << std::endl;
    $$ = new A::FieldVar(errormsg.tokPos, $1, $3);
} | lvalue subscriber {
    // std::cout << "var subscriber => lvalue! " << std::endl;
    $$ = new A::SubscriptVar(errormsg.tokPos, $1, $2);
};

exp: lvalue {
    $$ = new A::VarExp(errormsg.tokPos, $1);
}
| SEMICOLON {
    $$ = new A::VoidExp(errormsg.tokPos);
}
| LPAREN expseq RPAREN {
    $$ = new A::SeqExp(errormsg.tokPos, ((A::SeqExp *)$2)->seq);
}
| LPAREN RPAREN {
    $$ = new A::VoidExp(errormsg.tokPos);
}
| INT {
    $$ = new A::IntExp(errormsg.tokPos, $1);
    // std::cout << "[yacc] exp: INT. Actual Value: " << $1 << std::endl;
}
| STRING {
    $$ = new A::StringExp(errormsg.tokPos, $1);
    // std::cout << "[yacc] exp: STRING. Actual Value: " << $1 << std::endl;
}
| exp EQ exp {
    $$ = new A::OpExp(errormsg.tokPos, A::EQ_OP, $1, $3);
    // std::cout << "[yacc] exp: exp EQ exp." << std::endl;
}
| exp NEQ exp {
    $$ = new A::OpExp(errormsg.tokPos, A::NEQ_OP, $1, $3);
    // std::cout << "[yacc] exp: exp NEQ exp." << std::endl;
}
| exp LT exp {
    $$ = new A::OpExp(errormsg.tokPos, A::LT_OP, $1, $3);
    // std::cout << "[yacc] exp: exp LT exp. " << std::endl;
}
| exp LE exp {
    $$ = new A::OpExp(errormsg.tokPos, A::LE_OP, $1, $3);
    // std::cout << "[yacc] exp: exp LE exp. " << std::endl;
}
| exp GT exp {
    $$ = new A::OpExp(errormsg.tokPos, A::GT_OP, $1, $3);
    // std::cout << "[yacc] exp: exp GT exp. " << std::endl;
}
| exp GE exp {
    $$ = new A::OpExp(errormsg.tokPos, A::GE_OP, $1, $3);
    // std::cout << "[yacc] exp: exp GE exp. " << std::endl;
}
| exp TIMES exp {
    $$ = new A::OpExp(errormsg.tokPos, A::TIMES_OP, $1, $3);
    // std::cout << "[yacc] exp: exp TIMES exp. " << std::endl;
}
| exp DIVIDE exp {
    $$ = new A::OpExp(errormsg.tokPos, A::DIVIDE_OP, $1, $3);
    // std::cout << "[yacc] exp: exp DIVIDE exp. " << std::endl;
}
| exp PLUS exp {
    $$ = new A::OpExp(errormsg.tokPos, A::PLUS_OP, $1, $3);
    // std::cout << "[yacc] exp: exp PLUS exp. " << std::endl;
}
| exp MINUS exp {
    $$ = new A::OpExp(errormsg.tokPos, A::MINUS_OP, $1, $3);
    // std::cout << "[yacc] exp: exp MINUS exp. " << std::endl;
}
| MINUS exp {
    $$ = new A::OpExp(errormsg.tokPos, A::MINUS_OP, new A::IntExp(errormsg.tokPos, 0), $2);
    // std::cout << "[yacc] exp: nobody MINUS exp. " << std::endl;
}
| exp AND exp {
    $$ = new A::IfExp(errormsg.tokPos, $1, $3, $1);
    // std::cout << "[yacc] exp: exp1 AND exp2 => IF exp1 THEN exp2 ELSE exp1." << std::endl;
}
| exp OR exp {
    $$ = new A::IfExp(errormsg.tokPos, $1, $1, $3);
    // std::cout << "[yacc] exp: exp1 OR exp2 => IF exp1 THEN exp1 ELSE exp2." << std::endl;
}
| lvalue ASSIGN exp {
    $$ = new A::AssignExp(errormsg.tokPos, $1, $3);
    // std::cout << "[yacc] exp: exp ASSIGN exp." << std::endl;
}
| var ASSIGN exp {
    $$ = new A::AssignExp(errormsg.tokPos, (A::SimpleVar *)$1.var, $3);
    // std::cout << "[yacc] exp: var ASSIGN exp." << std::endl;
}
| ID subscriber ASSIGN exp {
    auto lvalue = new A::SubscriptVar(errormsg.tokPos, new A::SimpleVar(errormsg.tokPos, $1), $2);
    $$ = new A::AssignExp(errormsg.tokPos, lvalue, $4);
    // std::cout << "[yacc] exp: ID subscriber ASSIGN exp." << std::endl;
}
| ID subscriber DOT ID ASSIGN exp {
    auto lvalue = new A::FieldVar(errormsg.tokPos, new A::SubscriptVar(errormsg.tokPos, new A::SimpleVar(errormsg.tokPos, $1), $2), $4);
    $$ = new A::AssignExp(errormsg.tokPos, lvalue, $6);
    // std::cout << "[yacc] exp: ID subscriber DOT ID ASSIGN exp." << std::endl;
}
| IF exp THEN exp {
    $$ = new A::IfExp(errormsg.tokPos, $2, $4, new A::VoidExp(errormsg.tokPos));
    // std::cout << "[yacc] exp: IF exp THEN exp." << std::endl;
}
| IF exp THEN exp ELSE exp {
    $$ = new A::IfExp(errormsg.tokPos, $2, $4, $6);
    // std::cout << "[yacc] exp: IF exp THEN exp ELSE exp." << std::endl;
}
| BREAK {
    $$ = new A::BreakExp(errormsg.tokPos);
    // std::cout << "[yacc] exp: BREAK." << std::endl;
}
| LET decs IN expseq END {
    $$ = new A::LetExp(errormsg.tokPos, $2, $4);
    // std::cout << "[yacc] exp: LET." << std::endl;
}
| FOR var ASSIGN exp TO exp DO exp {
    $$ = new A::ForExp(errormsg.tokPos, $2.sym, $4, $6, $8);
    // std::cout << "[yacc] exp: FOR." << std::endl;
}
| WHILE exp DO exp {
    $$ = new A::WhileExp(errormsg.tokPos, $2, $4);
    // std::cout << "[yacc] exp: WHILE." << std::endl;
}
| NIL {
    $$ = new A::NilExp(errormsg.tokPos);
    // std::cout << "[yacc] exp: NIL." << std::endl;
}
| ID LPAREN explist RPAREN {
    $$ = new A::CallExp(errormsg.tokPos, $1, $3.explist);
    // std::cout << "[yacc] exp: CALLEXP." << std::endl;
}
| var LPAREN explist RPAREN {
    $$ = new A::CallExp(errormsg.tokPos, $1.sym, $3.explist);
    // std::cout << "[yacc] exp: CALLEXP." << std::endl;
}
| ID LBRACE efieldlist RBRACE {
    $$ = new A::RecordExp(errormsg.tokPos, $1, $3.efieldlist);
    // std::cout << "[yacc] exp: RecordExp." << std::endl;
}
| ID subscriber OF exp {
    $$ = new A::ArrayExp(errormsg.tokPos, $1, $2, $4);
    // std::cout << "[yacc] exp: ArrayExp." << std::endl;
}
// | lvalue subscriber {
//     $$ = new A::VarExp(errormsg.tokPos, new A::SubscriptVar(errormsg.tokPos, $1, $2));
//     // std::cout << "[yacc] exp: Subscript." << std::endl;
// }
| ID subscriber {
    $$ = new A::VarExp(errormsg.tokPos, new A::SubscriptVar(errormsg.tokPos, new A::SimpleVar(errormsg.tokPos, $1), $2));
    // std::cout << "[yacc] exp: Subscript." << std::endl;
}
;


subscriber: LBRACK exp RBRACK {
    // std::cout << "gotta subscriber! " << std::endl;
    $$ = $2;
};

explist: exp COMMA explist {
    $$.explist = new A::ExpList($1, $3.explist);
}
| exp {
    $$.explist = new A::ExpList($1, nullptr);
}
| {
    $$.explist = nullptr;
};

expseq: exp SEMICOLON expseq {
    $$ = new A::SeqExp(errormsg.tokPos, new A::ExpList($1, ((A::SeqExp *)$3)->seq));
}
| exp {
    $$ = new A::SeqExp(errormsg.tokPos, new A::ExpList($1, nullptr));
};


var: ID {
    $$.var = new A::SimpleVar(errormsg.tokPos, $1);
    // std::cout << "[yacc] var: ID." << std::endl;
};


ty: LBRACE tyfields RBRACE {
    $$ = new A::RecordTy(errormsg.tokPos, $2);
}
| ARRAY OF ID {
    $$ = new A::ArrayTy(errormsg.tokPos, $3);
}
| ID {
    $$ = new A::NameTy(errormsg.tokPos, $1);
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
    $$ = nullptr;
};

efield: ID EQ exp {
    $$.efield = new A::EField($1, $3);
};

efieldlist: efield COMMA efieldlist {
    $$.efieldlist = new A::EFieldList($1.efield, $3.efieldlist);
}
| efield {
    $$.efieldlist = new A::EFieldList($1.efield, nullptr);
}
| {
    $$.efieldlist = nullptr;
};

dec: vardec {
    $$.dec = $1;
}
| tydec {
    $$.dec = new A::TypeDec(errormsg.tokPos, $1);
}
| fundec {
    $$.dec = new A::FunctionDec(errormsg.tokPos, $1);
};

decs: declist {
    $$ = $1.declist;
};

declist: dec declist {
    $$.declist = new A::DecList($1.dec, $2.declist);
}
| dec {
    $$.declist = new A::DecList($1.dec, nullptr);
};

fundec_one: FUNCTION ID LPAREN tyfields RPAREN EQ exp {
    $$ = new A::FunDec(errormsg.tokPos, $2, $4, nullptr, $7);
    // std::cout << "[yacc] fundec: FUNCTION ID LPAREN tyfields RPAREN ASSIGN exp." << std::endl;
}
| FUNCTION ID LPAREN tyfields RPAREN COLON ID EQ exp {
    $$ = new A::FunDec(errormsg.tokPos, $2, $4, $7, $9);
    // std::cout << "[yacc] fundec: FUNCTION ID LPAREN tyfields RPAREN ASSIGN exp." << std::endl;
};

fundeclist: fundeclist fundec_one {
    $$.fundeclist = new A::FunDecList($2, $1.fundeclist);
    // std::cout << "[yacc] fundeclist: fundec FUNCTION ID LPAREN tyfields RPAREN ASSIGN exp." << std::endl;
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