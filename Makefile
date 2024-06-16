# For Apple Silicon macOS, where cairo, X11 and Xext are installed via Homebrew for arm64.
# INCLUDE := -I/opt/homebrew/opt/cairo/include/cairo -I/opt/homebrew/opt/libx11/include
# LIBPATH := -L/opt/homebrew/opt/cairo/lib -L/opt/homebrew/opt/libx11/lib -L/opt/homebrew/Cellar/libxext/1.3.6/lib

# For Linux:
INCLUDE := `pkg-config cairo --cflags` `pkg-config x11 --cflags`
LIBPATH := `pkg-config cairo --libs-only-L` `pkg-config X11 --libs-only-L`

clean:
	fix clean
	rm -f libfixcairox.so

example_image:
	fix build -f ./examples/hello_world_image.fix cairo.fix cairo.image_surface.fix -d cairo

example_xlib: libfixcairox.so
	fix build -f ./examples/hello_world_xlib.fix cairo.fix cairo.xlib_surface.fix -L. -d fixcairox cairo X11 Xext

example_game_of_life_xlib: libfixcairox.so
	fix build -f ./examples/game_of_life_xlib.fix cairo.fix cairo.xlib_surface.fix -L. $(LIBPATH) -d fixcairox cairo X11 Xext

libfixcairox.so: cairo.xlib_surface.c
	gcc $(INCLUDE) $(LIBPATH) -lcairo -lX11 -lXext -shared -fPIC -o libfixcairox.so cairo.xlib_surface.c