#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <sys/types.h>

int main()
{
    pid_t pid,mpid,ppid,status=0;

    pid=fork();

    if(pid<0)
    {
        printf("Fork Error");
        exit(0);
    }

    if(pid==0)
    {
        printf("\nPid : %d\n",pid);

        printf("\nIn Child Process\n");
        mpid=getpid();
        printf("\nChild : %d\n",mpid);
        ppid=getppid();
        printf("\nParent : %d\n",ppid);
        exit(0);
        printf("\nExited Child Process\n");
    }
    
    printf("\nNow in Parent Process\n");
    printf("\nPid : %d\n",pid);
    pid=waitpid(pid,&status,0);
    mpid=getpid();

    printf("\nParent : %d\nChild : %d\n",mpid,pid);
    
}
