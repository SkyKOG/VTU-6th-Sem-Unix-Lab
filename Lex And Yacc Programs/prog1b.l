%{
int comment=0;
%}
%%
[/*].*[*/] {comment++;}
[//].* {comment++;}
.echo ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    yyin=fopen("in.c","r");
    yyout=fopen("out.c","w");
    yylex();

    printf("\nNo of Comment Lines : %d",comment-3);
}
