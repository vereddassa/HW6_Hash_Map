CC = gcc
CCLINK = $(CC)
CFLAGS = -g -Wall -std=c99
OBJS = ransom.o 
EXEC = prog.exe
RM = rm -rf *.o *.exe

###### Rules #######

$(EXEC): $(OBJS)
	$(CCLINK) $(OBJS) -o $(EXEC)

#Short syntax - make performs $(CC) $(CFLAGS) -c TARGET.c by default
ransom.o: ransom.c 

clean:
	$(RM)
