%filenames = "scanner"

 /*
  * Please don't modify the lines above.
  */

 /* You can add lex definitions here. */

/* Lex Definitions */
digits                [0-9]+
identifier            [a-zA-Z_][a-zA-Z_0-9]*
string                ["]([^"]|\\.)*["]
%%


\/\* {
    adjust();
    // std::cout << "Parser::LCOMMENT matched. Value: " << matched() << std::endl;
    addCommentLayer();
}

\*\/ {
    if (isInComments()) {
        adjust();
        reduceCommentLayer();
    } else {
        accept(1);
        return Parser::TIMES;
    }
}

{digits}+ {
    if (adjust()) {
    // std::cout << "Parser::INT matched. Value: " << matched() << std::endl;
        return Parser::INT;
    }
}

{string} {
    if (adjust()) {
    std::string matchedStr = replaceEscapeCharacters(matched());
    // std::cout << "Parser::STRING matched. Value: " << matchedStr << std::endl;
    setMatched(matchedStr.substr(1, matchedStr.size() - 2));

    return Parser::STRING;
    }
}

, {
    if (adjust()) {
    // std::cout << "Parser::COMMA matched. Value: " << matched() << std::endl;
    return Parser::COMMA;
    }
}

:= {
    if (adjust()) {
    // std::cout << "Parser::ASSIGN matched. Value: " << matched() << std::endl;
    return Parser::ASSIGN;  
    }
}

: {
    if (adjust()) {
    // std::cout << "Parser::COLON matched. Value: " << matched() << std::endl;
    return Parser::COLON;
    }
}

; {
    if (adjust()) {
    // std::cout << "Parser::SEMICOLON matched. Value: " << matched() << std::endl;
    return Parser::SEMICOLON;
    }
}

\{ {
    if (adjust()) {
    // std::cout << "Parser::LBRACE matched. Value: " << matched() << std::endl;
    return Parser::LBRACE;
    }
}

\} {
    if (adjust()) {
    // std::cout << "Parser::RBRACE matched. Value: " << matched() << std::endl;
    return Parser::RBRACE;
    }
}

\[ {
    if (adjust()) {
    // std::cout << "Parser::LBRACK matched. Value: " << matched() << std::endl;
    return Parser::LBRACK;
    }
}

\] {
    if (adjust()) {
    // std::cout << "Parser::RBRACK matched. Value: " << matched() << std::endl;
    return Parser::RBRACK;
    }
}

\( {
    if (adjust()) {
    // std::cout << "Parser::LPAREN matched. Value: " << matched() << std::endl;
    return Parser::LPAREN;
    }
}

\) {
    if (adjust()) {
    // std::cout << "Parser::RPAREN matched. Value: " << matched() << std::endl;
    return Parser::RPAREN;
    }
}

\. {
    if (adjust()) {
    // std::cout << "Parser::DOT matched. Value: " << matched() << std::endl;
    return Parser::DOT;
    }
}

\+ {
    if (adjust()) {
    // std::cout << "Parser::PLUS matched. Value: " << matched() << std::endl;
    return Parser::PLUS;
    }
}

\- {
    if (adjust()) {
    // std::cout << "Parser::MINUS matched. Value: " << matched() << std::endl;
    return Parser::MINUS;
    }
}

\* {
    if (adjust()) {
    // std::cout << "Parser::TIMES matched. Value: " << matched() << std::endl;
    return Parser::TIMES;
    }
}

\/ {
    if (adjust()) {
    // std::cout << "Parser::DIVIDE matched. Value: " << matched() << std::endl;
    return Parser::DIVIDE;
    }
}

= {
    if (adjust()) {
    // std::cout << "Parser::EQ matched. Value: " << matched() << std::endl;
    return Parser::EQ;
    }
}


\<\> {
    if (adjust()) {
    // std::cout << "Parser::NEQ matched. Value: " << matched() << std::endl;
    return Parser::NEQ;
    }
}

\<= {
    if (adjust()) {
    // std::cout << "Parser::LE matched. Value: " << matched() << std::endl;
    return Parser::LE;
    }
}

\< {
    if (adjust()) {
    // std::cout << "Parser::LT matched. Value: " << matched() << std::endl;
    return Parser::LT;
    }
}

\>= {
    if (adjust()) {
    // std::cout << "Parser::GE matched. Value: " << matched() << std::endl;
    return Parser::GE;
    }
}

\> {
    if (adjust()) {
    // std::cout << "Parser::GT matched. Value: " << matched() << std::endl;
    return Parser::GT;
    }
}


& {
    if (adjust()) {
    // std::cout << "Parser::AND matched. Value: " << matched() << std::endl;
    return Parser::AND;
    }
}

\| {
    if (adjust()) {
    // std::cout << "Parser::OR matched. Value: " << matched() << std::endl;
    return Parser::OR;
    }
}

array {
    if (adjust()) {
    // std::cout << "Parser::ARRAY matched. Value: " << matched() << std::endl;
    return Parser::ARRAY;
    }
}

if {
    if (adjust()) {
    // std::cout << "Parser::IF matched. Value: " << matched() << std::endl;
    return Parser::IF;
    }
}

then {
    if (adjust()) {
    // std::cout << "Parser::THEN matched. Value: " << matched() << std::endl;
    return Parser::THEN;
    }
}

else {
    if (adjust()) {
    // std::cout << "Parser::ELSE matched. Value: " << matched() << std::endl;
    return Parser::ELSE;
    }
}

while {
    if (adjust()) {
    // std::cout << "Parser::WHILE matched. Value: " << matched() << std::endl;
    return Parser::WHILE;
    }
}

for {
    if (adjust()) {
    // std::cout << "Parser::FOR matched. Value: " << matched() << std::endl;
    return Parser::FOR;
    }
}


to {
    if (adjust()) {
    // std::cout << "Parser::TO matched. Value: " << matched() << std::endl;
    return Parser::TO;
    }
}

do {
    if (adjust()) {
    // std::cout << "Parser::DO matched. Value: " << matched() << std::endl;
    return Parser::DO;
    }
}

let {
    if (adjust()) {
    // std::cout << "Parser::LET matched. Value: " << matched() << std::endl;
    return Parser::LET;
    }
}

in {
    if (adjust()) {
    // std::cout << "Parser::IN matched. Value: " << matched() << std::endl;
    return Parser::IN;
    }
}

end {
    if (adjust()) {
    // std::cout << "Parser::END matched. Value: " << matched() << std::endl;
    return Parser::END;
    }
}

of {
    if (adjust()) {
    // std::cout << "Parser::OF matched. Value: " << matched() << std::endl;
    return Parser::OF;
    }
}

break {
    if (adjust()) {
    // std::cout << "Parser::BREAK matched. Value: " << matched() << std::endl;
    return Parser::BREAK;
    }
}

nil {
    if (adjust()) {
    // std::cout << "Parser::NIL matched. Value: " << matched() << std::endl;
    return Parser::NIL;
    }
}

function {
    if (adjust()) {
    // std::cout << "Parser::FUNCTION matched. Value: " << matched() << std::endl;
    return Parser::FUNCTION;
}
}

var {
    if (adjust()) {
    // std::cout << "Parser::VAR matched. Value: " << matched() << std::endl;
    return Parser::VAR;
    }
}

type {
    if (adjust()) {
    // std::cout << "Parser::TYPE matched. Value: " << matched() << std::endl;
    return Parser::TYPE;
    }
}

{identifier} {
    if (adjust()) {
    // std::cout << "Parser::IDENTIFIER matched. Value: " << matched() << std::endl;
    return Parser::ID;
    }
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
[ \t]+ { adjust(); }
\n { adjust();  errormsg.Newline();}

. { if (adjust()) {errormsg.Error(errormsg.tokPos, "illegal token"); }}

%%