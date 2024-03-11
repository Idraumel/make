CC=gcc
CFLAGS=-W -Wall -Wextra -Werror -O0
# dependencies
DEPS=IntTable.h
# obj files
OBJ=IntTable.o
# output executable
TARGET=IntTable

# declare obj file dependencies
%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

# link obj files
all: $(OBJ)
	$(CC) -o $(TARGET) $^

# clean up
clean:
	rm -f $(OBJ) $(TARGET)