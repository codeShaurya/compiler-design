%{
int ideintifier_count=0;
%}

%%
auto {printf("Keyword is valid !"); ideintifier_count++;}
break {printf("Keyword is valid !"); ideintifier_count++;}
case {printf("Keyword is valid !"); ideintifier_count++;}
char {printf("Keyword is valid !"); ideintifier_count++;}
const {printf("Keyword is valid !"); ideintifier_count++;}
continue {printf("Keyword is valid !"); ideintifier_count++;}
default {printf("Keyword is valid !"); ideintifier_count++;}
do {printf("Keyword is valid !"); ideintifier_count++;}
double {printf("Keyword is valid !"); ideintifier_count++;}
else {printf("Keyword is valid !"); ideintifier_count++;}
enum {printf("Keyword is valid !"); ideintifier_count++;}
extern {printf("Keyword is valid !"); ideintifier_count++;}
float {printf("Keyword is valid !"); ideintifier_count++;}
for {printf("Keyword is valid !"); ideintifier_count++;}
goto {printf("Keyword is valid !"); ideintifier_count++;}
if {printf("Keyword is valid !"); ideintifier_count++;}
int {printf("Keyword is valid !"); ideintifier_count++;}
long {printf("Keyword is valid !"); ideintifier_count++;}
register {printf("Keyword is valid !"); ideintifier_count++;}
return {printf("Keyword is valid !"); ideintifier_count++;}
short {printf("Keyword is valid !"); ideintifier_count++;}
signed {printf("Keyword is valid !"); ideintifier_count++;}
sizeof {printf("Keyword is valid !"); ideintifier_count++;}
static {printf("Keyword is valid !"); ideintifier_count++;}
struct {printf("Keyword is valid !"); ideintifier_count++;}
switch {printf("Keyword is valid !"); ideintifier_count++;}
typedef {printf("Keyword is valid !"); ideintifier_count++;}
union {printf("Keyword is valid !"); ideintifier_count++;}
unsigned {printf("Keyword is valid !"); ideintifier_count++;}
void {printf("Keyword is valid !"); ideintifier_count++;}
volatile {printf("Keyword is valid !"); ideintifier_count++;}
while {printf("Keyword is valid !"); ideintifier_count++;}
. {printf("Not a valid keyword");}
%%

int yywrap(){}
int main(){

char s[100];
printf("Start entering keyword and press enter :");
yylex();
return 0;
}