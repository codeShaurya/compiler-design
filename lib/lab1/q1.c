#include<stdio.h>
#include<stdlib.h>
#include<string.h>
int main(){
    printf("Enter the name of the file to be created\n");
    char c[500];
    scanf("%s",c);
    FILE *f=fopen(c,"w");
    if(f==NULL){
        printf("Unable to open the file for writing\n");
        return 0;
    }
    printf("Enter the text to be entered in the file and then press CTRL+D to save the file\n");
    char ch;
    fgetc(stdin);
    while((ch=fgetc(stdin))!=EOF)
        fputc(ch,f);
    fclose(f);
    printf("\nFile %s created\n",c);
    return 0;
}
