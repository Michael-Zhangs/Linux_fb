OBJ=main.o libfb.o
cc=gcc

main:$(OBJ) 
	cc $(OBJ) -o main

libfb.o:libfb.c libfb.h
	cc libfb.c -c

main.o:main.c libfb.h
	cc main.c -c

run:main
	sudo ./main

clean:
	-rm *.o
	-rm main
