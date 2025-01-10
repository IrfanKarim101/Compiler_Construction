import java_cup.runtime.*;

%%

%unicode
%cup

nl          =  \n|\r|\r\n
intNumber   =  [0-9]+
floatNumber =  [0-9]+\.[0-9]+

%%

{floatNumber} { System.out.println("FLOAT:"+yytext()); return new Symbol(sym.NUMBER, Double.valueOf(yytext())); }
{intNumber}   { System.out.println("INT:"+yytext()); return new Symbol(sym.NUMBER, Integer.valueOf(yytext())); }

"+"           { System.out.println("PLUS"); return new Symbol(sym.PLUS); }
"-"           { System.out.println("MINUS"); return new Symbol(sym.MINUS); }
"*"           { System.out.println("MULTIPLY"); return new Symbol(sym.MULTIPLY); }
"/"           { System.out.println("DIVIDE"); return new Symbol(sym.DIVIDE); }

"("           { System.out.println("OPEN_BRACKET"); return new Symbol(sym.OBRACKET); }
")"           { System.out.println("CLOSE_BRACKET"); return new Symbol(sym.CBRACKET); }

{nl}|" "      { /* Ignore whitespace */ }

.             { System.out.println("Error:" + yytext()); }