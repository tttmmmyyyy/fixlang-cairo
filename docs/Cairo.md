# `module Cairo`

# Types and aliases

## `namespace Cairo`

### `type Antialias = Std::I32`

### `type Cairo = unbox struct { ...fields... }`

#### field `_dtor : Std::FFI::Destructor Std::Ptr`

### `type CairoHandle = Std::Ptr`

### `type Content = Std::I32`

### `type Extend = Std::I32`

### `type FillRule = Std::I32`

### `type Filter = Std::I32`

### `type FontExtents = unbox struct { ...fields... }`

#### field `ascent : Std::F64`

#### field `descent : Std::F64`

#### field `height : Std::F64`

#### field `max_x_advance : Std::F64`

#### field `max_y_advance : Std::F64`

### `type FontFace = unbox struct { ...fields... }`

#### field `_dtor : Std::FFI::Destructor Std::Ptr`

### `type FontOptions = unbox struct { ...fields... }`

#### field `_dtor : Std::FFI::Destructor Std::Ptr`

### `type FontSlant = Std::I32`

### `type FontType = Std::I32`

### `type FontWeight = Std::I32`

### `type Format = Std::I32`

### `type Glyph = unbox struct { ...fields... }`

#### field `index : Std::U64`

#### field `x : Std::F64`

#### field `y : Std::F64`

### `type HintMetrics = Std::I32`

### `type HintStyle = Std::I32`

### `type LineCap = Std::I32`

### `type LineJoin = Std::I32`

### `type Matrix = unbox struct { ...fields... }`

#### field `xx : Std::F64`

#### field `yx : Std::F64`

#### field `xy : Std::F64`

#### field `yy : Std::F64`

#### field `x0 : Std::F64`

#### field `y0 : Std::F64`

### `type Operator = Std::I32`

### `type Overlap = Std::I32`

### `type Path = unbox struct { ...fields... }`

#### field `_dtor : Std::FFI::Destructor Std::Ptr`

### `type Pattern = unbox struct { ...fields... }`

#### field `_dtor : Std::FFI::Destructor Std::Ptr`

### `type PatternType = Std::I32`

### `type RectangleInt = unbox struct { ...fields... }`

#### field `x : Std::I32`

#### field `y : Std::I32`

#### field `width : Std::I32`

#### field `height : Std::I32`

### `type RectangleList = unbox struct { ...fields... }`

#### field `_dtor : Std::FFI::Destructor Std::Ptr`

### `type Region = unbox struct { ...fields... }`

#### field `_dtor : Std::FFI::Destructor Std::Ptr`

### `type ScaledFont = unbox struct { ...fields... }`

#### field `_dtor : Std::FFI::Destructor Std::Ptr`

### `type Status = Std::I32`

### `type SubpixelOrder = Std::I32`

### `type Surface = unbox struct { ...fields... }`

#### field `_dtor : Std::FFI::Destructor Std::Ptr`

### `type TextCluster = unbox struct { ...fields... }`

#### field `num_bytes : Std::I32`

#### field `num_glyphs : Std::I32`

### `type TextClusterFlags = Std::U32`

### `type TextExtents = unbox struct { ...fields... }`

#### field `x_bearing : Std::F64`

#### field `y_bearing : Std::F64`

#### field `width : Std::F64`

#### field `height : Std::F64`

#### field `x_advance : Std::F64`

#### field `y_advance : Std::F64`

## `namespace Cairo::FontFace`

### `type FontFaceHandle = Std::Ptr`

## `namespace Cairo::FontOptions`

### `type FontOptionsHandle = Std::Ptr`

## `namespace Cairo::Path`

### `type PathHandle = Std::Ptr`

## `namespace Cairo::Pattern`

### `type PatternHandle = Std::Ptr`

## `namespace Cairo::RectangleList`

### `type RectangleListHandle = Std::Ptr`

## `namespace Cairo::Region`

### `type RegionHandle = Std::Ptr`

## `namespace Cairo::ScaledFont`

### `type ScaledFontHandle = Std::Ptr`

