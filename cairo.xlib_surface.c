#include <X11/Xlib.h>
#include <cairo/cairo-xlib.h>
#include <X11/extensions/Xdbe.h>
#include <cairo.h>
#include <stdlib.h>

Window cairo_fixlang_xlib_surface_create_x_window(Display *display, int32_t width, int32_t height)
{
    XEvent event;
    Window win = XCreateSimpleWindow(display, RootWindow(display, DefaultScreen(display)),
                                     0, 0, width, height, 0,
                                     WhitePixel(display, DefaultScreen(display)),
                                     BlackPixel(display, DefaultScreen(display)));
    XMapWindow(display, win);
    return win;
}

cairo_surface_t *cairo_fixlang_xlib_surface_create_x_surface(Display *display, Window win, int32_t width, int32_t height)
{
    return cairo_xlib_surface_create(display, win, DefaultVisual(display, 0), width, height);
}

XEvent *cairo_fixlang_xlib_allocate_event()
{
    return (XEvent *)malloc(sizeof(XEvent));
}

void cairo_fixlang_xlib_free_event(XEvent *event)
{
    free(event);
}

XEvent *cairo_fixlang_xlib_next_event(Display *display)
{
    XEvent *event = cairo_fixlang_xlib_allocate_event();
    XNextEvent(display, event);
    return event;
}

int32_t cairo_fixlang_xlib_event_type(XEvent *event)
{
    return event->type;
}

void cairo_fixlang_xlib_as_expose_event(XEvent *event, XExposeEvent *expose_event)
{
    *expose_event = event->xexpose;
}