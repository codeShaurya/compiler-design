%{
#include<stdio.h>
int i;
%}
keyword auto|break|case|char|const|continue|printf|default|do|double|else|enum|extern|float|for|goto|if|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while
%%

{keyword} {
 for(i=0;i<yyleng;i++){
 printf("%c",yytext[i] - ('a' - 'A'));
 }
  }
%%

int main()
{
yyin=fopen("sample.c","r");
yylex();
yywrap();
return 1;
}
