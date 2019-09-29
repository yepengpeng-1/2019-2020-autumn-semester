%filenames = "scanner"

 /*
  * Please don't modify the lines above.
  */

 /* You can add lex definitions here. */

%x COMMENT STR

%{
    union {
        int ival;
        std::string sval;
    } yylval;
    int charPos = 1;

    int commentsDepth = 0;

    bool isLastType = false;

    std::set<std::string> types;

    #define ADJUST (EM_tokPos = charPos, charPos += yyleng, isLastType = false)

%}

/* Lex Definitions */
digits                [0-9]+
identifier            [a-zA-Z_][a-zA-Z_0-9]*
string                \"(\\.|[^\\"])*\"
%%

/* Regular Expressions and Actions: */
{digits}+ {
    ADJUST;
    std::cout << "Parser::INT matched. Value: " << yytext << std::endl;
    yylval.ival = std::stoi(yytext);
    return Parser::INT;
}

{string} {
    ADJUST;
    std::cout << "Parser::STRING matched. Value: " << yytext << std::endl;
    yylval.sval = std::string(yytext);
    return Parser::STRING;
}

, {
    ADJUST;
    std::cout << "Parser::COMMA matched. Value: " << yytext << std::endl;
    return Parser::COMMA;
}

:= {
    ADJUST;
    std::cout << "Parser::ASSIGN matched. Value: " << yytext << std::endl;
    return Parser::ASSIGN;  
}

: {
    ADJUST;
    std::cout << "Parser::COLON matched. Value: " << yytext << std::endl;
    return Parser::COLON;
}

; {
    ADJUST;
    std::cout << "Parser::SEMICOLON matched. Value: " << yytext << std::endl;
    return Parser::SEMICOLON;
}

\{ {
    ADJUST;
    std::cout << "Parser::LPAREN matched. Value: " << yytext << std::endl;
    return Parser::LPAREN;
}

\} {
    ADJUST;
    std::cout << "Parser::RPAREN matched. Value: " << yytext << std::endl;
    return Parser::RPAREN;
}

\[ {
    ADJUST;
    std::cout << "Parser::LBRACK matched. Value: " << yytext << std::endl;
    return Parser::LBRACK;
}

\] {
    ADJUST;
    std::cout << "Parser::RBRACK matched. Value: " << yytext << std::endl;
    return Parser::RBRACK;
}

\( {
    ADJUST;
    std::cout << "Parser::LBRACE matched. Value: " << yytext << std::endl;
    return Parser::LBRACE;
}

\) {
    ADJUST;
    std::cout << "Parser::RBRACE matched. Value: " << yytext << std::endl;
    return Parser::RBRACE;
}

\. {
    ADJUST;
    std::cout << "Parser::DOT matched. Value: " << yytext << std::endl;
    return Parser::DOT;
}

\+ {
    ADJUST;
    std::cout << "Parser::PLUS matched. Value: " << yytext << std::endl;
    return Parser::PLUS;
}

\- {
    ADJUST;
    std::cout << "Parser::MINUS matched. Value: " << yytext << std::endl;
    return Parser::MINUS;
}

\* {
    ADJUST;
    std::cout << "Parser::TIMES matched. Value: " << yytext << std::endl;
    return Parser::TIMES;
}

\/ {
    ADJUST;
    std::cout << "Parser::DIVIDE matched. Value: " << yytext << std::endl;
    return Parser::DIVIDE;
}

= {
    ADJUST;
    std::cout << "Parser::EQ matched. Value: " << yytext << std::endl;
    return Parser::EQ;
}


\<\> {
    ADJUST;
    std::cout << "Parser::NEQ matched. Value: " << yytext << std::endl;
    return Parser::NEQ;
}

\<= {
    ADJUST;
    std::cout << "Parser::LE matched. Value: " << yytext << std::endl;
    return Parser::LE;
}

\< {
    ADJUST;
    std::cout << "Parser::LT matched. Value: " << yytext << std::endl;
    return Parser::LT;
}

\>= {
    ADJUST;
    std::cout << "Parser::GE matched. Value: " << yytext << std::endl;
    return Parser::GE;
}

\> {
    ADJUST;
    std::cout << "Parser::GT matched. Value: " << yytext << std::endl;
    return Parser::GT;
}


& {
    ADJUST;
    std::cout << "Parser::AND matched. Value: " << yytext << std::endl;
    return Parser::AND;
}

