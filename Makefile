.PHONY: all
.PHONY: clean
.PHONY: main.c
all: main.c CLA.c

run: main.c CLA.c
	./main.o

main.c:
	gcc -g   -o main.o main.c CLA.c  -lreadline -lm -Wall -Werror -Wformat-security

debug: main.c
	gdb main.o
dist: main.c
	mv main.o pc
clean:
	rm *.o
	