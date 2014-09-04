SUBDIRS=32 64
CLEANDIRS=$(SUBDIRS:%=clean-%)
INSTALLDIRS=$(SUBDIRS:%=install-%)

LIB64 = "/usr/local/lib64"
LIB32 = "/usr/local/lib32"

.PHONY: subdirs $(SUBDIRS)
subdirs: $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@

clean: $(CLEANDIRS)
$(CLEANDIRS): 
	$(MAKE) -C $(@:clean-%=%) clean


install: $(INSTALLDIRS)
$(INSTALLDIRS):
	$(MAKE) -C $(@:install-%=%) install
