#include "libasm.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void)
{
	char str1[100];
	char *str2;
	char *str3;

	printf("Enter source string : ");
	scanf("%s", str1);
	str2 = malloc(sizeof(char) * strlen(str1) + 1);

	printf("\nFT_STRCPY RET VALUE : %s\n", ft_strcpy(str2, str1));
	printf("FT_STRCPY COPY : %s \nLEN : %ld \n\n", str2, strlen(str2));

	str3 = malloc(sizeof(char) * strlen(str1) + 1);
	printf("\nSTRCPY RET VALUE : %s\n", strcpy(str3, str1));
	printf("STRCPY COPY : %s \nLEN : %ld\n\n", str3, strlen(str3));
	printf("STRCMP RET VALUE : %d \n", strcmp(str2, str3));
	free(str2);
	free(str3);
	return (0);
}
