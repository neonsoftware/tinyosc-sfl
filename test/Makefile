test: clean
	#clang-format -i -style=file ../*.h *.c
	cc -g -Wall -Wextra -pedantic -std=c99 -I.. test.c -o test 
	#valgrind ./test

clean:
	rm -fr test *.dSYM
