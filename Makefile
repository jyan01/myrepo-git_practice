base: base.o binary.o
	gcc base.o binary.o -o base

base.o: base.c binary.h
	gcc -c base.c

binary.o: binary.c binary.h
	gcc -c binary.c

clean:
	rm base base.o binary.o
