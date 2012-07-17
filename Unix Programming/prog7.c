#include <stdio.h>
#include <stdlib.h>

int main()
{
    char env[20],*enval;

    printf("\nEnter Name of Environment Variable : ");
    scanf("%s",env);

    enval=getenv(env);

    if(!enval)
    {
        printf("Not An Environment Var");
        exit(0);
    }

    printf("\nThe Contents are : \n%s\n",enval);
}
