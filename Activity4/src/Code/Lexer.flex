package Code;
import static Code.Tokens.*;
%%
%class Lexer
%type Tokens
%caseless
W=(integer|char|real)
%{
    public String lexeme;
%}
%%
{W} {lexeme=yytext(); return Identificador;}
 . {return Error;}