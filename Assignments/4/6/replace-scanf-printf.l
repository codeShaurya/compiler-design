%{
int pc=0,sc=0;
%}

%%
printf fprintf(yyout,"writef");pc++;
scanf fprintf(yyout,"readf");sc++;
. ECHO;
%%

int yywrap(){}

int main(int argc,char* argv[])
{
	yylex();
	printf("\nno. of printfs:%d\nno. of scanfs:%d\n",pc,sc);
	return 0;
}
