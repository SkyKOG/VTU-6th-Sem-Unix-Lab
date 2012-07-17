%{
#include <stdio.h>
int valid=1,count=0;
%}

%token A B

%%
S:X B
X:X A {count++;}
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
    if((valid)&&(count>=10))
        printf("\nValid Expression\n");
    else 
        printf("\nInvalid Expression\n");
}
