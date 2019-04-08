%{
    #include<stdio.h>
    int val=1;
%}
%%
[_a-zA-Z][0-9a-zA-Z]* {if(strlen(yytext)>8)val=0;return 0;}
.* {val=0;return 0;} 
%%
main(){
    yylex();
    printf(val?"\nVALID\n":"\nINVALID\n");
}
