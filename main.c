#include "ft_printf.h"
#include <limits.h>

int main()
{
	int abc = -123456789;
	int min = -2147483648, max = 2147483647;
	printf("|-----------------------Hexupper----------------------|\n");
	printf("\t%d\n", printf("out: %X", -9));
	ft_printf("\t%d\n", ft_printf("out: %X", -9));
	printf("|-----------------------Hexlower----------------------|\n");
	printf("\t%d\n", printf("out: %x", -9));
	ft_printf("\t%d\n", ft_printf("out: %x", -9));
	printf("|-----------------------String------------------------|\n");
	printf("\t%d\n", printf("out: %s", "adsfjsdf"));
	ft_printf("\t%d\n", ft_printf("out: %s", "adsfjsdf"));
	printf("|------------------------Char-------------------------|\n");
	printf("\t%d\n", printf("out: %c", 'a'));
	ft_printf("\t%d\n", ft_printf("out: %c", 'a'));
	printf("|-----------------------Digit-------------------------|\n");
	printf("\t%d\n", printf("out: %d", 1234));
	ft_printf("\t%d\n", ft_printf("out: %d", 1234));
	printf("|----------------------Integer------------------------|\n");
	printf("\t%d\n", printf("out: %i", 1234));
	ft_printf("\t%d\n", ft_printf("out: %i", 1234));
	printf("|----------------------Unsigned-----------------------|\n");
	printf("\t%d\n", printf("out: %u", -9999));
	ft_printf("\t%d\n", ft_printf("out: %u", -9999));
	printf("|---------------------Percentage----------------------|\n");
	printf("\t%d\n", printf("out: %%"));
	ft_printf("\t%d\n", ft_printf("out: %%"));
	printf("|--------------------Empty string---------------------|\n");
	printf("\t%d\n", printf("out: %s", ""));
	ft_printf("\t%d\n", ft_printf("out: %s", ""));
	printf("|---------------------Invis char----------------------|\n");
	printf("\t%d\n", printf("out: %s", " "));
	ft_printf("\t%d\n", ft_printf("out: %s", " "));
	printf("|------------------------All--------------------------|\n");
	printf("\t%d\n", printf("out: %X %x %s %c %d %i %d %p %%", abc, abc, NULL, 'a', max, 0, min, NULL));
	printf("\t%d\n", ft_printf("out: %X %x %s %c %d %i %d %p %%", abc, abc, NULL, 'a', max, 0, min, NULL));
	printf("|-----------------------Leaks-------------------------|\n");
	system ("leaks libftprintf");
}
