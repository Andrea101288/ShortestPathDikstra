libreria: main.o libreria.o Makefile
	gcc -ansi -Wall -O main.o  libreria.o -o libreria -lm

main.o: main.c libreria.h Makefile
	gcc -ansi -Wall -O -c main.c

libreria.o: libreria.c Makefile
	gcc -ansi -Wall -O -c libreria.c

pulisci:
	rm -f main.o libreria.o

pulisci_tutto:
	rm -f libreria main.o libreria.o

