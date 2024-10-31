import java_cup.runtime.*;

%%
%class TokenGen
%unicode
%line
%column



TYPE = void|byte|int|char|float|double
ID = [A-Za-z]([A-Za-z_]|[0-9])*
STRING = \"[^\"]* \" 
NUMBER = [0-9]+
POINT = [0-9]+\.[0-9]+
COMMENT = \/\/[^\n]*
LP= "("
RP=")"
IF = if
ELSE = else
ELSEIF = elseif
FOR = for
WHILE = while
DO = do
SWITCH = switch
CONTINUE = continue
BREAK = break
EQUALITY = "==" | "!=" | "<" | ">" | "<=" | ">=" 
ALGEBRA = "+" | "-" | "*" | "/"



%%


{STRING}     { System.out.printf("String=%s at Line=%d and Column=%d",yytext(),yyline,yycolumn); return new Symbol(sym.STRING);}
{NUMBER}     {  System.out.printf("Number=%s at Line=%d and Column=%d",yytext(),yyline,yycolumn); return new Symbol(sym.NUMBER);}
{POINT}      {  System.out.printf("Decimal Number=%s at Line=%d and Column=%d",yytext(),yyline,yycolumn); return new Symbol(sym.POINT);}
{COMMENT}    {  System.out.printf("Comments=%s at Line=%d and Column=%d",yytext(),yyline,yycolumn); return new Symbol(sym.ID);}  
{TYPE}       {  System.out.printf("Datatypes=%s at Line=%d and Column=%d",yytext(),yyline,yycolumn); return new Symbol(sym.TYPE);} 
{IF}         {  System.out.printf("IF=%s at Line=%d and Column=%d",yytext(),yyline,yycolumn); return new Symbol(sym.IF);}
{ELSE}       {  System.out.printf("Else=%s at Line=%d and Column=%d",yytext(),yyline,yycolumn); return new Symbol(sym.ELSE);}
{ELSEIF}     {  System.out.printf("ElseIF=%s at Line=%d and Column=%d",yytext(),yyline,yycolumn); return new Symbol(sym.ELSEIF);}
{FOR}        {  System.out.printf("FOR=%s at Line=%d and Column=%d",yytext(),yyline,yycolumn); return new Symbol(sym.FOR);}
{WHILE}      {  System.out.printf("WHILE=%s at Line=%d and Column=%d",yytext(),yyline,yycolumn); return new Symbol(sym.WHILE);}
{DO}         {  System.out.printf("DO=%s at Line=%d and Column=%d",yytext(),yyline,yycolumn); return new Symbol(sym.DO);}
{SWITCH}     {  System.out.printf("SWITCH=%s at Line=%d and Column=%d",yytext(),yyline,yycolumn); return new Symbol(sym.SWITCH);}
{BREAK}      {  System.out.printf("Break=%s at Line=%d and Column=%d",yytext(),yyline,yycolumn); return new Symbol(sym.BREAK);}
{CONTINUE}   {  System.out.printf("Continue=%s at Line=%d and Column=%d",yytext(),yyline,yycolumn); return new Symbol(sym.ID);}
{ID}         {  System.out.printf("Variable name=%s at Line=%d and Column=%d",yytext(),yyline,yycolumn); return new Symbol(sym.ID);}
{ALGEBRA}    { System.out.printf("Algebra=%s at Line=%d and Column=%d\n", yytext(), yyline, yycolumn); return new Symbol(sym.ALGEBRA);}
{EQUALITY}   { System.out.printf("EQUALITY=%s at Line=%d and Column=%d\n", yytext(), yyline, yycolumn); return new Symbol(sym.EQUALITY);}
{LP}   { System.out.printf("EQUALITY=%s at Line=%d and Column=%d\n", yytext(), yyline, yycolumn); return new Symbol(sym.LP);}
{RP}   { System.out.printf("EQUALITY=%s at Line=%d and Column=%d\n", yytext(), yyline, yycolumn); return new Symbol(sym.RP);}


.* {}