## `namespace Cairo::Surface`

### `type SurfaceHandle = Std::Ptr`

# Traits and aliases

# Trait implementations

# Values

## `namespace Cairo`

### `_borrow : (Std::Ptr -> a) -> Cairo::Cairo -> a`

### `_borrow_io : (Std::Ptr -> Std::IO a) -> Cairo::Cairo -> Std::IO a`

### `append_path : Cairo::Path -> Cairo::Cairo -> Std::IO ()`

### `arc : (Std::F64, Std::F64) -> Std::F64 -> Std::F64 -> Std::F64 -> Cairo::Cairo -> Std::IO ()`

### `arc_negative : (Std::F64, Std::F64) -> Std::F64 -> Std::F64 -> Std::F64 -> Cairo::Cairo -> Std::IO ()`

### `clip : Cairo::Cairo -> Std::IO ()`

### `clip_extents : Cairo::Cairo -> Std::IO (Std::F64, Std::F64, Std::F64, Std::F64)`

### `clip_preserve : Cairo::Cairo -> Std::IO ()`

### `close_path : Cairo::Cairo -> Std::IO ()`

### `copy_clip_rectangle_list : Cairo::Cairo -> Std::IO Cairo::RectangleList`

### `copy_page : Cairo::Cairo -> Std::IO ()`

### `copy_path : Cairo::Cairo -> Std::IO Cairo::Path`

### `copy_path_flat : Cairo::Cairo -> Std::IO Cairo::Path`

### `create : Cairo::Surface -> Std::IO Cairo::Cairo`

### `curve_to : (Std::F64, Std::F64) -> (Std::F64, Std::F64) -> (Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO ()`

### `device_to_user : (Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO (Std::F64, Std::F64)`

### `device_to_user_distance : (Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO (Std::F64, Std::F64)`

### `fill : Cairo::Cairo -> Std::IO ()`

### `fill_extents : Cairo::Cairo -> Std::IO (Std::F64, Std::F64, Std::F64, Std::F64)`

### `fill_preserve : Cairo::Cairo -> Std::IO ()`

### `font_extents : Cairo::Cairo -> Std::IO Cairo::FontExtents`

### `get_antialias : Cairo::Cairo -> Std::IO Std::I32`

### `get_current_point : Cairo::Cairo -> Std::IO (Std::F64, Std::F64)`

### `get_dash : Cairo::Cairo -> Std::IO (Std::Array Std::F64, Std::F64)`

### `get_dash_count : Cairo::Cairo -> Std::IO Std::I64`

### `get_fill_rule : Cairo::Cairo -> Std::IO Std::I32`

### `get_font_face : Cairo::Cairo -> Std::IO Cairo::FontFace`

### `get_font_matrix : Cairo::Cairo -> Std::IO Cairo::Matrix`

### `get_font_options : Cairo::Cairo -> Std::IO Cairo::FontOptions`

### `get_group_target : Cairo::Cairo -> Std::IO Cairo::Surface`

### `get_hairline : Cairo::Cairo -> Std::IO Std::Bool`

### `get_line_cap : Cairo::Cairo -> Std::IO Std::I32`

### `get_line_join : Cairo::Cairo -> Std::IO Std::I32`

### `get_line_width : Cairo::Cairo -> Std::IO Std::F64`

### `get_matrix : Cairo::Cairo -> Std::IO Cairo::Matrix`

### `get_miter_limit : Cairo::Cairo -> Std::IO Std::F64`

### `get_operator : Cairo::Cairo -> Std::IO Std::I32`

### `get_scaled_font : Cairo::Cairo -> Std::IO Cairo::ScaledFont`

### `get_source : Cairo::Cairo -> Std::IO Cairo::Pattern`

### `get_target : Cairo::Cairo -> Std::IO Cairo::Surface`

### `get_tolerance : Cairo::Cairo -> Std::IO Std::F64`

### `glyph_extents : Std::Array Cairo::Glyph -> Cairo::Cairo -> Std::IO Cairo::TextExtents`

