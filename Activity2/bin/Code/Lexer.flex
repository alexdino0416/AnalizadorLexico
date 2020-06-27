package Code;
import static Code.Tokens.*;
%%
%class Lexer
%type Tokens
S=[a-z]+
%{
    public String lexeme;
%}
%%
^(a){S}(a) |
^(b){S}(b) {lexeme=yytext(); return Identificador;}
 . {return Error;}