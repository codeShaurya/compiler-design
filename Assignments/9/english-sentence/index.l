%{
    #include "y.tab.h"
%}
%%
"Ankur"|"I"|"He" {return SU;}
"Ashish"|"him"|"CoD" {return O;}
"plays"|"hit"|"play" {return V;}
"is"|"am"|"are"|"will" {return HV;}
%%
