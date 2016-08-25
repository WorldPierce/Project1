CC = gcc
DEPS = node.h
OBJ = main.c node.c

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

main: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

run:
	./main

.PHONY: clean
clean:
	rm -f *.o *~ main