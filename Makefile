# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bditte <bditte@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/08/21 14:38:26 by bditte            #+#    #+#              #
#    Updated: 2020/12/22 11:54:50 by bditte           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = nasm

NAME =	libasm.a

SRC = 	ft_read.s \
	ft_strlen.s \
	ft_strcmp.s \
	ft_strcpy.s \
	ft_write.s

SRCS = $(addprefix $(DIR_SRCS), $(SRC))

OBJ = $(SRCS:.s=.o)

HEADERS = $(DIR_HEADERS)libasm.h

DIR_SRCS = srcs/

DIR_HEADERS = include/

DIR_OBJS = objs/

ASM_FLAGS = -f elf64

BONUS_OBJ = $(BONUS_SRC:.c=.o)



all: $(NAME)

%.o: %.s 
	 $(CC) $(ASM_FLAGS) $< 

$(NAME): $(OBJ)
	 ar rcs $(NAME) $(OBJ)

bonus:
	@make all OBJ="$(OBJ) $(BONUS_OBJ)"

clean:
	rm -f $(OBJ) $(BONUS_OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re bonus

