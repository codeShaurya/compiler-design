%{
	#include<stdio.h>
	#include<string.h>

	char* longest;
%}
longest [a-zA-Z]{8,}
%%

{longest} {
	if(yyleng > strlen(longest))
	{
	longest=(char*)realloc(longest,yyleng+1);
	strcpy(longest,yytext);
	}
	}
        <*>.|\n
%%

char *strrev(char *str)
{
	char *p1, *p2;

	if (! str || ! *str)
	return str;
	for (p1 = str, p2 = str + strlen(str) - 1; p2 > p1; ++p1, --p2)
	{
	*p1 ^= *p2;
	*p2 ^= *p1;
	*p1 ^= *p2;
	}
	return str;
}

	int main()
	{
	longest=(char*)malloc(1);
	longest[0]='\0';
	FILE *fp;
	char file[10];
	printf("\nEnter the filename: ");
	scanf("%s", file);
	fp=fopen(file,"r");
	yyin=fp;
	yylex();
	printf("Longest string is '%s'\n",longest);
	strrev(longest);
	printf("After reverse of a string: '%s'\n",longest);
	free(longest);
	return 0;
	}
