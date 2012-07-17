%{
#include <stdio.h>
int count=0;
char ch;
%}
%%
"int"|"float"|"char" {while(1)
{
    ch=input();
    if(ch==',')
        count++;
    if(ch==';')
        break;
}   count++;
}
. ;
%%

int main()
{
    yyin=fopen("in.c","r");
    yylex();
    fclose(yyin);
    printf("\nThe Number of Identifers Are : %d\n",count-1);
}
