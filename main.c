/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aurelienbucher <aurelienbucher@student.    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/09/30 10:18:29 by aurelienbuc       #+#    #+#             */
/*   Updated: 2020/09/30 11:05:19 by aurelienbuc      ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

  
#include "libasm.h"

int main()
{
	printf("%ld\n", ft_strlen(""));
    printf("%ld\n", strlen(""));
	printf("%ld\n", ft_strlen("la"));
	printf("%ld\n", ft_strlen("123-r"));
	printf("%ld\n", ft_strlen("bonjour"));
}