### `glyph_path : Std::Array Cairo::Glyph -> Cairo::Cairo -> Std::IO ()`

### `has_current_point : Cairo::Cairo -> Std::IO Std::Bool`

### `identity_matrix : Cairo::Cairo -> Std::IO ()`

### `in_clip : (Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO Std::Bool`

### `in_fill : (Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO Std::Bool`

### `in_stroke : (Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO Std::Bool`

### `line_to : (Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO ()`

### `mask : Cairo::Pattern -> Cairo::Cairo -> Std::IO ()`

### `mask_surface : Cairo::Surface -> (Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO ()`

### `move_to : (Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO ()`

### `new_path : Cairo::Cairo -> Std::IO ()`

### `new_sub_path : Cairo::Cairo -> Std::IO ()`

### `paint : Cairo::Cairo -> Std::IO ()`

### `paint_with_alpha : Std::F64 -> Cairo::Cairo -> Std::IO ()`

### `path_extents : Cairo::Cairo -> Std::IO (Std::F64, Std::F64, Std::F64, Std::F64)`

### `pop_group : Cairo::Cairo -> Std::IO Cairo::Pattern`

### `pop_group_to_source : Cairo::Cairo -> Std::IO ()`

### `push_group : Cairo::Cairo -> Std::IO ()`

### `push_group_with_content : Std::I32 -> Cairo::Cairo -> Std::IO ()`

### `rectangle : (Std::F64, Std::F64) -> (Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO ()`

### `rel_curve_to : (Std::F64, Std::F64) -> (Std::F64, Std::F64) -> (Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO ()`

### `rel_line_to : (Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO ()`

### `rel_move_to : (Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO ()`

### `reset_clip : Cairo::Cairo -> Std::IO ()`

### `restore : Cairo::Cairo -> Std::IO ()`

### `rotate : Std::F64 -> Cairo::Cairo -> Std::IO ()`

### `save : Cairo::Cairo -> Std::IO ()`

### `scale : (Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO ()`

### `select_font_face : Std::String -> Std::I32 -> Std::I32 -> Cairo::Cairo -> Std::IO ()`

### `set_antialias : Std::I32 -> Cairo::Cairo -> Std::IO ()`

### `set_dash : Std::Array Std::F64 -> Std::F64 -> Cairo::Cairo -> Std::IO ()`

### `set_fill_rule : Std::I32 -> Cairo::Cairo -> Std::IO ()`

### `set_font_face : Cairo::FontFace -> Cairo::Cairo -> Std::IO ()`

### `set_font_matrix : Cairo::Matrix -> Cairo::Cairo -> Std::IO ()`

### `set_font_options : Cairo::FontOptions -> Cairo::Cairo -> Std::IO ()`

### `set_font_size : Std::F64 -> Cairo::Cairo -> Std::IO ()`

### `set_hairline : Std::Bool -> Cairo::Cairo -> Std::IO ()`

### `set_line_cap : Std::I32 -> Cairo::Cairo -> Std::IO ()`

### `set_line_join : Std::I32 -> Cairo::Cairo -> Std::IO ()`

### `set_line_width : Std::F64 -> Cairo::Cairo -> Std::IO ()`

### `set_matrix : Cairo::Matrix -> Cairo::Cairo -> Std::IO ()`

### `set_miter_limit : Std::F64 -> Cairo::Cairo -> Std::IO ()`

### `set_operator : Std::I32 -> Cairo::Cairo -> Std::IO ()`

### `set_scaled_font : Cairo::ScaledFont -> Cairo::Cairo -> Std::IO ()`

### `set_source : Cairo::Pattern -> Cairo::Cairo -> Std::IO ()`

### `set_source_rgb : (Std::F64, Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO ()`

### `set_source_rgba : (Std::F64, Std::F64, Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO ()`

### `set_source_surface : Cairo::Surface -> (Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO ()`

### `set_tolerance : Std::F64 -> Cairo::Cairo -> Std::IO ()`

### `show_glyphs : Std::Array Cairo::Glyph -> Cairo::Cairo -> Std::IO ()`

### `show_page : Cairo::Cairo -> Std::IO ()`

