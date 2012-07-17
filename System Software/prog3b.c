#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <sys/types.h>

int main(int argc,char * argv[])
{
    struct stat buf;
    int i;

    for(i=1;i<argc;i++)
    {
        if(lstat(argv[i],&buf)==-1)
        {
            printf("lstat Error");
            continue;
        }
            
        printf("\n");
        if(S_ISREG(buf.st_mode))
            printf("Regular File");
        
        if(S_ISCHR(buf.st_mode))
            printf("Character File");

        if(S_ISBLK(buf.st_mode))
            printf("Block File");

        if(S_ISDIR(buf.st_mode))
            printf("Directory File");

        if(S_ISLNK(buf.st_mode))
            printf("Link File");
        printf("\n");
    }
}


