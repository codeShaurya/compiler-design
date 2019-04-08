#include<stdio.h>
#include<math.h>

int main(void)
{
	int number;
    while(1) {
      printf("Enter a number between 1-999 (enter 0 to exit): ");
      scanf("%d", &number);
      if (number==0) break;
      if (number > 999 || number < 1) continue
      a=number/100;
      b=number/10;
      
      switch(a){
                case 1: 
                     printf("One Hundred");
                     break;
                case 2:
                     case 1: 
                     printf("Two Hundred");
                     break;
                case 3: 
                     printf("Three Hundred");
                     break;
                case 4: 
                     printf("Four Hundred");
                     break;
                case 5: 
                     printf("Five Hundred");
                     break;
                case 6: 
                     printf("Six Hundred");
                     break;
                case 7: 
                     printf("Seven Hundred");
                     break;
                case 8: 
                     printf("Eight Hundred");
                     break;
                case 9: 
                     printf("Nine Hundred");
                     break;
                     
       switch(b){
                case 1: 
                     printf("Ten");
                     break;
                case 2: 
                     printf("Twenty");
                     break;
                case 3: 
                     printf("Thirty");
                     break;
                case 4: 
                     printf("Forty");
                     break;
                case 5: 
                     printf("Fifty");
                     break;
                case 6: 
                     printf("Sixty");
                     break;
                case 7: 
                     printf("Seventy");
                     break;
                case 8: 
                     printf("Eighty");
                     break;
                case 9: 
                     printf("Ninety");
                     break;
                
                               
                     
                     
                     return 0;
                     
                     }