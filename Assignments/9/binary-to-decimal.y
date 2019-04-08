%{
#include<ctype.h>
#include<stdio.h>
int fl=0;
%}
%%
E:E'1' {
     fl=fl*2+1;
     }
     |
    E'0' {
        fl=fl*2;
     }
    |
     {
         fl=0;
     }
  ;

%%

yyerror(){}

yylex(){
    char c=getchar();
    if(c==-1)
        printf("\n%d\n",fl);
    return c;
}

main(){
    yyparse();
    printf("%d", fl);
}