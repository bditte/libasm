#include "libasm.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void)
{
	char str1[100];
	char str2[100];

	printf("Enter string 1: ");
	scanf("%s", str1);
	printf("Enter string 2: ");
	scanf("%s", str2);
	
	printf("\nFT_STRCMP RET VALUE : %d\n\n", ft_strcmp(str1, str2));
	printf("\nSTRCMP RET VALUE : %d\n", strcmp(str1, str2));
	return (0);
}
