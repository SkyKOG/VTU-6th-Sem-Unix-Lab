%{
int flag=0;
%}
%%
.*[ ][aA][nN][dD][ ].* {flag=1;}
.*[ ][bB][uU][tT][ ].* {flag=1;}
.*[ ][oO][rR][ ].* {flag=1;}
.* ;
%%

int main()
{
    printf("\nEnter Expression : \n");
    yylex();
    if(flag)
        printf("\nValid");
    else 
        printf("\nInvalid");
}

