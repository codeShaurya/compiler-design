%{
#include "y.tab.h"
%}
%%
Naruto|DBZ|DeathNote {return E;}
is {return V;}
better|superior {return O; }
[ \t] {;}
\n {return 0;}
. {return yytext[0];}
%%
//yacc
%{
#include<stdio.h>
%}
%token E V O
%%
stmt: S
;
S: E S V O
|
;
%%
void main()
{
printf("enter \n");
yyparse();
printf("valid");
exit(0);
}
void yyerror()
{
printf("invalid ");
exit(0);
}