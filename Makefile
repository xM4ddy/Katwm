CFLAGS+= -Wall -Wno-unused-function
LDADD+= -lX11 
LDFLAGS=
EXEC=katwm

PREFIX?= /usr
BINDIR?= $(PREFIX)/bin

CC=gcc

all: $(EXEC)

katwm: katwm.o
	$(CC) $(LDFLAGS) -Os -o $@ $+ $(LDADD)

install: all
	install -Dm 755 katwm $(DESTDIR)$(BINDIR)/katwm

clean:
	rm -f katwm *.o
