
VERSION=6.0.0
XSTOOLS_TAR=tools-iso.tar.bz2
XSTOOLS_ISO=xs-tools-$(VERSION).iso
XSTOOLS_DIR=/usr/share/xcp/packages/iso
XSTOOLS_ISO_PATH=opt/xensource/packages/iso/$(XSTOOLS_ISO)

DESTDIR?=

$(XSTOOLS_ISO): get-xs-tools.sh
	./get-xs-tools.sh

.PHONY: install
install: $(XSTOOLS_ISO)
	mkdir -p $(XSTOOLS_DIR)
	cp $(XSTOOLS_ISO_PATH) $(DESTDIR)/$(XSTOOLS_DIR)

.PHONY: clean
clean:
	rm -f $(XSTOOLS_TAR) $(XSTOOLS_ISO)
