%%
%class Lexer
%standalone
%unicode

NUMBER = [0-9]+(\.[0-9]+)?
OPERATOR = [+\-*/]
PAREN = [()]
WHITESPACE = [ \t\r\n]+

%%

{NUMBER} { System.out.printf("NUMBER=%s at Line=%d and Column=%d%n", yytext(), yyline, yycolumn); }
{OPERATOR} { System.out.printf("OPERATOR=%s at Line=%d and Column=%d%n", yytext(), yyline, yycolumn); }
{PAREN} { System.out.printf("PAREN=%s at Line=%d and Column=%d%n", yytext(), yyline, yycolumn); }
{WHITESPACE} { /* Ignore whitespace */ }

. { /* Ignore other characters */ }