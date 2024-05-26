clean:
	fix clean
	rm -f libcairo_backend_x11.so

run_example_image:
	fix run -f ./examples/hello_world_image.fix cairo.fix cairo.image_surface.fix -d cairo

run_example_xlib: libcairo_fixlang_xlib_surface.so
	fix run -f ./examples/hello_world_xlib.fix cairo.fix cairo.xlib_surface.fix -L. -d cairo_fixlang_xlib_surface cairo X11 Xext

run_example_game_of_life_xlib: libcairo_fixlang_xlib_surface.so
	fix run -f ./examples/game_of_life_xlib.fix cairo.fix cairo.xlib_surface.fix -L. -d cairo_fixlang_xlib_surface cairo X11 Xext

libcairo_fixlang_xlib_surface.so: cairo.xlib_surface.c
	gcc -I /usr/include/cairo -shared -fPIC -o libcairo_fixlang_xlib_surface.so cairo.xlib_surface.c
