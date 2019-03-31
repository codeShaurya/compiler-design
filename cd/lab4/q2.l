%{
#include<stdio.h>
#include<string.h>
#include<stdlib.h>
int i;
%}
keyword auto|break|case|char|const|continue|default|do|double|else|enum|extern|float|for|goto|if|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while
%%

{keyword} {
printf("Valid keyword. Upper case is ");
for(i=0;i<yyleng;i++)
printf("%c",toupper(yytext[i]));
printf("\n");
}
[ \n\r] {}
.* {printf("Invalid keyword\n");}
%%

int main()
{
    yylex();
}


