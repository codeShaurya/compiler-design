%{
int ideintifier_count=0;
%}

%%
([a-zA-Z][0-9])+|[a-zA-Z]* {printf("Valid Identifier\n");}
^[0-9]+ {printf("Not a Identifier\n");}
.|\n;
%%

int yywrap(){}
int main(){

char s[100];
printf("Start entering Identifier and press enter :");
yylex();
return 0;
}