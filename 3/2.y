%{
int ideintifier_count=0;
%}

%%
\+ {printf("Operator is valid !");}
\- {printf("Operator is valid !");}
\* {printf("Operator is valid !");}
\/ {printf("Operator is valid !");}
\% {printf("Operator is valid !");}
\++ {printf("Operator is valid !");}
\-- {printf("Operator is valid !");}
\== {printf("Operator is valid !");}
\!= {printf("Operator is valid !");}
\> {printf("Operator is valid !");}
\< {printf("Operator is valid !");}
\>= {printf("Operator is valid !");}
\& {printf("Operator is valid !");}
\<= {printf("Operator is valid !");}
\&& {printf("Operator is valid !");}
\| {printf("Operator is valid !");}
\^ {printf("Operator is valid !");}
\~ {printf("Operator is valid !");}
\>> {printf("Operator is valid !");}
\<< {printf("Operator is valid !");}
\= {printf("Operator is valid !");}
\+= {printf("Operator is valid !");}
\-= {printf("Operator is valid !");}
\*= {printf("Operator is valid !");}
\sizeof {printf("Operator is valid !");}
%%

int yywrap(){}
int main(){

char s[100];
printf("Start entering keyword and press enter :");
yylex();
return 0;
}