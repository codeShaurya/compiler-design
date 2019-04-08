%{
	#include<stdio.h>
%}
%%
\/\/.* {};
\/\*(.\n)*.*\*\/ {};
%%
int main()
{
	yylex();
	return 0;
}
 
