clean:
	fix clean
	rm -f libcairo_backend_x11.so

run_example_image: 
	fix run -f ./examples/hello_world_image.fix cairo.fix -d cairo_fixlang

run_example_xlib: libcairo_fixlang_xlib_surface.so
	fix run -f ./examples/hello_world_xlib.fix cairo.fix cairo.xlib_surface.fix -L. -d cairo_fixlang X11 cairo_fixlang_xlib_surface 

libcairo_fixlang_xlib_surface.so:
	gcc -I /usr/include/cairo -shared -fPIC -o libcairo_fixlang_xlib_surface.so cairo.xlib_surface.c
