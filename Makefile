mad-fc: main.o
	cc -o mad-fc main.o

main.o: src/main.c
	cc -c src/main.c
