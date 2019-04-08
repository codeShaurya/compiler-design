%{
	#include<stdio.h>
	#include<string.h>
	char* longest;
%}
longest [^ \n\t\r]*
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
	yylex();
	strrev(longest);
	printf("Longest string after reversing is : '%s'\n",longest);
	return 0;
}
