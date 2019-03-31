%{
    #include<stdio.h>
    int c=0;
%}
%%
[a-zA-z1-9]+ {if(strlen(yytext)>=2){int n=strlen(yytext); if(yytext[n-1]=='b'&&yytext[n-2]=='a')c++;}}
\n {}
%%
int main(){
    yylex();
    printf("\nNumber of matches=%d\n",c);
    return 0;
}
