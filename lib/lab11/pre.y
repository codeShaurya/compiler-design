%{
#include<ctype.h>
#include<stdio.h>
#include<stdlib.h>
%}
%union{
    struct s1 {char* txt;} tt;
}

%token id
%type <tt> id
%type <tt> E
%token plus
%token minus
%token mul
%token divide
%token op
%token cl
%token ln
%left plus minus
%left mul divide
%%
line: E ln {printf("%s\n",$1.txt);};
E:E plus E {char* yt;
            yt=(char*)malloc(sizeof(char)*(strlen($1.txt)+strlen($3.txt)+1));
            strcpy(yt,"+");
            strcat(yt,$1.txt);
            strcat(yt,$3.txt);
            $$.txt=yt;
}
 |E minus E {char * yt;
            yt=(char*)malloc(sizeof(char)*(strlen($1.txt)+strlen($3.txt)+1));
            strcpy(yt,"-");
            strcat(yt,$1.txt);
            strcat(yt,$3.txt);
            $$.txt=yt;
}
 |E mul E {char * yt;
            yt=(char*)malloc(sizeof(char)*(strlen($1.txt)+strlen($3.txt)+1));
            strcpy(yt,"*");
            strcat(yt,$1.txt);
            strcat(yt,$3.txt);
            $$.txt=yt;
}
 |E divide E {char * yt;
            yt=(char*)malloc(sizeof(char)*(strlen($1.txt)+strlen($3.txt)+1));
            strcpy(yt,"/");
            strcat(yt,$1.txt);
            strcat(yt,$3.txt);
            $$.txt=yt;
}
 |op E cl  {char *yt;
      yt=(char*)malloc(sizeof(char)*(strlen($2.txt)));
      strcpy(yt,$2.txt);
      $$.txt=yt;}
 |id {char *yt;
      yt=(char*)malloc(sizeof(char)*(strlen(yytext)));
      strcpy(yt,yytext);
      $$.txt=yt;
};
%%
void main(){
    yyparse();
    exit(0);
}
void yyerror(){
    printf("\ninvalid\n");
    exit(0);
}