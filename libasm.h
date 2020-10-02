/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: user42 <user42@student.42lyon.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/09/30 10:32:16 by aurelienbuc       #+#    #+#             */
/*   Updated: 2020/10/02 13:46:47 by user42           ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

#include <stdio.h>
#include <stddef.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

size_t		ft_strlen(const char *str);
char        *ft_strcpy(char *dest, const char *src);
char        *ft_strdup(char *src);
int         ft_strcmp(const char *s1, const char *s2);
ssize_t     ft_read(int fd, void *buf, size_t count);
ssize_t     ft_write(int fd, const void *_buf, ssize_t nbytes);

#endif