%{
extern  yylval;
#include"y.tab.h"

%}
%%
[A-Za-z0-9]+ {yylval=*yytext; return NUM;}
\n      return 0;
.       return *yytext;
%%

int yywrap(){
    return 1;
}