### `show_text : Std::String -> Cairo::Cairo -> Std::IO ()`

### `show_text_glyphs : Std::String -> Std::Array Cairo::Glyph -> Std::Array Cairo::TextCluster -> Std::U32 -> Cairo::Cairo -> Std::IO ()`

### `status : Cairo::Cairo -> Std::IO Std::I32`

### `stroke : Cairo::Cairo -> Std::IO ()`

### `stroke_extents : Cairo::Cairo -> Std::IO (Std::F64, Std::F64, Std::F64, Std::F64)`

### `stroke_preserve : Cairo::Cairo -> Std::IO ()`

### `text_extents : Std::String -> Cairo::Cairo -> Std::IO Cairo::TextExtents`

### `text_path : Std::String -> Cairo::Cairo -> Std::IO ()`

### `transform : Cairo::Matrix -> Cairo::Cairo -> Std::IO ()`

### `translate : (Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO ()`

### `user_to_device : (Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO (Std::F64, Std::F64)`

### `user_to_device_distance : (Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO (Std::F64, Std::F64)`

## `namespace Cairo::Antialias`

### `best : Std::I32`

### `default : Std::I32`

### `fast : Std::I32`

### `good : Std::I32`

### `gray : Std::I32`

### `none : Std::I32`

### `subpixel : Std::I32`

## `namespace Cairo::Content`

### `alpha : Std::I32`

### `color : Std::I32`

### `color_alpha : Std::I32`

## `namespace Cairo::Extend`

### `none : Std::I32`

### `pad : Std::I32`

### `reflect : Std::I32`

### `repeat : Std::I32`

## `namespace Cairo::FillRule`

### `even_odd : Std::I32`

### `winding : Std::I32`

## `namespace Cairo::Filter`

### `best : Std::I32`

### `bilinear : Std::I32`

### `fast : Std::I32`

### `gaussian : Std::I32`

### `good : Std::I32`

### `nearest : Std::I32`

## `namespace Cairo::FontExtents`

### `_mutate : (Std::Ptr -> Std::IO a) -> Cairo::FontExtents -> (Cairo::FontExtents, a)`

### `_mutate_io : (Std::Ptr -> Std::IO a) -> Cairo::FontExtents -> Std::IO (Cairo::FontExtents, a)`

### `create : Cairo::FontExtents`

## `namespace Cairo::FontFace`

### `_borrow : (Std::Ptr -> a) -> Cairo::FontFace -> a`

### `_borrow_io : (Std::Ptr -> Std::IO a) -> Cairo::FontFace -> Std::IO a`

### `_create_from_handle : Std::Ptr -> Cairo::FontFace`

### `get_type : Cairo::FontFace -> Std::I32`

### `status : Cairo::FontFace -> Std::I32`

## `namespace Cairo::FontOptions`

### `_borrow : (Std::Ptr -> a) -> Cairo::FontOptions -> a`

### `_borrow_io : (Std::Ptr -> Std::IO a) -> Cairo::FontOptions -> Std::IO a`

### `_create_from_handle : Std::Ptr -> Cairo::FontOptions`

### `_mutate : (Std::Ptr -> Std::IO a) -> Cairo::FontOptions -> (Cairo::FontOptions, a)`

### `default : Cairo::FontOptions`

### `equal : Cairo::FontOptions -> Cairo::FontOptions -> Std::Bool`

### `get_antialias : Cairo::FontOptions -> Std::I32`

### `get_hint_metrics : Cairo::FontOptions -> Std::I32`

### `get_hint_style : Cairo::FontOptions -> Std::I32`

### `get_subpixel_order : Cairo::FontOptions -> Std::I32`

### `get_variations : Cairo::FontOptions -> Std::String`

### `hash : Cairo::FontOptions -> Std::U64`

### `merge : Cairo::FontOptions -> Cairo::FontOptions -> Cairo::FontOptions`

### `set_antialias : Std::I32 -> Cairo::FontOptions -> Cairo::FontOptions`

### `set_hint_metrics : Std::I32 -> Cairo::FontOptions -> Cairo::FontOptions`

