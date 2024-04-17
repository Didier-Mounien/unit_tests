##
## EPITECH PROJECT, 2024
## Workshop_Unit_Tests
## File description:
## Makefile
##

NAME	=	my_str_to_word_array

NAME2	=	unit_tests

CC	=	gcc

RM	=	rm -f

CFLAGS	=	-W -Wall -Wextra -Werror -I./includes

SRC_MAIN	=	src/src_main/main.c

SRC_TESTS	=	$(shell find tests/ -name '*.c')

SRC	=	$(shell find src/ -name '*.c' -not -name 'main.c')

OBJ	=	$(SRC:.c=.o)

OBJ_MAIN	=	$(SRC_MAIN:.c=.o)

all:	$(NAME)

$(NAME):	$(OBJ) $(OBJ_MAIN)
	$(CC) -o $(NAME) $(OBJ) $(OBJ_MAIN) $(CFLAGS)

clean:
	$(RM) $(OBJ) $(OBJ_MAIN)

fclean:	clean
	$(RM) $(NAME)

re:	fclean all

tests_run:
	$(CC) -o $(NAME2) $(SRC_TESTS) $(SRC) $(CFLAGS) --coverage -lcriterion
	/.$(NAME2) && gcovr --exclude tests/ && gcovr --branches --exclude tests/

tests_clean:
	$(RM) $(OBJ_TEST) $(OBJ)

tests_fclean:	tests_clean
	$(RM) $(NAME2)

tests_re:	tests_fclean tests_run

.PHONY:	all clean fclean re
