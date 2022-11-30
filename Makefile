# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: kblok <kblok@student.codam.nl>               +#+                      #
#                                                    +#+                       #
#    Created: 2021/11/16 20:46:21 by kblok         #+#    #+#                  #
#    Updated: 2022/11/30 12:04:26 by kblok         ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

#==============================================================================: Filename
NAME		= 	libftprintf

#==============================================================================: Source to object conversion 
OBJS		= 	$(SRCS:./%.c=objs/%.o)

#==============================================================================: Compile variables
CC			= 	gcc
CFLAGS		= 	-g -Wall -Werror -Wextra
RM			=	rm -rf
AR			=	ar rcs
MKDIR		=	mkdir -p objs
HEADERS		= 	-I $(LIBFT)

#==============================================================================: Include files
LIBFT		= 	libft/
FT_PRINT	= 	.

#==============================================================================: Source files 
SRCS		=	main.c \
				ft_printf.c \

#==============================================================================: Color codes
GREEN		= \033[1;32m
RED			= \033[1;31m
BLUE		= \033[1;34m
MAGENTA		= \033[1;35m
RESET		= \033[0m

#==============================================================================: Make commands
all: message includes $(NAME)

#==============================================================================: Main compile
$(NAME): $(OBJS)
	
	@$(CC) $(OBJS) $(HEADERS) $(LIBFT)libft.a -o $(NAME)
	@echo "$(GREEN)✅Done compiling $(NAME)$(RESET)"

#==============================================================================: File compile
objs/%.o: srcs/%.c
	@$(MKDIR)
	@$(CC) $(CFLAGS) -o $@ -c $< $(HEADERS)
ifeq ($(DB),1)
	@printf "$(GREEN)\r🔨Compiling: $(MAGENTA)$(notdir $<)$(GREEN)\r\e[35C[OK]\n$(RESET)"
endif

#==============================================================================: Executable run command
run: all
	@./$(NAME)
	@$(MAKE) fclean

#==============================================================================: Compile includes
includes:
	@$(MAKE) -C $(LIBFT)

#==============================================================================: Build messages
message:
	@echo "$(BLUE)🔨Creating object folder$(RESET)"
	@echo "$(GREEN)🔨Compiling: $(MAGENTA)$(NAME)...$(RESET)"

#==============================================================================: Remove all object files
clean:
	@$(RM) objs/
	@$(MAKE) clean -C $(LIBFT)
	@echo "$(RED)🧹Cleaned object folders!$(RESET)"

#==============================================================================: Remove object files and executables
fclean: clean
	@$(RM) $(NAME)
	@$(MAKE) fclean -C $(LIBFT)
	@echo "$(RED)🧹Cleaned $(NAME)!$(RESET)"

#==============================================================================: Remove object files and executables then remake executables
re: fclean all

.PHONY: all clean fclean re message includes run objs
