%{
 #include <stdio.h>
 int valid=1;
%}

%token ALPHA NUM

%%
expr:ALPHA|expr ALPHA|expr NUM;
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
        printf("\nValid\n");
    else
        printf("\nInvalid\n");
}
