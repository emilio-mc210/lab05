CC = gcc
CFLAGS = -Wall
LIBS = -lcjson
BUILD = build/
OUT = build/main

all: $(OUT)
	./$<

$(OUT): build/main.o build/cJSON.o
	$(CC) $(CFLAGS) -o $@ $^ $(LIBS)

build/main.o: src/main.c $(BUILD)
	$(CC) $(CFLAGS) -c -o $@ $<

build/cJSON.o: src/json.c $(BUILD)
	$(CC) $(CFLAGS) -c -o $@ $<

$(BUILD):
	mkdir build

clean: $(OUT) build/main.o build/cJSON.o 
	@rm -f $^