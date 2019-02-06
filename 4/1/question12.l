%{
#include<stdio.h>
int Count=0;
int keyCount=0;
int opCount=0;
%}
op [-+*/]
letters [a-zA-Z]
digitt [0-9]
id {letters}*|({letters}{digitt})+
notid ({op})
%%
[\t\n]+
{notid} {printf("%s is an operator\n", yytext); opCount++;}
("int")|("float")|("char")|("case")|("default")|("if")|("for")|("printf")|("scanf") {printf("%s is a keyword\n", yytext); keyCount++;}
{id} {printf("%s is an identifier\n", yytext); Count++;}
%%
int main()
{
FILE *fp;
char file[10];
printf("\nEnter the filename: ");
scanf("%s", file);
fp=fopen(file,"r");
yyin=fp;
yylex();
printf("identifiers are: %d\n", Count);
printf("operators are: %d\n", opCount);
printf("keywords are: %d\n", keyCount);
return 0;
}
