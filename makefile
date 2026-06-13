CC = gcc
OBJS = base.o binary.o
TARGET = base

$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET)

base.o: base.c binary.h
binary.o: binary.c binary.h

clean:
	rm $(TARGET) $(OBJS)
