/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dzubkova <dzubkova@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/13 17:09:06 by dzubkova          #+#    #+#             */
/*   Updated: 2024/09/24 17:08:31 by dzubkova         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/libft.h"

void	*ft_memchr(const void *s, int c, size_t n)
{
	char	*chs;

	if (n <= 0)
		return (NULL);
	chs = (char *)s;
	while (n--)
	{
		if ((unsigned char)*chs == (unsigned char)c)
			return (chs);
		chs++;
	}
	if (!chs)
		return (chs);
	return (NULL);
}
