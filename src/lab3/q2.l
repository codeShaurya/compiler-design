%{ 
        #include<stdio.h> 
        int count=1;
%} 
%%
auto|double|int|struct|break|else|long|switch|case|enum|register|typedef|char|extern|return|union|continue|for|signed|void|do|if|static|while|default|goto|sizeof|volatile|const|float|short|unsigned {printf("Keyword found at line no. %d\n",count);} 
\n {count++;} 
[{};,()] {printf("Seprator found at line no. %d\n",count);} 
[+-/*=%] {printf("Operator Found at line no. %d\n",count);} 
([a-zA-Z][0-9])+|[a-zA-Z]* {printf("Identifier Found at line no. %d\n",count);} 
. {} 
%%
 
int yywrap() 
{ 
        return 1; 
} 
 
int main() { 
        yylex();         return 0; 
} 
