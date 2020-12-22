#include "libasm.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <error.h>
int main(void)
{
	char buf[100];
	int fd = 1;
	
	printf("Enter a string: ");
	scanf("%s", buf);
	
	printf("\nFT_WRITE : \n");
	printf("\nFT_WRITE RET VALUE : %zu\n\n", ft_write(fd, buf, strlen(buf)));
	printf("WRITE : \n");
	printf("\nWRITE RET VALUE : %zu\n", write(fd, buf, strlen(buf)));
	return (0);
}
