# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: user42 <user42@student.42lyon.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/09/21 15:59:46 by aurelienbuc       #+#    #+#              #
#    Updated: 2020/10/01 21:46:01 by user42           ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

SRCS 		= ft_strlen.s ft_strcpy.s ft_strdup.s
		
OBJS 		= $(SRCS:.s=.o)
		
NAME 		= libasm.a
	
HEADER		= libasm.h

FLAGS		= -f elf64

RM			= rm -rf

all: $(NAME)

$(NAME): $(OBJS) $(HEADER)
	@ar rc $(NAME) $(OBJS)
	@echo "\033[38;2;57;214;45;1mDone !"

%.o: %.s $(HEADER)
	@nasm $(FLAGS) $< -o $@
	@echo "\033[38;2;255;204;0;1mCompiling $@...\033[0m"

test:
	gcc -Wall -Werror -Wextra -no-pie -o test main.c libasm.a

clean:
	@${RM} ${OBJS}
	@echo "\033[38;2;230;36;36;1mObjects deleted"

fclean: clean
	@${RM} ${NAME} ${TEST}
	@echo "\033[38;2;230;36;36;1mDirectory clean"

re: fclean all

.PHONY: test