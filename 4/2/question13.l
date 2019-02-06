%{
#include<stdio.h>
#include<string.h>
char s[1000];
int l=0;
%}

op [-+*/]
letter [a-zA-Z]
digitt [0-9]
id ({letter}{digitt}{op})+
notid (op)

%%
[\t\n]+
("int")|("float")|("char")|("case")|("default")|("if")|("for")|("printf")|("scanf") {
int n=strlen(yytext);
int i;
for(i=0;i<n;i++)
{
       s[l]=yytext[i]-32;
       l++;
}
s[l++]=' ';
}

[a-zA-Z0-9+*/=";'<>?\|%~&.-]* {
int n=strlen(yytext);
int i;
for(i=0;i<n;i++)
{
       s[l]=yytext[i];
       l++;
}
s[l++]=' ';
}
%%

int main()
{
yylex();
return 0;
}