### `set_hint_style : Std::I32 -> Cairo::FontOptions -> Cairo::FontOptions`

### `set_subpixel_order : Std::I32 -> Cairo::FontOptions -> Cairo::FontOptions`

### `set_variations : Std::String -> Cairo::FontOptions -> Cairo::FontOptions`

### `status : Cairo::FontOptions -> Std::I32`

## `namespace Cairo::FontSlant`

### `italic : Std::I32`

### `normal : Std::I32`

### `oblique : Std::I32`

## `namespace Cairo::FontType`

### `ft : Std::I32`

### `quartz : Std::I32`

### `toy : Std::I32`

### `user : Std::I32`

### `win32 : Std::I32`

## `namespace Cairo::FontWeight`

### `bold : Std::I32`

### `normal : Std::I32`

## `namespace Cairo::Format`

### `a1 : Std::I32`

### `a8 : Std::I32`

### `argb : Std::I32`

### `rgb16_565 : Std::I32`

### `rgb24 : Std::I32`

### `rgb30 : Std::I32`

## `namespace Cairo::HintMetrics`

### `default : Std::I32`

### `off : Std::I32`

### `on : Std::I32`

## `namespace Cairo::HintStyle`

### `default : Std::I32`

### `full : Std::I32`

### `medium : Std::I32`

### `none : Std::I32`

### `slight : Std::I32`

## `namespace Cairo::LineCap`

### `butt : Std::I32`

### `round : Std::I32`

### `square : Std::I32`

## `namespace Cairo::LineJoin`

### `bevel : Std::I32`

### `miter : Std::I32`

### `round : Std::I32`

## `namespace Cairo::Matrix`

### `_borrow_io : (Std::Ptr -> Std::IO a) -> Cairo::Matrix -> Std::IO a`

### `_mutate : (Std::Ptr -> Std::IO a) -> Cairo::Matrix -> (Cairo::Matrix, a)`

### `_mutate_io : (Std::Ptr -> Std::IO a) -> Cairo::Matrix -> Std::IO (Cairo::Matrix, a)`

### `identity : Cairo::Matrix`

### `init_rotate : Std::F64 -> Cairo::Matrix`

### `init_scale : (Std::F64, Std::F64) -> Cairo::Matrix`

### `init_translate : (Std::F64, Std::F64) -> Cairo::Matrix`

### `invert : Cairo::Matrix -> Std::Option Cairo::Matrix`

### `multiply : Cairo::Matrix -> Cairo::Matrix -> Cairo::Matrix`

The transformation b.multiply(a) first applies the transformation a to the point and then applies the transformation b to the result.

### `rotate : Std::F64 -> Cairo::Matrix -> Cairo::Matrix`

### `scale : (Std::F64, Std::F64) -> Cairo::Matrix -> Cairo::Matrix`

### `transform_distance : (Std::F64, Std::F64) -> Cairo::Matrix -> (Std::F64, Std::F64)`

### `transform_point : (Std::F64, Std::F64) -> Cairo::Matrix -> (Std::F64, Std::F64)`

### `translate : (Std::F64, Std::F64) -> Cairo::Matrix -> Cairo::Matrix`

## `namespace Cairo::Operator`

### `add : Std::I32`

### `atop : Std::I32`

### `clear : Std::I32`

### `color_burn : Std::I32`

### `color_dodge : Std::I32`

### `darken : Std::I32`

### `dest : Std::I32`

### `dest_atop : Std::I32`

### `dest_in : Std::I32`

### `dest_out : Std::I32`

### `dest_over : Std::I32`

### `difference : Std::I32`

### `exclusion : Std::I32`

### `hard_light : Std::I32`

### `hsl_color : Std::I32`

### `hsl_hue : Std::I32`

### `hsl_luminosity : Std::I32`

### `hsl_saturation : Std::I32`

### `in_ : Std::I32`

### `lighten : Std::I32`

### `multiply : Std::I32`

### `out : Std::I32`

### `over : Std::I32`

### `overlay : Std::I32`

