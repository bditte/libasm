#include "libasm.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <error.h>
#include <errno.h>

int main(void)
{
	char buf[100];
	int fd = 1;
	
	printf("Enter a string: ");
	scanf("%s", buf);
	
	printf("\nFT_WRITE : \n");
	printf("\n\nFT_WRITE RET VALUE : %ld\n\n", ft_write(fd, buf, strlen(buf)));//strlen(buf)));
	printf("\nERRNO %d\n\n", errno);
	printf("WRITE : \n");
	printf("\n\nWRITE RET VALUE : %ld\n", write(fd, buf, strlen(buf)));//strlen(buf)));
	printf("\nERRNO %d\n\n", errno);
	error(1, errno, NULL);
	return (0);
}
