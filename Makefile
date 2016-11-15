# gcc flags 
# -c                       Compile and assemble, but do not link
# -o <file>                Place the output into <file>
# -Wall                    Turns on all optional warnings which are desirable for normal code
# -l <library>             Search the library named <library> when linking
# Makefile for raspbery pi 3

TARGET = display-pcm
CFLAGS = -O3 -g -Wall
LIBRARY = asound

CPP = arm-linux-gnueabihf-c++
CC  = arm-linux-gnueabihf-gcc

all:
	gcc $(CFLAGS) -c *.c
	gcc -o $(TARGET) *.o -l $(LIBRARY)

rebuild: clean all

clean:
	rm -rf $(TARGET)
	rm -rf *.o
	rm -rf *.log
