%{
	#include<stdio.h>
	int ch=0,ln=0;
%}
%%
. ch++;
\n {ln++;ch++;}
%%
int main(){
	yylex();
	printf("Number of characters=%d\nNumber of lines=%d\n",ch,ln);
	return 0;
}