### `saturate : Std::I32`

### `screen : Std::I32`

### `soft_light : Std::I32`

### `source : Std::I32`

### `xor : Std::I32`

## `namespace Cairo::Overlap`

### `in_ : Std::I32`

### `out : Std::I32`

### `part : Std::I32`

## `namespace Cairo::Path`

### `_borrow : (Std::Ptr -> a) -> Cairo::Path -> a`

### `_borrow_io : (Std::Ptr -> Std::IO a) -> Cairo::Path -> Std::IO a`

### `_create_from_handle : Std::Ptr -> Cairo::Path`

## `namespace Cairo::Pattern`

### `_borrow : (Std::Ptr -> a) -> Cairo::Pattern -> a`

### `_borrow_io : (Std::Ptr -> Std::IO a) -> Cairo::Pattern -> Std::IO a`

### `_create_from_handle : Std::Ptr -> Cairo::Pattern`

### `add_color_stop_rgb : Std::F64 -> (Std::F64, Std::F64, Std::F64) -> Cairo::Pattern -> Std::IO ()`

### `add_color_stop_rgba : Std::F64 -> (Std::F64, Std::F64, Std::F64, Std::F64) -> Cairo::Pattern -> Std::IO ()`

### `create_for_surface : Cairo::Surface -> Std::IO Cairo::Pattern`

### `create_linear : (Std::F64, Std::F64) -> (Std::F64, Std::F64) -> Cairo::Pattern`

### `create_mesh : Cairo::Pattern`

### `create_radial : (Std::F64, Std::F64, Std::F64) -> (Std::F64, Std::F64, Std::F64) -> Cairo::Pattern`

### `create_rgb : (Std::F64, Std::F64, Std::F64) -> Cairo::Pattern`

### `create_rgba : (Std::F64, Std::F64, Std::F64, Std::F64) -> Cairo::Pattern`

### `get_color_stop_count : Cairo::Pattern -> Std::IO Std::I64`

### `get_color_stop_rgba : Std::I32 -> Cairo::Pattern -> Std::IO (Std::Result Std::I32 (Std::F64, Std::F64, Std::F64, Std::F64))`

### `get_extend : Cairo::Pattern -> Std::IO Std::I32`

### `get_filter : Cairo::Pattern -> Std::IO Std::I32`

### `get_linear_points : Cairo::Pattern -> Std::IO (Std::Result Std::I32 ((Std::F64, Std::F64), (Std::F64, Std::F64)))`

### `get_matrix : Cairo::Pattern -> Std::IO Cairo::Matrix`

### `get_radial_circles : Cairo::Pattern -> Std::IO (Std::Result Std::I32 ((Std::F64, Std::F64, Std::F64), (Std::F64, Std::F64, Std::F64)))`

### `get_rgba : Cairo::Pattern -> Std::IO (Std::Result Std::I32 (Std::F64, Std::F64, Std::F64, Std::F64))`

### `get_surface : Cairo::Pattern -> Std::IO (Std::Result Std::I32 Cairo::Surface)`

### `get_type : Cairo::Pattern -> Std::IO Std::I32`

### `linear : Std::I32`

### `mesh : Std::I32`

### `mesh_begin_patch : Cairo::Pattern -> Std::IO ()`

### `mesh_curve_to : (Std::F64, Std::F64) -> (Std::F64, Std::F64) -> (Std::F64, Std::F64) -> Cairo::Pattern -> Std::IO ()`

### `mesh_end_patch : Cairo::Pattern -> Std::IO ()`

### `mesh_get_control_point : Std::I64 -> Cairo::Pattern -> Std::IO (Std::Result Std::I32 (Std::F64, Std::F64))`

### `mesh_get_corner_color_rgba : Std::I64 -> Cairo::Pattern -> Std::IO (Std::Result Std::I32 (Std::F64, Std::F64, Std::F64, Std::F64))`

### `mesh_get_patch_count : Cairo::Pattern -> Std::IO (Std::Result Std::I32 Std::I64)`

