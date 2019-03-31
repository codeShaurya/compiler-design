%{
    #include "y.tab.c"
%}
%%
[0-9]+ {return id;}
[+] {return plus;}
[-] {return minus;}
[*] {return mul;}
[/] {return divide;}
[(] {return op;}
[)] {return cl;}
[\n] {return ln;}
%%