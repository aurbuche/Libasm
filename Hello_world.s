# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Hello_world.s                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aurelienbucher <aurelienbucher@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/09/21 10:07:55 by aurelienbuc       #+#    #+#              #
#    Updated: 2020/09/21 13:41:00 by aurelienbuc      ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

                    .data
msg :               .asciz "Hello, World !\n"
len = . - msg
                    .bss
                    .text
                    .global _start

_start :
                     movl $msg,%ecx
                     movl $len,%edx
                     movl $1,%ebx
                     movl $4,%eax
                     int  $0x80           # appel système

exit :
                     movl $0,%ebx
                     movl $1,%eax
                     int  $0x80