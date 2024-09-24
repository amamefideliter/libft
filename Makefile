# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dzubkova <dzubkova@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/04 15:45:07 by dzubkova          #+#    #+#              #
#    Updated: 2024/09/24 17:13:00 by dzubkova         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

PFX = sources/

SRCS = \
		$(PFX)ft_atoi.c $(PFX)ft_bzero.c $(PFX)ft_calloc.c $(PFX)ft_isalnum.c $(PFX)ft_isalpha.c $(PFX)ft_isascii.c \
		$(PFX)ft_isdigit.c $(PFX)ft_isprint.c $(PFX)ft_itoa.c $(PFX)ft_memchr.c $(PFX)ft_memcmp.c $(PFX)ft_memmove.c \
		$(PFX)ft_memset.c $(PFX)ft_putchar_fd.c $(PFX)ft_putendl_fd.c $(PFX)ft_putnbr_fd.c $(PFX)ft_putstr_fd.c \
		$(PFX)ft_split.c $(PFX)ft_strchr.c $(PFX)ft_strdup.c $(PFX)ft_striteri.c $(PFX)ft_strjoin.c $(PFX)ft_strlcat.c \
		$(PFX)ft_strlcpy.c $(PFX)ft_strlen.c $(PFX)ft_strmapi.c $(PFX)ft_strncmp.c $(PFX)ft_strnstr.c $(PFX)ft_strrchr.c \
		$(PFX)ft_strtrim.c $(PFX)ft_substr.c $(PFX)ft_tolower.c $(PFX)ft_toupper.c $(PFX)ft_memcpy.c

BSRS = \
		$(PFX)ft_lstnew.c $(PFX)ft_lstsize.c $(PFX)ft_lstadd_front.c $(PFX)ft_lstlast.c $(PFX)ft_lstadd_back.c \
		$(PFX)ft_lstdelone.c $(PFX)ft_lstclear.c $(PFX)ft_lstiter.c $(PFX)ft_lstmap.c

OFILES = $(SRCS:.c=.o)
BOFILES = $(BSRS:.c=.o)

CFLAGS = -Wall -Wextra -Werror

NAME = libft.a

all: $(NAME) bonus

$(NAME): $(OFILES)
	ar rcs $(NAME) $(OFILES)

bonus: $(OFILES) $(BOFILES)
	ar rcs $(NAME) $(BOFILES) $(OFILES)

%.o: %.c
	cc -c $(CFLAGS) $< -o $@

clean:
	rm -f $(OFILES) $(BOFILES)

fclean: clean
	rm -f $(NAME)

re: fclean all

test: libft.a
	cc test.c libft.a -o test

.PHONY: all bonus clean fclean re test
