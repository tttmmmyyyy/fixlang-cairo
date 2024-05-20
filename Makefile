clean:
	fix clean
	rm -f libcairo_backend_x11.so

run_example_image: 
	fix run -f ./examples/hello_world_image.fix cairo.fix -d cairo	

run_example_x11: build_x11_lib
	fix run -f ./examples/hello_world_x11.fix cairo.fix cairo.backend.x11.fix -d cairo -d X11 -d cairo_backend_x11

# Compile `cairo.backend.x11.c` into a shared library `libcairo_backend_x11.so`.
build_x11_lib:
	gcc -I /usr/include/cairo -shared -fPIC -o libcairo_backend_x11.so cairo.backend.x11.c