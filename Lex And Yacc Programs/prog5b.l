%{
#include "y.tab.h"
%}

%%
a {return A;}
b {return B;}
[\t] ;
[\n] {return 0;}
. {return yytext[0];}
%%

