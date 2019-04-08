%{
#include<stdio.h>
#include<string.h>
char buf[10];
%}

%union
{
  char *name;
}
%token<name>NUM ID
%type<name>E 
%left'+''-'
%left'*''/'
%nonassoc UMINUS
%%
S:E  {printf("\n%s",$1);}
;
E:E'*'E {buf[0]='\0';strcpy($$,strcat(strcpy(buf,"*"),strcat($1,$3)));}
|E'/'E {buf[0]='\0';strcpy($$,strcat(strcpy(buf,"/"),strcat($1,$3)));}
|E'+'E {buf[0]='\0';strcpy($$,strcat(strcpy(buf,"+"),strcat($1,$3)));}
|E'-'E {buf[0]='\0';strcpy($$,strcat(strcpy(buf,"-"),strcat($1,$3)));}
|ID
|NUM
|'('E')'{strcpy($$,$2);}
;
%%
main()
{
yyparse();
}
int yyerror(char *s) {fprintf(stderr,"%s\n",s);}