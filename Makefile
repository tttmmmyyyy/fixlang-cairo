# For macOS, you need to install cairo and libx11, libext by homebrew, and install XQuartz.
# INCLUDE := -I/opt/homebrew/opt/cairo/include/cairo -I/opt/homebrew/opt/libx11/include -I/usr/X11/include
# LIBPATH := -L/opt/homebrew/opt/cairo/lib -L/opt/homebrew/opt/libx11/lib

# For Linux:
INCLUDE := `pkg-config cairo --cflags` `pkg-config x11 --cflags`
LIBPATH := ``
# Or:
# LIBPATH := `pkg-config cairo --libs-only-L` `pkg-config X11 --libs-only-L`

cairo.xlib_surface.o: cairo.xlib_surface.c
	gcc $(INCLUDE) $(LIBPATH) -c -o cairo.xlib_surface.o cairo.xlib_surface.c