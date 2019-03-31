#include<stdio.h>
#include<stdlib.h>
#include<string.h>
int main(){
    printf("Enter the name of the file in which comments are to be recognized\n");
    char c[500];
    scanf("%s",c);
    FILE *f=fopen(c,"r");
    if(f==NULL){
        printf("Unable to open file for reading\n");
        return 0;
    }
    char cur=0,prev=0;	
    int sl=0,ml=0;
    while((cur=fgetc(f))!=EOF){
    	if(cur=='\n'){
    		if(sl){
    			printf("\n----SINGLE LINE COMMENT ENDED----\n");
    			sl=0;
    		}
    		else if(ml)
    			printf("\n");
    		
    	}
    	else if(sl||ml)
    		printf("%c",cur);
    		
    	if(ml&&(cur=='/')&&(prev=='*')){
    		ml=0;
    		printf("\b \b");
    		printf("\b \b");
    		printf("\n----MULTI LINE COMMENT ENDED----\n");
    	}
    	else if((!sl)&&(!ml)&&(cur=='/'&&prev=='/')){
    		sl=1;
			printf("----SINGLE LINE COMMENT STARTED----\n");
			cur=0;	
    	}
    	else if((!sl)&&(!ml)&&(cur=='*'&&prev=='/')){
    		ml=1;
    		printf("----MULTI LINE COMMENT STARTED----\n");
    		cur=0;
    	}
    	prev=cur;
    	
    	
    }
    if(sl){
    	printf("\n----SINGLE LINE COMMENT ENDED----\n");
    }
    if(ml){
    	printf("\n----UNCLOSED MULTI LINE COMMENT----\n");
    }
    return 0;
}
