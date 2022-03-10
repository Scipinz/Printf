/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_printf.h                                        :+:    :+:            */
/*                                                     +:+                    */
/*   By: kblok <kblok@student.codam.nl>               +#+                     */
/*                                                   +#+                      */
/*   Created: 2021/11/17 14:29:32 by kblok         #+#    #+#                 */
/*   Updated: 2021/12/08 16:48:01 by kblok         ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include "libft/libft.h"

//=Libraries=//
# include <stdio.h>
# include <stdarg.h>

int	ft_printf(const char *format, ...);

#endif