%{
int chcount=0;
int wcount=0;
int lcount=0;
int spaces=0;
%}
%%
" " {chcount++,spaces++;}
\n {lcount++,chcount++;}
[^ \n\t]+ {wcount++,chcount+=yyleng;}
. {chcount++;}
%%
int yywrap()
{
    return 1;
}

int main()
{
    yyin=fopen("in.txt","r");
    yylex();
    fclose(yyin);

    printf("No of Characters : %d\n",chcount);
    printf("No of Spaces : %d\n",spaces);
    printf("No of Words : %d\n",wcount);
    printf("No of Lines : %d\n",lcount);
}
