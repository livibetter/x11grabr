CFLAGS  += -g 
LDFLAGS += -lX11 -lXext -lXfixes -lgmp

all: x11grabr

x11grabr: x11grabr.o options.o

x11grabr.o: x11grabr.c x11grabr.h options.h

options.o: options.c options.h util.h

clean:
	rm -f x11grabr x11grabr.o options.o

.PHONY: clean
