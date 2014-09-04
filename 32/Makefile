CFLAGS=-fPIC -shared -m32 -Wall -O2
LDFLAGS=-lelfhacks

LIB32 ?= "/usr/local/lib32"

ALL: all
all: glsync dlsymhook fps ldinfo


dlsymhook: ../dlsymhook.c
	$(CC) $(CFLAGS) $(LDFLAGS) $< -o dlsymhook.so

fps: ../fps.c
	$(CC) $(CFLAGS) $(LDFLAGS) $< -o fps.so

ldinfo: ../ldinfo.c
	$(CC) $(CFLAGS) $(LDFLAGS) $< -o ldinfo.so

glsync: ../glsync.c
	$(CC) $(CFLAGS) $(LDFLAGS) $< -lGL -o glsync.so

install: all
	cp -v *.so $(LIB32)

clean:
	rm -vf *.so

