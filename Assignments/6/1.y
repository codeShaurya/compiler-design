%{
#include<stdio.h>
#include<ctype.h>
%}
%token DIGIT
%left '+'
%left '*'
%%
S:E'\n'{printf("\n%d",$1);}
E:E'+'E {$$=$1+$3;}|E'*'E{$$=$1*$3;}|'('E')'{$$=$2;}|DIGIT;
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
