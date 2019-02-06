%{
int ideintifier_count=0;
%}

%%
auto {printf("Keyword is valid !");}
break {printf("Keyword is valid !");}
case {printf("Keyword is valid !");}
char {printf("Keyword is valid !");}
const {printf("Keyword is valid !");}
continue {printf("Keyword is valid !");}
default {printf("Keyword is valid !");}
do {printf("Keyword is valid !");}
double {printf("Keyword is valid !");}
else {printf("Keyword is valid !");}
enum {printf("Keyword is valid !");}
extern {printf("Keyword is valid !");}
float {printf("Keyword is valid !");}
for {printf("Keyword is valid !");}
goto {printf("Keyword is valid !");}
if {printf("Keyword is valid !");}
int {printf("Keyword is valid !");}
long {printf("Keyword is valid !");}
register {printf("Keyword is valid !");}
return {printf("Keyword is valid !");}
short {printf("Keyword is valid !");}
signed {printf("Keyword is valid !");}
sizeof {printf("Keyword is valid !");}
static {printf("Keyword is valid !");}
struct {printf("Keyword is valid !");}
switch {printf("Keyword is valid !");}
typedef {printf("Keyword is valid !");}
union {printf("Keyword is valid !");}
unsigned {printf("Keyword is valid !");}
void {printf("Keyword is valid !");}
volatile {printf("Keyword is valid !");}
while {printf("Keyword is valid !");}
. {printf("Not a valid keyword");}
%%

int yywrap(){}
int main(){

char s[100];
printf("Start entering keyword and press enter :");
yylex();
return 0;
}