| {
    ADJUST;
    std::cout << "Parser::OR matched. Value: " << yytext << std::endl;
    return Parser::OR;
}

array {
    ADJUST;
    std::cout << "Parser::ARRAY matched. Value: " << yytext << std::endl;
    return Parser::ARRAY;
}

if {
    ADJUST;
    std::cout << "Parser::IF matched. Value: " << yytext << std::endl;
    return Parser::IF;
}

then {
    ADJUST;
    std::cout << "Parser::THEN matched. Value: " << yytext << std::endl;
    return Parser::THEN;
}

else {
    ADJUST;
    std::cout << "Parser::ELSE matched. Value: " << yytext << std::endl;
    return Parser::ELSE;
}

while {
    ADJUST;
    std::cout << "Parser::WHILE matched. Value: " << yytext << std::endl;
    return Parser::WHILE;
}

for {
    ADJUST;
    std::cout << "Parser::FOR matched. Value: " << yytext << std::endl;
    return Parser::FOR;
}


to {
    ADJUST;
    std::cout << "Parser::TO matched. Value: " << yytext << std::endl;
    return Parser::TO;
}

do {
    ADJUST;
    std::cout << "Parser::DO matched. Value: " << yytext << std::endl;
    return Parser::DO;
}

let {
    ADJUST;
    std::cout << "Parser::LET matched. Value: " << yytext << std::endl;
    return Parser::LET;
}

in {
    ADJUST;
    std::cout << "Parser::IN matched. Value: " << yytext << std::endl;
    return Parser::IN;
}

end {
    ADJUST;
    std::cout << "Parser::END matched. Value: " << yytext << std::endl;
    return Parser::END;
}

of {
    ADJUST;
    std::cout << "Parser::OF matched. Value: " << yytext << std::endl;
    return Parser::OF;
}

break {
    ADJUST;
    std::cout << "Parser::BREAK matched. Value: " << yytext << std::endl;
    return Parser::BREAK;
}

nil {
    ADJUST;
    std::cout << "Parser::NIL matched. Value: " << yytext << std::endl;
    return Parser::NIL;
}

function {
    ADJUST;
    std::cout << "Parser::FUNCTION matched. Value: " << yytext << std::endl;
    return Parser::FUNCTION;
}

var {
    ADJUST;
    std::cout << "Parser::VAR matched. Value: " << yytext << std::endl;
    return Parser::VAR;
}

type {
    ADJUST;
    isLastType = true;
    std::cout << "Parser::TYPE matched. Value: " << yytext << std::endl;
    return Parser::TYPE;
}

{identifier} {
    ADJUST;
    std::cout << "Parser::IDENTIFIER matched. Value: " << yytext << std::endl;
    yylval.sval = std::string(yytext);
    return Parser::ID;
}

 /*
  * TODO: Put your codes here (lab2).
  *
  * Below is examples, which you can wipe out
  * and write regular expressions and actions of your own.
  *
  * All the tokens:
  * x Parser::ID
  * x Parser::STRING
  * x Parser::INT
  * x Parser::COMMA
  * x Parser::COLON
  * x Parser::SEMICOLON
  * x Parser::LPAREN
  * x Parser::RPAREN
  * x Parser::LBRACK
  * x Parser::RBRACK
  * x Parser::LBRACE
  * x Parser::RBRACE
  * x Parser::DOT
  * x Parser::PLUS
  * x Parser::MINUS
  * x Parser::TIMES
  * x Parser::DIVIDE
  * x Parser::EQ
  * x Parser::NEQ
  * x Parser::LT
  * x Parser::LE
  * x Parser::GT
  * x Parser::GE
  * x Parser::AND
  * x Parser::OR
  * x Parser::ASSIGN
  * x Parser::ARRAY
  * x Parser::IF
  * x Parser::THEN
  * x Parser::ELSE
  * x Parser::WHILE
  * x Parser::FOR
  * x Parser::TO
  * x Parser::DO
  * x Parser::LET
  * x Parser::IN
  * x Parser::END
  * x Parser::OF
  * x Parser::BREAK
  * x Parser::NIL
  * x Parser::FUNCTION
  * x Parser::VAR
  * x Parser::TYPE
  */

 /*
  * skip white space chars.
  * space, tabs and LF
  */
[ \t]+ {adjust();}
\n {adjust(); errormsg.Newline();}

 /* reserved words */
"array" {adjust(); return Parser::ARRAY;}

. {adjust(); errormsg.Error(errormsg.tokPos, "illegal token");}

%%