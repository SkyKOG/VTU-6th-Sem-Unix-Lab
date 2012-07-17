%{
int ob=0,cb=0,i=0,k=0,valid=1;
%}
%%
[a-zA-Z0-9]+ {i++;printf("\nIdentifier : %s",yytext);}
[(] {ob++;}
[)] {cb++;}
[+|*|/] {i--;printf("\nOperator : %s",yytext);k++;}
[-] {i--;printf("\nOperator : %s",yytext);k++;}
%%

int yyerror()
{
    valid=0;
}

int main()
{
    printf("\nEnter Expression : ");
    yylex();
    if((ob==cb)&&(i==1)&&(k>0))
        printf("Valid Expression\n");
    else
        printf("Invalid Expression");
}

