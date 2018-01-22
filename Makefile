SYSCONFDIR ?= /etc
BINDIR ?= /bin

all:

install:
	install -d $(DESTDIR)$(BINDIR)
	install -m 0755 bin/* $(DESTDIR)$(BINDIR)
	
	install -d $(DESTDIR)$(SYSCONFDIR)
	install -m 0644 repo-daemon.conf $(DESTDIR)$(SYSCONFDIR)

.PHONY: install 
