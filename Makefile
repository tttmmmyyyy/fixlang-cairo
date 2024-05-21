clean:
	fix clean
	rm -f libcairo_backend_x11.so

run_example_image: 
	fix run -f ./examples/hello_world_image.fix cairo.fix -d cairo	

run_example_x11: build_xlib_lib
	fix run -f ./examples/hello_world_xlib.fix cairo.fix cairo.backend.xlib.fix -L. -d cairo X11 cairo_backend_xlib

# Compile `cairo.backend.xlib.c` into a shared library `libcairo_backend_xlib.so`.
build_xlib_lib:
	gcc -I /usr/include/cairo -shared -fPIC -o libcairo_backend_xlib.so cairo.backend.xlib.c