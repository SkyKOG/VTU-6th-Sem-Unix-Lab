#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>

int main()
{
    char* str1="abcdefghijklmnop";
    char* str2="ABCDEFGHIJKLMNOP";
    int fd;

    fd=creat("test.dat",S_IREAD|S_IWRITE);

    write(fd,str1,16);
    lseek(fd,48,SEEK_SET);
    write(fd,str2,16);
}
