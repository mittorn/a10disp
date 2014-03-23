PREFIX ?=/usr/local
CC ?= gcc
CFLAGS ?= -g -O2
all : a10disp

install : bin/a10disp
	install -m 0755 bin/a10disp $(PREFIX)/bin

uninstall : $(PREFIX)/bin/a10disp
	rm -f $(PREFIX)/bin/a10disp

a10disp : a10disp.c
	$(CC) -Wall $(CFLAGS) a10disp.c -o bin/a10disp

clean :
	rm -f bin/a10disp
