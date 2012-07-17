%{
#include "y.tab.h"
%}
%%
[0-9]+ {return NUMBER;}
[a-zA-Z]+ {return ID;}
[\n] {return 0;}
[\t] ;
. {return yytext[0];}
%%

