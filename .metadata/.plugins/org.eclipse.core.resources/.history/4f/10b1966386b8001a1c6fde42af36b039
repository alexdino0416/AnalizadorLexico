package Code;
import static Code.Tokens.*;
%%
%class Lexer
%type Tokens
S=[0-9]{5}
%{
    public String lexeme;
%}
%%
(10){S} {lexeme=yytext(); return Identificador;}
 . {return Error;}