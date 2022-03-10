# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: kblok <kblok@student.codam.nl>               +#+                      #
#                                                    +#+                       #
#    Created: 2021/11/16 20:46:21 by kblok         #+#    #+#                  #
#    Updated: 2022/03/10 13:27:10 by kblok         ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

include source.mk

NAME	= 	libft.a
CC		= 	gcc
CFLAGS	= 	-Wall -Werror -Wextra -c
AR		=	ar rcs
MKDIR	= mkdir -p obj
OBJ		= 	$(SRCS:src/%.c=obj/%.o)

all: dirs $(NAME)

$(NAME): ${OBJ}
	@$(AR) $(NAME) ${OBJ}

obj/%.o: src/%.c
	@$(CC) $(CFLAGS) -o $@ $< -I .

dirs:
	@${MKDIR}

clean:
	@rm -rf obj/

fclean: clean
	@rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re dirs
