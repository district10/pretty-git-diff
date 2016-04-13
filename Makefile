.PHONY: all clean install

all: bin/aha.exe

bin/aha.exe: bin/aha.c
	gcc -std=c99 $(CFLAGS) $(LDFLAGS) $(CPPFLAGS) $< -o $@

clean:
	@rm bin/aha.exe

gh:
	git add -A; git commit -m "`date` - `uname`$(CMTMSG)"; git push
