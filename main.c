#include "libasm.h"
/*
char *ft_strdup2(const char *s)
{
	char *str;

	str = NULL;
	if (!s)
		return (NULL);
	if (!(str = malloc((strlen(s) + 1) * sizeof(char *))))
		return (NULL);
	while (s[a])
	{
		str[a] = s[a];
		a++;
	}
	str[a] = '\0';
	return (str);
}
*/
/*
int	ft_strcmp2(char *s1, char *s2)
{
	int i;

	i = 0;
	while (s1[i] != '\0' && s2[i] != '\0' && s1[i] == s2[i])
		i++;
	return (s1[i] - s2[i]);
}
*/
/*
char    *ft_strcpy2(char *dest, char const *src)
{
    int a;

    a = 0;
    while (src[a])
    {
        dest[a] = src[a];
        a++;
    }
    dest[a] = '\0';
    return (dest);
}
*/
/*
size_t ft_strlen2(char *str)
{
    int a;

    a = 0;
    while (str[a])
        a++;
    return (a);
}
*/

int main()
{
	char s1[50] = "coucou";
	char s2[50] = "salut";
	char *str;
	int a = 0;

//  printf("ft_strlen() : |%zu|\n", ft_strlen(s1));
//	printf("strlen() : |%zu|\n", strlen(s1));
//	printf("ft_strcpy() : |%s|\n", ft_strcpy(s1, s2));
//	printf("strcpy() : |%s|\n", strcpy(s1, s2));
//	printf("ft_strcmp() : |%d|\n", ft_strcmp(s1, s2));
//  printf("strcmp() : |%d|\n", strcmp(s1, s2));
//	printf("ft_strdup() : |%s|\n", str = ft_strdup("slt cv ?"));
//	printf("strdup() : |%s|\n", strdup(""));
	printf("ft_write() : |%zd|\n", ft_write(1, "coucou\n", 7));
	printf("write() : |%zd|\n", write(2, "coucou\n", 7));

///////////////////////////////////////////////////////////////
/*	int	fd;
	char	buffer[40];
	int	i = 0;
	while(i < 40)
	{
		buffer[i] = 0;
		i++;
	}
	fd = open("./test.txt",	O_RDWR);
	printf("%zd\n",ft_read(fd, buffer, 39));
	printf("buffer||%s\n", buffer);
*/
/*
	while (str[a])
	{
		printf("|%c|\n", str[a]);
		a++;
	}
	printf("|%c|\n", str[a]);
*/
	return (0);
}
