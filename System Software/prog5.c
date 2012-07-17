#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/times.h>
#include <fcntl.h>
#include <unistd.h>

int main()
{
    struct tms t1,t2;
    clock_t start,finish;
    double clktck=sysconf(_SC_CLK_TCK);
    char cmd[10];

    printf("\nEnter Command to Execute : ");
    scanf("%s",cmd);
    
    start=times(&t1);
    system(cmd);
    finish=times(&t2);

    printf("\nThe Time taken is : %f\n",(finish-start)/clktck);
}

