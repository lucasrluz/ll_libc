CC = gcc
CFLAGS = -Wall -Wextra -Iinclude

SOURCES = main.c $(shell find src -type f -name "*.c")
TARGET = main

all: $(TARGET)

$(TARGET): $(SOURCES)
	$(CC) $(CFLAGS) $(SOURCES) -o $(TARGET)

clean:
	rm -f $(TARGET)

.PHONY: all clean
