#include "libft.h"

/* ************************************************************************** */
/*                                                                            */
/*   the input parameter is the value of the character in the ascii table     */
/*   (their numeric values), for example:                                     */
/*   instead character B you have to write 'B' or 66                          */
/*                                                                            */
/* ************************************************************************** */

int	ft_isalpha(int c)
{
	if (ft_isupper(c) || ft_islower(c))
		return (1);
	return (0);
}
