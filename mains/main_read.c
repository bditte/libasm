#include "libasm.h"
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>

#ifndef BUFFER_SIZE
# define BUFFER_SIZE 20
# endif

int main(void)
{
	char *buf = malloc(sizeof(char) * BUFFER_SIZE);
	int fd = 1;
	
	printf("Enter a string to read : \n");
	
	printf("\nFT_READ RET VALUE : %zu\n", ft_read(fd, buf, BUFFER_SIZE));
	printf("FT_READ BUFFER : %s\nERRNO : %d\n", buf, errno);
	
	printf("Enter a string to read : \n");
	printf("\nREAD RET VALUE : %zu\n", read(fd, buf, BUFFER_SIZE));
	printf("READ BUFFER : %s\nERRNO : %d\n", buf, errno);
	free(buf);
	return (0);
}
