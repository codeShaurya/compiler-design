%{
#include<ctype.h>
#include<stdio.h>
#include<stdlib.h>
%}
%token id
%token plus
%token minus
%token mul
%token divide
%token op
%token cl
%token ln
%left plus minus
%left mul divide
%%
line: E ln {;};
E:E plus E {$$=0;printf("+");}
 |E minus E {$$=0;printf("-");}
 |E mul E {$$=0;printf("*");}
 |E divide E {$$=0;printf("/");}
 |op E cl  {$$=0;}
 |id {$$=0;printf("%s ",yytext);};
%%
void main(){
    yyparse();
    exit(0);
}
void yyerror(){
    printf("\ninvalid\n");
    exit(0);
}