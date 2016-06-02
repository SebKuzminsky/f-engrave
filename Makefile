.PHONY: all
all: f-engrave
	make -C TTF2CXF_STREAM linux

f-engrave: f-engrave-158.py
	cat $< | fromdos > $@

.PHONY: install
install: f-engrave
	install -d $(DESTDIR)/bin
	install -m 755 f-engrave $(DESTDIR)/bin/f-engrave
	make -C TTF2CXF_STREAM install

clean:
	rm -f f-engrave
