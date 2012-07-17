%{
#include <stdio.h>
int valid=1;
%}

%token NUMBER ID
%left '+''-'
%left '*''/'
%left '('')'

%%
e:d'+'d|d'-'d|d'*'d|d'/'d|'('d')'
d:NUMBER|ID|e;
%%

int yyerror(char* s)
{
    valid=0;
}

int main()
{
    printf("\nEnter Expression : \n");
    yyparse();
    if(valid)
        printf("\nValid Expression\n");
    else
        printf("\nInvalid Expression\n");
}
