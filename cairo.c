#include <cairo.h>

cairo_matrix_t *cairo_fixlang_allocate_matrix(double xx, double yx, double xy, double yy, double x0, double y0)
{
    cairo_matrix_t *matrix = (cairo_matrix_t *)malloc(sizeof(cairo_matrix_t));
    matrix->xx = xx;
    matrix->yx = yx;
    matrix->xy = xy;
    matrix->yy = yy;
    matrix->x0 = x0;
    matrix->y0 = y0;
    return matrix;
}

void cairo_fixlang_free_matrix(cairo_matrix_t *matrix)
{
    free(matrix);
}

void cairo_fixlang_get_matrix_elements(cairo_matrix_t *matrix, double *elems)
{
    elems[0] = matrix->xx;
    elems[1] = matrix->yx;
    elems[2] = matrix->xy;
    elems[3] = matrix->yy;
    elems[4] = matrix->x0;
    elems[5] = matrix->y0;
}

cairo_rectangle_int_t *cairo_fixlang_allocate_rectangle_int(int x, int y, int width, int height)
{
    cairo_rectangle_int_t *rect = (cairo_rectangle_int_t *)malloc(sizeof(cairo_rectangle_int_t));
    rect->x = x;
    rect->y = y;
    rect->width = width;
    rect->height = height;
    return rect;
}

void cairo_fixlang_free_rectangle_int(cairo_rectangle_int_t *rect)
{
    free(rect);
}

void cairo_fixlang_get_rectangle_int_elements(cairo_rectangle_int_t *rect, int *elems)
{
    elems[0] = rect->x;
    elems[1] = rect->y;
    elems[2] = rect->width;
    elems[3] = rect->height;
}