# For macOS, you need to install cairo and libx11, libext by homebrew, and install XQuartz.
CFLAGS := $(shell pkg-config --cflags cairo x11 xext)

cairo.xlib_surface.o: cairo.xlib_surface.c
	gcc $(CFLAGS) -c -o cairo.xlib_surface.o cairo.xlib_surface.c