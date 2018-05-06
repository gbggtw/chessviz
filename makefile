main: build build/main.o build/board.o build/board_print.o
	gcc  build/main.o build/board.o build/board_print.o -o bin/main

build/main.o: src/main.c
	gcc -std=c99 -Wall -Werror -c src/main.c -o build/main.o

build/board.o: src/board.c
	gcc -std=c99 -Wall -Werror -c src/board.c -o build/board.o

build/board_print.o: src/board_print.c
	gcc -std=c99 -Wall -Werror -c src/board_print.c -o build/board_print.o

.PHONY : clean
clean:
	rm -rf build/*.o