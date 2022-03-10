# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: kblok <kblok@student.codam.nl>               +#+                      #
#                                                    +#+                       #
#    Created: 2021/11/16 20:46:21 by kblok         #+#    #+#                  #
#    Updated: 2022/03/10 13:28:04 by kblok         ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME	= 	libftprintf.a
CC		= 	gcc
CFLAGS	= 	-Wall -Werror -Wextra -c
INCL	=	-Ilibft
AR		=	ar rcs
SRCS	=	ft_printf.c
OBJ		= 	$(SRCS:%.c=%.o)

all: $(NAME)
$(NAME): ${OBJ}
	@$(MAKE) -C libft
	@cp libft/libft.a $(NAME)
	@$(AR) $(NAME) $(OBJ)

%.o:%.c
	@$(CC) $(CFLAGS) $(INCL) -o $@ $<

clean:
	@rm -rf $(OBJ)
	@$(MAKE) clean -C libft

fclean: clean
	@rm -rf $(NAME) *.out
	@$(MAKE) fclean -C libft

re: fclean all

.PHONY: all clean fclean re
