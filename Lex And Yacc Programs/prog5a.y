%{
 #include <stdio.h>
 #include <ctype.h>
 int valid=1;
%}

%token NUM
%left '+''-'
%left '*''/'
%left '('')'
%%
expr:e {if(valid)printf("The Reuslt of the Expression is : %d\n",$1);}
e:e'+'e {$$=$1+$3;}
e:e'-'e {$$=$1-$3;}
e:e'*'e {$$=$1*$3;}
e:e'/'e {if($3==0)printf("\nInvalid : Devide By Zero");$$=$1/$3;}
e:'-'e {$$=-$2;}
e:'('e')' {$$=$2;}
e:NUM {$$=$1;}
%%

int yyerror(char* s)
{
    valid=0;
}

int main()
{
    printf("\nEnter Expression to Evaluate : \n");
    yyparse();
}
