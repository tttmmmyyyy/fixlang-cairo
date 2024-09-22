# For Apple Silicon macOS, where cairo, X11 and Xext are installed via Homebrew for arm64.
# INCLUDE := -I/opt/homebrew/opt/cairo/include/cairo -I/opt/homebrew/opt/libx11/include
# LIBPATH := -L/opt/homebrew/opt/cairo/lib -L/opt/homebrew/opt/libx11/lib -L/opt/homebrew/Cellar/libxext/1.3.6/lib

# For Linux:
INCLUDE := `pkg-config cairo --cflags` `pkg-config x11 --cflags`
LIBPATH := ``
# Or:
# LIBPATH := `pkg-config cairo --libs-only-L` `pkg-config X11 --libs-only-L`

libfixcairox11.a: cairo.xlib_surface.c
	gcc $(INCLUDE) $(LIBPATH) -lcairo -lX11 -lXext -c -o cairo.xlib_surface.o cairo.xlib_surface.c
	ar rc libfixcairox11.a cairo.xlib_surface.o