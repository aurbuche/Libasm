# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aurelienbucher <aurelienbucher@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/09/21 15:59:46 by aurelienbuc       #+#    #+#              #
#    Updated: 2021/01/25 20:22:37 by aurelienbuc      ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

SRCS 		= $(addprefix srcs/, ft_strlen.s ft_strcpy.s ft_strdup.s ft_strcmp.s)
				# ft_write.s ft_read.s)
		
OBJS 		= $(SRCS:.s=.o)
		
NAME 		= libasm.a
	
HEADER		= libasm.h

FLAGS		= -f macho64

RM			= rm -rf

all: $(NAME)

$(NAME): $(OBJS) $(HEADER)
	@ar rcs $(NAME) $(OBJS)
	@echo "\033[38;2;57;214;45;1mDone !"

%.o: %.s $(HEADER)
	@nasm $(FLAGS) $< -o $@
	@echo "\033[38;2;255;204;0;1mCompiling $@...\033[0m"

test:
	gcc -Wall -Werror -Wextra -o test main.c libasm.a

clean:
	@${RM} ${OBJS}
	@echo "\033[38;2;230;36;36;1mObjects deleted"

fclean: clean
	@${RM} ${NAME} ${TEST}
	@echo "\033[38;2;230;36;36;1mDirectory clean"

re: fclean all
