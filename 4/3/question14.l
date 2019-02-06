%{
        int count=0;
%}
alpha    [a-zA-Z]
digit      [0-9]
space    [ \t\n]
start      ^ab
%%

{start} {count++;}
{space}(ab)({alpha}|{digit})*    {count++;}
.    ;

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
    printf("count= %d\n",count);
    return 0;
}
