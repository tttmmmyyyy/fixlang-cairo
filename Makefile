clean:
	fix clean
	rm -f libcairo_backend_x11.so

run_example_image: build_lib
	fix run -f ./examples/hello_world_image.fix cairo.fix -d cairo_fixlang

run_example_xlib: build_lib_xlib build_lib
	fix run -f ./examples/hello_world_xlib.fix cairo.fix cairo.backend.xlib.fix -L. -d cairo_fixlang X11 cairo_fixlang_xlib 

# Compile `cairo.backend.xlib.c` into a shared library `libcairo_fixlang_xlib.so`.
build_lib_xlib:
	gcc -I /usr/include/cairo -shared -fPIC -o libcairo_fixlang_xlib.so cairo.backend.xlib.c
