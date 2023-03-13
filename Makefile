all: catch_signals

#CFLAGS?=-Wall -Werror -O2

catch_signals: catch_signals.c
	$(CC) $^ $(CFLAGS) $$(pkg-config --cflags --libs gtk+-3.0) -lm -o$@

install:

clean:
