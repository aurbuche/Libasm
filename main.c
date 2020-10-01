#include "libasm.h"
#include <errno.h>
#include <unistd.h>
#define BUF 32

int main(void)
{
	char	dst[100];
	printf("---FT_STRLEN TEST---\n");
	printf("%ld\n", ft_strlen(""));
	printf("%ld\n", ft_strlen("l"));
	printf("%ld\n", ft_strlen("123-r"));
	printf("%ld\n", ft_strlen("bonjour"));

	printf("\n---FT_STRCPY TEST---");
	printf("%s\n", ft_strcpy(dst, ""));
	printf("%s\n", ft_strcpy(dst, "h"));
	printf("%s\n", ft_strcpy(dst, "123-r"));
	printf("%s\n", ft_strcpy(dst, "bonjour"));

	printf("\n---FT_STRDUP TEST---");
	printf("%s\n", ft_strdup(""));
	printf("%s\n", ft_strdup("l"));
	printf("%s\n", ft_strdup("123-*"));
	printf("%s\n", ft_strdup("Hello World"));
}
