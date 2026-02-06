CC = gcc
CFLAGS = -g -O2 -Wall -Wextra -Werror -pedantic

# -MMD generates dependency (.d) files alongside object (.o) files
# -MP adds dummy targets for headers to avoid errors if a header is deleted
DEPFLAGS = -MMD -MP

SRCS = $(wildcard *.c)
OBJS = $(SRCS:.c=.o)
DEPS = $(SRCS:.c=.d)

TARGET = program.exe

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $@

%.o: %.c
	$(CC) $(CFLAGS) $(DEPFLAGS) -c $< -o $@

-include $(DEPS)

.PHONY: all clean

clean:
	rm -f $(TARGET) $(OBJS) $(deps)
