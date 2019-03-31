#include<stdio.h>
#include<stdlib.h>
#include<string.h>
int main(){
    printf("Enter the name of the file in which operators are to be recognized\n");
    char c[500];
    scanf("%s",c);
    FILE *f=fopen(c,"r");
    if(f==NULL){
        printf("Unable to open file for reading\n");
        return 0;
    }
    char cur=0,prev=0;	
    int pl=0,mi=0,lt=0,gt=0,in=0,di=0;
    while((cur=fgetc(f))!=EOF){
    	switch(cur){
    		case '+':pl++;
    		break;
    		case '-':mi++;
    		break;
    		case '*':in++;
    		break;
    		case '/':di++;
    		break;
    		case '%':lt++;
    		break;
    	}
    }
    printf("Number of + =%d\nNumber of - =%d\nNumber of * =%d\nNumber of / =%d\nNumber of %% =%d\n",
	pl,mi,in,di,lt);
	return 0;
}
