# Compiler
CC = gcc

# Compiler Flags
CFLAGS = -g -Wall

# Target binary program
TARGET = clox

# Source files
SRCS = $(wildcard *.c)

# Object files
OBJS = $(SRCS:.c=.o)

# Rule to link object files to create target binary
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

# Rule to compile source files into object files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Rule to clean object and binary files
clean:
	rm -f $(OBJS) $(TARGET)

