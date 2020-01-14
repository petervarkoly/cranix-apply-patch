DESTDIR         = /

install:
	mkdir -p $(DESTDIR)/usr/share/oss/plugins/clients/start
	mkdir -p $(DESTDIR)/srv/salt/{packages,regs}
	install -m 755 090_apply_registries.sh $(DESTDIR)/usr/share/oss/plugins/clients/start
	install -m 755 regs/* $(DESTDIR)/srv/salt/regs
	install -m 644 packages/* $(DESTDIR)/srv/salt/packages

