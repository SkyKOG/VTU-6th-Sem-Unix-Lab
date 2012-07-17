%{
#include <stdio.h>
int valid=1;
%}

%token A B

%%
S:A S B
 | ;
%%

int yyerror(char * s)
{
    valid=0;
}

int main()
{
    printf("\nEnter Expression : \n");
    yyparse();
    if(valid)
        printf("\nValid\n");
    else
        printf("\nInvalid\n");
}