### `mesh_get_path : Std::I64 -> Cairo::Pattern -> Std::IO Cairo::Path`

### `mesh_line_to : (Std::F64, Std::F64) -> Cairo::Pattern -> Std::IO ()`

### `mesh_move_to : (Std::F64, Std::F64) -> Cairo::Pattern -> Std::IO ()`

### `mesh_set_control_point : (Std::F64, Std::F64) -> Cairo::Pattern -> Std::IO ()`

### `mesh_set_corner_color_rgb : Std::I64 -> (Std::F64, Std::F64, Std::F64) -> Cairo::Pattern -> Std::IO ()`

### `mesh_set_corner_color_rgba : Std::I64 -> (Std::F64, Std::F64, Std::F64, Std::F64) -> Cairo::Pattern -> Std::IO ()`

### `radial : Std::I32`

### `raster_source : Std::I32`

### `set_extend : Std::I32 -> Cairo::Pattern -> Std::IO ()`

### `set_filter : Std::I32 -> Cairo::Pattern -> Std::IO ()`

### `set_matrix : Cairo::Matrix -> Cairo::Pattern -> Std::IO ()`

### `solid : Std::I32`

### `status : Cairo::Pattern -> Std::IO Std::I32`

### `surface : Std::I32`

## `namespace Cairo::RectangleInt`

### `_borrow : (Std::Ptr -> a) -> Cairo::RectangleInt -> a`

### `_mutate_io : (Std::Ptr -> Std::IO a) -> Cairo::RectangleInt -> Std::IO (Cairo::RectangleInt, a)`

## `namespace Cairo::RectangleList`

### `_borrow : (Std::Ptr -> a) -> Cairo::RectangleList -> a`

### `_create_from_handle : Std::Ptr -> Cairo::RectangleList`

## `namespace Cairo::Region`

### `_borrow : (Std::Ptr -> a) -> Cairo::Region -> a`

### `_borrow_io : (Std::Ptr -> Std::IO a) -> Cairo::Region -> Std::IO a`

### `_create_from_handle : Std::Ptr -> Cairo::Region`

### `_mutate : (Std::Ptr -> Std::IO a) -> Cairo::Region -> (Cairo::Region, a)`

### `contains_point : (Std::I32, Std::I32) -> Cairo::Region -> Std::Bool`

### `contains_rectangle : Cairo::RectangleInt -> Cairo::Region -> Std::I32`

### `create : Cairo::Region`

### `create_rectangle : Cairo::RectangleInt -> Cairo::Region`

### `create_rectangles : Std::Array Cairo::RectangleInt -> Cairo::Region`

### `equal : Cairo::Region -> Cairo::Region -> Std::Bool`

### `get_extents : Cairo::Region -> Cairo::RectangleInt`

### `get_rectangle : Std::I32 -> Cairo::Region -> Cairo::RectangleInt`

### `intersect : Cairo::Region -> Cairo::Region -> Std::Result Std::I32 Cairo::Region`

### `intersect_rectangle : Cairo::RectangleInt -> Cairo::Region -> Std::Result Std::I32 Cairo::Region`

### `is_empty : Cairo::Region -> Std::Bool`

### `num_rectangles : Cairo::Region -> Std::I32`

### `status : Cairo::Region -> Std::I32`

### `subtract : Cairo::Region -> Cairo::Region -> Std::Result Std::I32 Cairo::Region`

### `subtract_rectangle : Cairo::RectangleInt -> Cairo::Region -> Std::Result Std::I32 Cairo::Region`

### `translate : (Std::I32, Std::I32) -> Cairo::Region -> Cairo::Region`

### `union_ : Cairo::Region -> Cairo::Region -> Std::Result Std::I32 Cairo::Region`

### `union_rectangle : Cairo::RectangleInt -> Cairo::Region -> Std::Result Std::I32 Cairo::Region`

### `xor : Cairo::Region -> Cairo::Region -> Std::Result Std::I32 Cairo::Region`

### `xor_rectangle : Cairo::RectangleInt -> Cairo::Region -> Std::Result Std::I32 Cairo::Region`

