INSTALL?=install
RM?=rm -f
CP?=cp
RMD?=$(RM) -r
PREFIX?=/usr/local
BIN=bin
DOCS=/usr/share/doc/tasmotaread
MANS=man/man1
all:
	@echo "usage:"
	@echo "  sudo make install"
	@echo "  sudo make uninstall"

install:
#	$(INSTALL) -d $(PREFIX)/$(MANS)
	$(INSTALL) -m 0755 tasmotaread $(PREFIX)/$(BIN)
	$(INSTALL) -m 0644 README.md $(DOCS)
	$(INSTALL) -m 0644 LICENSE $(DOCS)
#	$(INSTALL) -m 0644 $(MANS)/tasmotaread.1 $(PREFIX)/$(MANS)

uninstall:
	$(RM) $(PREFIX)/$(BIN)/tasmotaread
	$(RMD) $(DOCS)
#	$(RM) $(PREFIX)/$(MANS)/tasmotaread.1
