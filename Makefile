DESTDIR         = /

install:
	mkdir -p $(DESTDIR)/usr/share/oss/plugins/clients/start
	mkdir -p $(DESTDIR)/srv/salt/{packages,REGS}
	install -m 755 090_apply_registries.sh $(DESTDIR)/usr/share/oss/plugins/clients/start
	install -m 755 REGS/* $(DESTDIR)/srv/salt/REGS
	install -m 644 packages/* $(DESTDIR)/srv/salt/packages

