%{
#include<ctype.h>
#include<stdio.h>
#include<stdlib.h>
%}

%%

E:'a'E'b' {
     }
     |
     
  ;
%%
yylex(){
    char c=getchar();
    
    return c;
}
int yywrap(){
    {
        printf("\nAccepted\n");
        
    }
    return 1;
}
