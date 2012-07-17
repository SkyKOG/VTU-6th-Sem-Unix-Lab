#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc,char* argv[])
{
    char str[30];
    int i;

    for(i=0;i<argc;i++)
    {
        strcpy(str,"ls -lR ");
        strcat(str,argv[i]);
        system(str);
    }
}

