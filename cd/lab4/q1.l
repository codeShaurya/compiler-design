%{
#include<stdio.h>
int k;
int i;
int o;
%}

%%
auto|double|int|struct|break|else|long|switch|case|enum|register|typedef|char|extern|return|union|continue|for|signed|void|do|if|static|while|default|goto|sizeof|volatile|const|float|short|unsigned { printf("keyword\n"); k++; }

[_a-zA-Z][_a-zA-Z0-9]* {printf("identifier\n"); i++; }

[+-/*=<>] {printf("operator\n"); o++;};
.* {printf("invalid string\n");}
%%

int main()
{
	yylex();
	printf("number of keyword : %i\n",k);
	printf("number of identifier : %i\n",i);
	printf("number of operator : %i\n",o);
	return 0;
}
