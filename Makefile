SUBDIRS = tools tests libabigail

.PHONY: clean subdirs $(SUBDIRS) test

subdirs: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@

# currently only libabigail is tested when smeagol is ready
# test that too
test:
	$(MAKE) -C tools
	$(MAKE) -C tests test
	$(MAKE) -C libabigail test

clean:
	rm -f *~ *.o *.so
	for dir in $(SUBDIRS); do \
          $(MAKE) -C $$dir clean; \
        done

