CAIRO_FLAGS :=`pkg-config cairo --cflags` `pkg-config cairo --libs`
X11_FLAGS := `pkg-config x11 --cflags` `pkg-config X11 --libs`

clean:
	fix clean
	rm -f libcairo_backend_x11.so

example_image:
	fix build -o i.out -f ./examples/hello_world_image.fix cairo.fix cairo.image_surface.fix -d cairo

example_xlib: libcairo_fixlang_xlib_surface.so
	fix build -o x.out -f ./examples/hello_world_xlib.fix cairo.fix cairo.xlib_surface.fix -L. -d cairo_fixlang_xlib_surface cairo X11 Xext

example_game_of_life_xlib: libcairo_fixlang_xlib_surface.so
	fix build -o l.out -f ./examples/game_of_life_xlib.fix cairo.fix cairo.xlib_surface.fix -L. -d cairo_fixlang_xlib_surface cairo X11 Xext

libcairo_fixlang_xlib_surface.so: cairo.xlib_surface.c
	gcc $(CAIRO_FLAGS) $(X11_FLAGS) -shared -fPIC -o libcairo_fixlang_xlib_surface.so cairo.xlib_surface.c
