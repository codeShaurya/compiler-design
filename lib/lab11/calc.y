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
line: E ln {printf("Ans=%d\n",$1);};
E:E plus E {$$=$1+$3;printf("plus\n");}
 |E minus E {$$=$1-$3;printf("minus\n");}
 |E mul E {$$=$1*$3;printf("mul\n");}
 |E divide E {$$=$1/$3;printf("div\n");}
 |op E cl  {$$=$2;}
 |minus E {$$=-$2;printf("minus\n");}
 |id {$$=atoi(yytext);printf("digit=%d\n",atoi(yytext));};
%%
void main(){
    yyparse();
    exit(0);
}
void yyerror(){
    printf("\ninvalid\n");
    exit(0);
}