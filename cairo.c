#include <cairo.h>

// cairo_matrix_t *cairo_fixlang_allocate_matrix(double xx, double yx, double xy, double yy, double x0, double y0)
// {
//     cairo_matrix_t *matrix = (cairo_matrix_t *)malloc(sizeof(cairo_matrix_t));
//     matrix->xx = xx;
//     matrix->yx = yx;
//     matrix->xy = xy;
//     matrix->yy = yy;
//     matrix->x0 = x0;
//     matrix->y0 = y0;
//     return matrix;
// }

// void cairo_fixlang_free_matrix(cairo_matrix_t *matrix)
// {
//     free(matrix);
// }

// void cairo_fixlang_get_matrix_elements(cairo_matrix_t *matrix, double *elems)
// {
//     elems[0] = matrix->xx;
//     elems[1] = matrix->yx;
//     elems[2] = matrix->xy;
//     elems[3] = matrix->yy;
//     elems[4] = matrix->x0;
//     elems[5] = matrix->y0;
// }

// cairo_rectangle_int_t *cairo_fixlang_allocate_rectangle_int(int x, int y, int width, int height)
// {
//     cairo_rectangle_int_t *rect = (cairo_rectangle_int_t *)malloc(sizeof(cairo_rectangle_int_t));
//     rect->x = x;
//     rect->y = y;
//     rect->width = width;
//     rect->height = height;
//     return rect;
// }

// void cairo_fixlang_free_rectangle_int(cairo_rectangle_int_t *rect)
// {
//     free(rect);
// }

// void cairo_fixlang_get_rectangle_int_elements(cairo_rectangle_int_t *rect, int *elems)
// {
//     elems[0] = rect->x;
//     elems[1] = rect->y;
//     elems[2] = rect->width;
//     elems[3] = rect->height;
// }

// cairo_font_extents_t *cairo_fixlang_allocate_font_extents(double ascent, double descent, double height, double max_x_advance, double max_y_advance)
// {
//     cairo_font_extents_t *extents = (cairo_font_extents_t *)malloc(sizeof(cairo_font_extents_t));
//     extents->ascent = ascent;
//     extents->descent = descent;
//     extents->height = height;
//     extents->max_x_advance = max_x_advance;
//     extents->max_y_advance = max_y_advance;
//     return extents;
// }

// void cairo_fixlang_free_font_extents(cairo_font_extents_t *extents)
// {
//     free(extents);
// }

// void cairo_fixlang_font_extents_get_elements(cairo_font_extents_t *extents, double *elems)
// {
//     elems[0] = extents->ascent;
//     elems[1] = extents->descent;
//     elems[2] = extents->height;
//     elems[3] = extents->max_x_advance;
//     elems[4] = extents->max_y_advance;
// }

// cairo_text_extents_t *cairo_fixlang_allocate_text_extents(double x_bearing, double y_bearing, double width, double height, double x_advance, double y_advance)
// {
//     cairo_text_extents_t *extents = (cairo_text_extents_t *)malloc(sizeof(cairo_text_extents_t));
//     extents->x_bearing = x_bearing;
//     extents->y_bearing = y_bearing;
//     extents->width = width;
//     extents->height = height;
//     extents->x_advance = x_advance;
//     extents->y_advance = y_advance;
//     return extents;
// }

// void cairo_fixlang_free_text_extents(cairo_text_extents_t *extents)
// {
//     free(extents);
// }

// void cairo_fixlang_text_extents_get_elements(cairo_text_extents_t *extents, double *elems)
// {
//     elems[0] = extents->x_bearing;
//     elems[1] = extents->y_bearing;
//     elems[2] = extents->width;
//     elems[3] = extents->height;
//     elems[4] = extents->x_advance;
//     elems[5] = extents->y_advance;
// }