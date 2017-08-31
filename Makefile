.PHONY: clean

CFLAGS := $(shell pkg-config --libs --cflags \
	gtk+-2.0 gdk-2.0 x11 xcomposite xfixes)

colorpicker: main.c
	cc -o colorpicker main.c $(CFLAGS)

clean:
	rm -f colorpicker
