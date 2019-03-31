%{
#include<ctype.h>
%}
%token DIGIT
%left '+' '-'
%left '*' '/'
%%
E:E E'+'{
     printf("\nADD=%d %d\n",$1,$2);
     $$=$1+$2;printf("\nRESULT=%d\n",$$);
     }
 |E E'*'{
     printf("\nMULTIPLY=%d %d\n",$1,$2);
     $$=$1*$2;printf("\nRESULT=%d\n",$$);}
 |E E'-'{
     printf("\nSUBTRACT=%d %d\n",$1,$2);
     $$=$1-$2;printf("\nRESULT=%d\n",$$);}
 |E E'/'{
     printf("\nDIVIDE=%d %d\n",$1,$2);
     $$=$1/$2;printf("\nRESULT=%d\n",$$);}
 |DIGIT{
    printf("\nDIGIT=%d\n",$1);
    $$=$1;
    }
 
 ;

%%
yylex(){
    char c=getchar();
    if(isdigit(c)){
        yylval=c-'0';
        return DIGIT;
    }
    return c;
}
