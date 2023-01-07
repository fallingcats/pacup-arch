PREFIX = /usr

all:
	@printf "Run 'make install' to install pacup.\n"

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(PREFIX)/share
	@mkdir -p $(DESTDIR)$(PREFIX)/share/doc/
	@mkdir -p $(DESTDIR)$(PREFIX)/share/doc/pacup
	@mkdir -p $(DESTDIR)$(PREFIX)/share/applications
	@cp -p pacup $(DESTDIR)$(PREFIX)/bin/pacup
	@cp -p pacup-Manual.txt $(DESTDIR)$(PREFIX)/share/doc
	@cp -p pacup.desktop $(DESTDIR)$(PREFIX)/share/applications

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/pacup
	@rm -rf $(DESTDIR)$(PREFIX)/share/doc/pacup
	@rm -rf $(DESTDIR)$(PREFIX)/share/applications/pacup.desktop
