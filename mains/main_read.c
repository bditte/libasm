#include "libasm.h"
#include <stdio.h>
#include <stdlib.h>

#ifndef BUFFER_SIZE
# define BUFFER_SIZE 20
# endif

int main(void)
{
	char *buf = malloc(sizeof(char) * BUFFER_SIZE);
	int fd = -1;
		
	printf("\nFT_READ RET VALUE : %zu\n", ft_read(fd, buf, BUFFER_SIZE));
	printf("FT_READ BUFFER : %s\n", buf);
	printf("\nREAD RET VALUE : %zu\n", read(fd, buf, BUFFER_SIZE));
	printf("READ BUFFER : %s\n", buf);
	free(buf);
	return (0);
}
