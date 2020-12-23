#include "libasm.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void)
{
	char str1[100];
	char *res;
	char *ft_res;
	printf("Enter source string : ");
	scanf("%s", str1);

	res = strdup(str1);
	ft_res = ft_strdup(str1);
	printf("\nFT_STRDUP RET VALUE : %s\nLEN : %ld\n\n", ft_res, strlen(ft_res));
	printf("STRCPY RET VALUE : %s \nLEN : %ld \n\n", res, strlen(res));
	printf("STRCMP RET VALUE : %d\n", strcmp(ft_res, res));
	free(res);
	free(ft_res);
	return (0);
}
