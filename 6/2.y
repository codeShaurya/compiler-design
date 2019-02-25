%{
#include <stdio.h>
#include<ctype.h>
%}
%token DIGIT
%left '+'
%left '*'
%%
S:E'\n'{printf("S->E\n");}
E:E'+'E {printf("E->E+E\n");}|E'*'E {printf("E->E*E\n");}|'('E')'{$$=$2;}|DIGIT;
%%
int yylex()
{
 int c=getchar();
 if(isdigit(c))
 {
 yylval=c-'0';
 return DIGIT;
 }
 return c;
}
int yyerror()
{
 return 1;
}
int yywrap()
{
 return 1;
}
int main()
{
 yyparse();
 printf("\n");
 return 1;
}
