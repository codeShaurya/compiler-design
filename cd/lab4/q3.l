%{
    #include<stdio.h>
    int c=0,v=0;
%}
%%
[aAeEiIoOuU] {v++;}
[a-zA-z] {c++;}
%%
main(){
    yylex();
    printf("\n constants=%d\nVowels=%d\n",c,v);
}
