##
## EPITECH PROJECT, 2020
## FUN_day1_2020
## File description:
## Makefile
##

## USEFUL DEF ########################################
CC		=	ghc
RM		=	-rm -f
#######################################################

## Sources ############################################
MAIN		=	My.hs

TEST_DIR	=	unit_tests/

TEST_MAIN	=	$(addsuffix .hs, Main)

TEST_SRC	=	$(addprefix $(TEST_DIR), UnitTestMy.hs)
#######################################################

## FLAGS ##############################################
CFLAGS		=	-Wall -Wextra
#######################################################

## NAMES ##############################################
BIN			=   my
TEST_BIN	=	unit_test
#######################################################

## RULES ##############################################
.PHONY: all
all:	$(BIN)
$(BIN): $(MAIN)
	$(CC) -o $(BIN) $(MAIN)

.PHONY: tests_run
tests_run: $(TEST_BIN) fclean
$(TEST_BIN): $(TEST_MAIN) $(TEST_SRC)
	$(CC) -o $(TEST_BIN) $(TEST_MAIN) $(TEST_SRC)
	./$(TEST_BIN)
	@$(RM) $(TEST_BIN)

## Clear rules
.PHONY: clean
clean:
	@$(RM) $(BIN)
	@$(RM) $(TEST_BIN)

.PHONY: fclean
fclean: clean
	@$(RM)	*.hi
	@$(RM)	*.o
	@$(RM)	$(TEST_DIR)*.hi
	@$(RM)	$(TEST_DIR)*.o

.PHONY: re
re:	fclean all clean
