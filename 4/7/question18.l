%{
#include<stdio.h>
#include<string.h>
int vc=0;
int cc=0;
%}

op [-+*/]
letter [a-zA-Z]
digitt [0-9]
id ({letter}{digitt}{op})+
notid (op)

%%
[\t\n]+

[a-zA-Z]* {

int n=strlen(yytext);

int i;
for(i=0;i<n;i++)
{
       if(yytext[i]=='a'||yytext[i]=='e'||yytext[i]=='i'||yytext[i]=='o'||yytext[i]=='u'||yytext[i]=='A'||yytext[i]=='E'||yytext[i]=='I'||yytext[i]=='O'||yytext[i]=='U')
       vc++;
       else
       cc++;
}
}

[+-] {}
%%

int main()
{
FILE *fp;
char file[10];
printf("\nEnter the filename: ");
scanf("%s", file);
fp=fopen(file,"r");
yyin=fp;
yylex();
printf("Number of vowels are %d\n",vc);
printf("Numbe rof consonants are %d\n",cc);
fclose(fp);
return 0;
}
