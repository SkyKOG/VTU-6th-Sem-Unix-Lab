#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <string.h>


int main()
{
    system("clear");
    char cmd[20];

    if(fork()==0)
    {
        do{
            printf("\nEnter Command to Execute : ");
            scanf("%s",cmd);
            system(cmd);
        }
        while(strcmp(cmd,"exit"));
    }
    else
        wait();
    return 0;
}

