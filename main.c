#include "libasm.h"
#include <errno.h>
#include <unistd.h>
#define BUF 32

int main(void)
{
	char	dst[100];
	int		ret;

	printf("---FT_STRLEN TEST---\n");
	printf("[%ld]\n", ft_strlen(""));
	printf("[%ld]\n", ft_strlen("l"));
	printf("[%ld]\n", ft_strlen("123-r"));
	printf("[%ld]\n", ft_strlen("bonjour"));

	printf("\n---FT_STRCPY TEST---\n");
	printf("[%s]\n", ft_strcpy(dst, ""));
	printf("[%s]\n", ft_strcpy(dst, "h"));
	printf("[%s]\n", ft_strcpy(dst, "123-r"));
	printf("[%s]\n", ft_strcpy(dst, "bonjour"));

	printf("\n---FT_STRDUP TEST---\n");
	printf("[%s]\n", ft_strdup(""));
	printf("[%s]\n", ft_strdup("l"));
	printf("[%s]\n", ft_strdup("123-*"));
	printf("[%s]\n", ft_strdup("Hello World"));

	printf("\n---FT_STRCMP TEST---\n");
	printf("[%d]\n", ft_strcmp("", ""));
	printf("[%d]\n", ft_strcmp("l", "Hello"));
	printf("[%d]\n", ft_strcmp("123-*", "Hello"));
	printf("[%d]\n", ft_strcmp("Hello World", "Hello"));	
	printf("[%d]\n", ft_strcmp("Hello World", ""));

	printf("\n---FT_WRITE TEST---\n");
	printf("ft_write(1, \"Hello World\\n\", 12)\n");
	ret = ft_write(1, "Hello World\n", 12);
	errno = 0;
	dprintf(1, "ret = %d\n", ret);
	dprintf(1, "errno = %d\n", errno);
	
	printf("\nft_write(1, \"Hello World\\n\", 1)\n");
	ret = ft_write(1, "Hello World\n", 1);
	errno = 0;
	printf("\n");
	dprintf(1, "ret = %d\n", ret);
	dprintf(1, "errno = %d\n", errno);

	printf("\nft_write(3, \"aaaaaaaaaaaaa\\n\", 5)\n");
	errno = 0;
	ret = ft_write(3, "aaaaaaaaaaaaa\n", 5);
	printf("\n");
	dprintf(1, "ret = %d\n", ret);
	dprintf(1, "errno = %d\n", errno);

	printf("\n---FT_READ--\n");
	int fd = open("test.txt", O_RDONLY);
	char buf[BUF + 1];
	errno = 0;
	while ((ret = ft_read(fd, buf, BUF)) > 0)
	{
		buf[ret] = 0;
		dprintf(1, "%s\n", buf);
	}
	dprintf(1, "ret = %d\n", ret);
	dprintf(1, "errno = %d\n", errno);
	errno = 0;
	while ((ret = ft_read(42, buf, BUF)) > 0)
	{
		buf[ret] = 0;
		printf("%s", buf);
	}
	dprintf(1, "ret = %d\n", ret);
	dprintf(1, "errno = %d\n", errno);
}
