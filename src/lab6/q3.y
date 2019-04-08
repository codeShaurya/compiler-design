%{
#include<ctype.h>
#include<stdio.h>
%}
%%
line: E'\n' {printf("Accepted\n");};
E:'2'E'2' {
    printf("Reduce using E->2E2\n");
     }
 |'3'E'3' {
    printf("\nReduce using E->3E3\n");
     }
 |'4' {
    printf("\nReduce using E->4\n");
     }
 ;

%%
yylex(){
    char c=getchar();
    if(isalnum(c))
        printf("\nShift %c\n",c);
    return c;
}
