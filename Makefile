# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aurelienbucher <aurelienbucher@student.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/09/21 15:59:46 by aurelienbuc       #+#    #+#              #
#    Updated: 2020/09/30 10:42:22 by aurelienbuc      ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

SRCS 		= ft_strlen.s
		
OBJS 		= $(SRCS:.s=.o)
		
NAME 		= libasm.a
	
HEADER		= libasm.h

FLAGS		= -f macho64

TEST		= test

all: $(NAME)

$(NAME): $(OBJS) $(HEADER)
	@ar rc $(NAME) $(OBJS)
	@ranlib $(NAME)
	@echo "\033[38;2;57;214;45;1mDone !"

%.o: %.s $(HEADER)
	@nasm $(FLAGS) $< -o $@
	@echo "\033[38;2;255;204;0;1mCompiling $@...\n\033[0m"

$(TEST):
		gcc -Wall -Werror -Wextra main.c libasm.a -o $(TEST)

clean:
	@rm -f $(OBJS)
	@echo "\033[38;2;230;36;36;1mDeleting objects...\n"

fclean: clean
	@rm -f $(NAME)
	@echo "\033[38;2;230;36;36;1mDeleting $(NAME)\n"

re: fclean all