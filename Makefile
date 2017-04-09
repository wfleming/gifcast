.PHONY: install uninstall man

PREFIX ?= /usr/local
MANPREFIX ?= $(PREFIX)/share/man

man/gifcast.1: man/gifcast.1.markdown
	docker run --rm --interactive thorisalaptop/kramdown-man <$< >$@

man: man/gifcast.1

install:
	install -Dm755 bin/gifcast $(DESTDIR)/$(PREFIX)/bin/gifcast
	install -Dm644 man/gifcast.1 $(DESTDIR)/$(MANPREFIX)/man1/gifcast.1

uninstall:
	$(RM) $(DESTDIR)/$(PREFIX)/bin/gifcast \
		$(DESTDIR)/$(MANPREFIX)/man1/gifcast.1
