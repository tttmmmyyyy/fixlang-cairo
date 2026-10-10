# Cairo.ImageSurface

Defined in cairo-fix@0.4.2

Image surfaces, which draw into a pixel buffer in memory.

`create(format, (width, height))` makes a surface whose bytes are all 0.
`get_data` reads the bytes of the pixels out of a surface, and `write_data` writes them into it.
The bytes are `stride * height` long, where `stride = stride_for_width(format, width)` is the number of bytes of a row.

## Examples

```fix
let surface = *ImageSurface::create(argb, (3_I32, 2_I32));
let stride = stride_for_width(argb, 3_I32).i64;
surface.write_data(fill(stride * 2, 255_U8));; // Fill the surface with opaque white.
let data = *surface.get_data;
assert_eq(|_|"", data.@size, stride * 2);;
assert_eq(|_|"", data.@(0), 255_U8)
```

## Values

### namespace Cairo.ImageSurface

#### create

Type: `Cairo::Format -> (Std::I32, Std::I32) -> Std::IO Cairo::Surface`

#### get_data

Type: `Cairo::Surface -> Std::IO (Std::Array Std::U8)`

#### get_format

Type: `Cairo::Surface -> Cairo::Format`

#### get_height

Type: `Cairo::Surface -> Std::I32`

#### get_width

Type: `Cairo::Surface -> Std::I32`

#### write_data

Type: `Std::Array Std::U8 -> Cairo::Surface -> Std::IO ()`

## Types and aliases

## Traits and aliases

## Trait implementations