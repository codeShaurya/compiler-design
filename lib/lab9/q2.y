%{
#include<ctype.h>
#include<stdio.h>
#include<stdlib.h>
%}
%token SU O V HV
%%
S: SU V O{
        printf("\nSentence Accepted\nForm=Subject Verb Object\n");
    }
    |
    SU HV V O{
        printf("\nSentence Accepted\nForm=Subject HelpingVerb Verb Object\n");
    }
    |
    SU HV O{
        printf("\nSentence Accepted\nForm=Subject HelpingVerb Object\n");
    }
    |
    SU V{
        printf("\nSentence Accepted\nForm=Subject Verb\n");
    }
%%
void main(){
    yyparse();
    exit(0);
}
void yyerror(){
    printf("\ninvalid\n");
    exit(0);
}