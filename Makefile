CC = gcc
CFLAGS = -Wall
LIBS = -lcjson

OUT = build/main

all: $(OUT)
	./$<

$(OUT): build/main.o build/cJSON.o
	$(CC) $(CFLAGS) -o $@ $^ $(LIBS)

build/main.o: src/main.c
	$(CC) $(CFLAGS) -c -o $@ $<

build/cJSON.o: src/json.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean: $(OUT) build/main.o build/cJSON.o 
	@rm -f $^