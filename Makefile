FLAG = -Wall -Wextra -Werror

NAME = libft.a

INCLUDE = libft.h

SRC =	ft_isdigit.c ft_islower.c ft_isupper.c ft_isalpha.c \
		ft_isalnum.c ft_isascii.c ft_isspace.c \
		ft_isprint.c ft_tolower.c ft_toupper.c \
		ft_strlcpy.c ft_strlcat.c ft_strchr.c ft_strrchr.c \
		ft_strcmp.c ft_strncmp.c ft_strstr.c ft_strnstr.c \
		ft_strcpy.c ft_strjoin.c ft_substr.c ft_strdup.c \
		ft_putchar.c ft_putendl.c ft_putstr.c ft_putnbr.c \
		ft_putchar_fd.c ft_putstr_fd.c ft_putnbr_fd.c ft_putendl_fd.c\
		ft_strlen.c ft_bzero.c \
		ft_memset.c ft_memcpy.c ft_memccpy.c ft_memmove.c \
		ft_memchr.c ft_memcmp.c \
		ft_calloc.c ft_realloc.c\
		ft_itoa.c ft_atoi.c
		
OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME):$(SRC) $(OBJ) $(INCLUDE)
		ar rc $(NAME) $(OBJ)
		ranlib $(NAME)

%.o: %.c
		gcc $(FLAG) -c $< -o $@

clean:
		rm -f $(OBJ)

fclean: clean
		rm -f $(NAME)

re: fclean all