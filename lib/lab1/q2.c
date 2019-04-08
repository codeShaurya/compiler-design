#include<stdio.h>
#include<stdlib.h>
#include<string.h>
int main(){
    printf("Enter the name of the file in which lines are to be counted\n");
    char c[500];
    scanf("%s",c);
    FILE *f=fopen(c,"r");
    if(f==NULL){
        printf("Unable to open file for reading\n");
        return 0;
    }
    char ch;
    int count=0;
    while((ch=fgetc(f))!=EOF)
        if(ch=='\n')
            count++;
    printf("No. of lines=%d\n",count);
    return 0;
}
