package Code;
import static Code.Tokens.*;
%%
%class Lexer
%type Tokens
F=[a-zA-Z_]
S=[a-zA-Z0-9_]+
%{
    public String lexeme;
%}
%%
^{F}{S} {lexeme=yytext(); return Identificador;}
 . {return Error; }