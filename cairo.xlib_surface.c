#include <X11/Xlib.h>
#include <cairo/cairo-xlib.h>
#include <cairo.h>

Window cairo_fixlang_xlib_surface_create_x_window(Display *display, int32_t width, int32_t height)
{
    XEvent event;
    Window win = XCreateSimpleWindow(display, RootWindow(display, DefaultScreen(display)),
                                     0, 0, width, height, 0,
                                     WhitePixel(display, DefaultScreen(display)),
                                     BlackPixel(display, DefaultScreen(display)));
    XMapWindow(display, win);
    XSelectInput(display, win, ExposureMask);
    while (1)
    {
        XNextEvent(display, &event);
        if (event.type == Expose)
            break;
    }
    return win;
}

cairo_surface_t *cairo_fixlang_xlib_surface_create_x_surface(Display *display, Window win, int32_t width, int32_t height)
{
    return cairo_xlib_surface_create(display, win, DefaultVisual(display, 0), width, height);
}