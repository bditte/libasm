#include "libasm.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void)
{
	char buf[100];
	int fd = 1;
	
	printf("Enter a string: ");
	scanf("%s", buf);
	
	printf("\nFT_STRLEN RET VALUE : %zu\n\n", ft_strlen(buf));
	printf("\nSTRLEN RET VALUE : %zu\n", strlen(buf));
	return (0);
}
