CFLAGS=-fPIC -shared -m64 -Wall -O2
LDFLAGS=-lelfhacks

LIB64 ?= "/usr/local/lib64"

ALL: all
all: dlsymhook fps ldinfo glsync


dlsymhook: ../dlsymhook.c
	$(CC) $(CFLAGS) $(LDFLAGS) $< -o dlsymhook.so

fps: ../fps.c
	$(CC) $(CFLAGS) $(LDFLAGS) $< -o fps.so

ldinfo: ../ldinfo.c
	$(CC) $(CFLAGS) $(LDFLAGS) $< -o ldinfo.so

glsync: ../glsync.c
	$(CC) $(CFLAGS) $(LDFLAGS) $< -lGL -o glsync.so

install: all
	cp -v *.so $(LIB64)

clean:
	rm -vf *.so

