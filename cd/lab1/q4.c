#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<ctype.h>
int main(){
    printf("Enter the name of the file from which spaces are to be removed\n");
    char c[500];
    scanf("%s",c);
    FILE *f=fopen(c,"r");
    if(f==NULL){
        printf("Unable to open file for reading\n");
        return 0;
    }
    c[strlen(c)-1]=0;
    c[strlen(c)-1]=0;
    strcat(c,"_edited.c");
    FILE *op=fopen(c,"w");
    if(op==NULL){
        printf("Unable to open file for writing\n");
        return 0;
    }
    char ch;
    while((ch=fgetc(f))!=EOF)
        if(!isspace(ch))
            fputc(ch,op);
	fputc('\n',op);
    fclose(op);
    fclose(f);
    printf("Output written to file %s\n",c);
    return 0;
}