## `namespace Cairo::ScaledFont`

### `_borrow : (Std::Ptr -> a) -> Cairo::ScaledFont -> a`

### `_borrow_io : (Std::Ptr -> Std::IO a) -> Cairo::ScaledFont -> Std::IO a`

### `_create_from_handle : Std::Ptr -> Cairo::ScaledFont`

### `extents : Cairo::ScaledFont -> Cairo::FontExtents`

### `get_ctm : Cairo::ScaledFont -> Cairo::Matrix`

### `get_font_face : Cairo::ScaledFont -> Cairo::FontFace`

### `get_font_matrix : Cairo::ScaledFont -> Cairo::Matrix`

### `get_font_options : Cairo::ScaledFont -> Cairo::FontOptions`

### `get_scale_matrix : Cairo::ScaledFont -> Cairo::Matrix`

### `get_type : Cairo::ScaledFont -> Std::I32`

### `glyph_extents : Std::Array Cairo::Glyph -> Cairo::ScaledFont -> Cairo::TextExtents`

### `status : Cairo::ScaledFont -> Std::I32`

### `text_extents : Std::String -> Cairo::ScaledFont -> Cairo::TextExtents`

## `namespace Cairo::Status`

### `clip_not_representable : Std::I32`

### `device_error : Std::I32`

### `device_type_mismatch : Std::I32`

### `file_not_found : Std::I32`

### `font_type_mismatch : Std::I32`

### `invalid_clusters : Std::I32`

### `invalid_content : Std::I32`

### `invalid_dash : Std::I32`

### `invalid_dsc_comment : Std::I32`

### `invalid_format : Std::I32`

### `invalid_index : Std::I32`

### `invalid_matrix : Std::I32`

### `invalid_path_data : Std::I32`

### `invalid_pop_group : Std::I32`

### `invalid_restore : Std::I32`

### `invalid_size : Std::I32`

### `invalid_slant : Std::I32`

### `invalid_status : Std::I32`

### `invalid_stride : Std::I32`

### `invalid_string : Std::I32`

### `invalid_visual : Std::I32`

### `invalid_weight : Std::I32`

### `negative_count : Std::I32`

### `no_current_point : Std::I32`

### `no_memory : Std::I32`

### `null_pointer : Std::I32`

### `pattern_type_mismatch : Std::I32`

### `read_error : Std::I32`

### `success : Std::I32`

### `surface_finished : Std::I32`

### `surface_type_mismatch : Std::I32`

### `temp_file_error : Std::I32`

### `user_font_error : Std::I32`

### `user_font_immutable : Std::I32`

### `user_font_not_implemented : Std::I32`

### `write_error : Std::I32`

## `namespace Cairo::SubpixelOrder`

### `bgr : Std::I32`

### `default : Std::I32`

### `rgb : Std::I32`

### `vbgr : Std::I32`

### `vrgb : Std::I32`

## `namespace Cairo::Surface`

### `_borrow : (Std::Ptr -> a) -> Cairo::Surface -> a`

### `_borrow_io : (Std::Ptr -> Std::IO a) -> Cairo::Surface -> Std::IO a`

### `_create_from_handle : Std::Ptr -> Cairo::Surface`

### `write_to_png : Std::Path -> Cairo::Surface -> Std::IO ()`

## `namespace Cairo::TextClusterFlags`

### `backward : Std::U32`

## `namespace Cairo::TextExtents`

### `_mutate : (Std::Ptr -> Std::IO a) -> Cairo::TextExtents -> (Cairo::TextExtents, a)`

### `_mutate_io : (Std::Ptr -> Std::IO a) -> Cairo::TextExtents -> Std::IO (Cairo::TextExtents, a)`

### `create : Cairo::TextExtents`

## `namespace Cairo::ToyFontFace`

### `create : Std::String -> Std::I32 -> Std::I32 -> Cairo::FontFace`

### `get_family : Cairo::FontFace -> Std::String`

### `get_slant : Cairo::FontFace -> Std::I32`

### `get_weight : Cairo::FontFace -> Std::I32`