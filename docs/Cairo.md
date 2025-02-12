# `module Cairo`

# Types and aliases

## `namespace Cairo`

### `type Antialias = Std::I32`

### `type Cairo = unbox struct { ...fields... }`

#### field `_dtor : Std::FFI::Destructor Cairo::CairoHandle`

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

#### field `_dtor : Std::FFI::Destructor Cairo::FontFace::FontFaceHandle`

### `type FontOptions = unbox struct { ...fields... }`

#### field `_dtor : Std::FFI::Destructor Cairo::FontOptions::FontOptionsHandle`

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

#### field `_dtor : Std::FFI::Destructor Cairo::Path::PathHandle`

### `type Pattern = unbox struct { ...fields... }`

#### field `_dtor : Std::FFI::Destructor Cairo::Pattern::PatternHandle`

### `type PatternType = Std::I32`

### `type RectangleInt = unbox struct { ...fields... }`

#### field `x : Std::I32`

#### field `y : Std::I32`

#### field `width : Std::I32`

#### field `height : Std::I32`

### `type RectangleList = unbox struct { ...fields... }`

#### field `_dtor : Std::FFI::Destructor Cairo::RectangleList::RectangleListHandle`

### `type Region = unbox struct { ...fields... }`

#### field `_dtor : Std::FFI::Destructor Cairo::Region::RegionHandle`

### `type ScaledFont = unbox struct { ...fields... }`

#### field `_dtor : Std::FFI::Destructor Cairo::ScaledFont::ScaledFontHandle`

### `type Status = Std::I32`

### `type SubpixelOrder = Std::I32`

### `type Surface = unbox struct { ...fields... }`

#### field `_dtor : Std::FFI::Destructor Cairo::Surface::SurfaceHandle`

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

### `_borrow : (Cairo::CairoHandle -> a) -> Cairo::Cairo -> a`

### `_borrow_io : (Cairo::CairoHandle -> Std::IO a) -> Cairo::Cairo -> Std::IO a`

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

### `get_antialias : Cairo::Cairo -> Std::IO Cairo::Antialias`

### `get_current_point : Cairo::Cairo -> Std::IO (Std::F64, Std::F64)`

### `get_dash : Cairo::Cairo -> Std::IO (Std::Array Std::F64, Std::F64)`

### `get_dash_count : Cairo::Cairo -> Std::IO Std::I64`

### `get_fill_rule : Cairo::Cairo -> Std::IO Cairo::FillRule`

### `get_font_face : Cairo::Cairo -> Std::IO Cairo::FontFace`

### `get_font_matrix : Cairo::Cairo -> Std::IO Cairo::Matrix`

### `get_font_options : Cairo::Cairo -> Std::IO Cairo::FontOptions`

### `get_group_target : Cairo::Cairo -> Std::IO Cairo::Surface`

### `get_hairline : Cairo::Cairo -> Std::IO Std::Bool`

### `get_line_cap : Cairo::Cairo -> Std::IO Cairo::LineCap`

### `get_line_join : Cairo::Cairo -> Std::IO Cairo::LineJoin`

### `get_line_width : Cairo::Cairo -> Std::IO Std::F64`

### `get_matrix : Cairo::Cairo -> Std::IO Cairo::Matrix`

### `get_miter_limit : Cairo::Cairo -> Std::IO Std::F64`

### `get_operator : Cairo::Cairo -> Std::IO Cairo::Operator`

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

### `push_group_with_content : Cairo::Content -> Cairo::Cairo -> Std::IO ()`

### `rectangle : (Std::F64, Std::F64) -> (Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO ()`

### `rel_curve_to : (Std::F64, Std::F64) -> (Std::F64, Std::F64) -> (Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO ()`

### `rel_line_to : (Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO ()`

### `rel_move_to : (Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO ()`

### `reset_clip : Cairo::Cairo -> Std::IO ()`

### `restore : Cairo::Cairo -> Std::IO ()`

### `rotate : Std::F64 -> Cairo::Cairo -> Std::IO ()`

### `save : Cairo::Cairo -> Std::IO ()`

### `scale : (Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO ()`

### `select_font_face : Std::String -> Cairo::FontSlant -> Cairo::FontWeight -> Cairo::Cairo -> Std::IO ()`

### `set_antialias : Cairo::Antialias -> Cairo::Cairo -> Std::IO ()`

### `set_dash : Std::Array Std::F64 -> Std::F64 -> Cairo::Cairo -> Std::IO ()`

### `set_fill_rule : Cairo::FillRule -> Cairo::Cairo -> Std::IO ()`

### `set_font_face : Cairo::FontFace -> Cairo::Cairo -> Std::IO ()`

### `set_font_matrix : Cairo::Matrix -> Cairo::Cairo -> Std::IO ()`

### `set_font_options : Cairo::FontOptions -> Cairo::Cairo -> Std::IO ()`

### `set_font_size : Std::F64 -> Cairo::Cairo -> Std::IO ()`

### `set_hairline : Std::Bool -> Cairo::Cairo -> Std::IO ()`

### `set_line_cap : Cairo::LineCap -> Cairo::Cairo -> Std::IO ()`

### `set_line_join : Cairo::LineJoin -> Cairo::Cairo -> Std::IO ()`

### `set_line_width : Std::F64 -> Cairo::Cairo -> Std::IO ()`

### `set_matrix : Cairo::Matrix -> Cairo::Cairo -> Std::IO ()`

### `set_miter_limit : Std::F64 -> Cairo::Cairo -> Std::IO ()`

### `set_operator : Cairo::Operator -> Cairo::Cairo -> Std::IO ()`

### `set_scaled_font : Cairo::ScaledFont -> Cairo::Cairo -> Std::IO ()`

### `set_source : Cairo::Pattern -> Cairo::Cairo -> Std::IO ()`

### `set_source_rgb : (Std::F64, Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO ()`

### `set_source_rgba : (Std::F64, Std::F64, Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO ()`

### `set_source_surface : Cairo::Surface -> (Std::F64, Std::F64) -> Cairo::Cairo -> Std::IO ()`

### `set_tolerance : Std::F64 -> Cairo::Cairo -> Std::IO ()`

### `show_glyphs : Std::Array Cairo::Glyph -> Cairo::Cairo -> Std::IO ()`

### `show_page : Cairo::Cairo -> Std::IO ()`

### `show_text : Std::String -> Cairo::Cairo -> Std::IO ()`

### `show_text_glyphs : Std::String -> Std::Array Cairo::Glyph -> Std::Array Cairo::TextCluster -> Cairo::TextClusterFlags -> Cairo::Cairo -> Std::IO ()`

### `status : Cairo::Cairo -> Std::IO Cairo::Status`

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

### `best : Cairo::Antialias`

### `default : Cairo::Antialias`

### `fast : Cairo::Antialias`

### `good : Cairo::Antialias`

### `gray : Cairo::Antialias`

### `none : Cairo::Antialias`

### `subpixel : Cairo::Antialias`

## `namespace Cairo::Content`

### `alpha : Cairo::Content`

### `color : Cairo::Content`

### `color_alpha : Cairo::Content`

## `namespace Cairo::Extend`

### `none : Cairo::Extend`

### `pad : Cairo::Extend`

### `reflect : Cairo::Extend`

### `repeat : Cairo::Extend`

## `namespace Cairo::FillRule`

### `even_odd : Cairo::FillRule`

### `winding : Cairo::FillRule`

## `namespace Cairo::Filter`

### `best : Cairo::Filter`

### `bilinear : Cairo::Filter`

### `fast : Cairo::Filter`

### `gaussian : Cairo::Filter`

### `good : Cairo::Filter`

### `nearest : Cairo::Filter`

## `namespace Cairo::FontExtents`

### `_mutate : (Std::Ptr -> Std::IO a) -> Cairo::FontExtents -> (Cairo::FontExtents, a)`

### `_mutate_io : (Std::Ptr -> Std::IO a) -> Cairo::FontExtents -> Std::IO (Cairo::FontExtents, a)`

### `create : Cairo::FontExtents`

## `namespace Cairo::FontFace`

### `_borrow : (Cairo::FontFace::FontFaceHandle -> a) -> Cairo::FontFace -> a`

### `_borrow_io : (Cairo::FontFace::FontFaceHandle -> Std::IO a) -> Cairo::FontFace -> Std::IO a`

### `_create_from_handle : Cairo::FontFace::FontFaceHandle -> Cairo::FontFace`

### `get_type : Cairo::FontFace -> Cairo::FontType`

### `status : Cairo::FontFace -> Cairo::Status`

## `namespace Cairo::FontOptions`

### `_borrow : (Cairo::FontOptions::FontOptionsHandle -> a) -> Cairo::FontOptions -> a`

### `_borrow_io : (Cairo::FontOptions::FontOptionsHandle -> Std::IO a) -> Cairo::FontOptions -> Std::IO a`

### `_create_from_handle : Cairo::FontOptions::FontOptionsHandle -> Cairo::FontOptions`

### `_mutate : (Cairo::FontOptions::FontOptionsHandle -> Std::IO a) -> Cairo::FontOptions -> (Cairo::FontOptions, a)`

### `default : Cairo::FontOptions`

### `equal : Cairo::FontOptions -> Cairo::FontOptions -> Std::Bool`

### `get_antialias : Cairo::FontOptions -> Cairo::Antialias`

### `get_hint_metrics : Cairo::FontOptions -> Cairo::HintMetrics`

### `get_hint_style : Cairo::FontOptions -> Cairo::HintStyle`

### `get_subpixel_order : Cairo::FontOptions -> Cairo::SubpixelOrder`

### `get_variations : Cairo::FontOptions -> Std::String`

### `hash : Cairo::FontOptions -> Std::U64`

### `merge : Cairo::FontOptions -> Cairo::FontOptions -> Cairo::FontOptions`

### `set_antialias : Cairo::Antialias -> Cairo::FontOptions -> Cairo::FontOptions`

### `set_hint_metrics : Cairo::HintMetrics -> Cairo::FontOptions -> Cairo::FontOptions`

### `set_hint_style : Cairo::HintStyle -> Cairo::FontOptions -> Cairo::FontOptions`

### `set_subpixel_order : Cairo::SubpixelOrder -> Cairo::FontOptions -> Cairo::FontOptions`

### `set_variations : Std::String -> Cairo::FontOptions -> Cairo::FontOptions`

### `status : Cairo::FontOptions -> Cairo::Status`

## `namespace Cairo::FontSlant`

### `italic : Cairo::FontSlant`

### `normal : Cairo::FontSlant`

### `oblique : Cairo::FontSlant`

## `namespace Cairo::FontType`

### `ft : Cairo::FontType`

### `quartz : Cairo::FontType`

### `toy : Cairo::FontType`

### `user : Cairo::FontType`

### `win32 : Cairo::FontType`

## `namespace Cairo::FontWeight`

### `bold : Cairo::FontWeight`

### `normal : Cairo::FontWeight`

## `namespace Cairo::Format`

### `a1 : Cairo::Format`

### `a8 : Cairo::Format`

### `argb : Cairo::Format`

### `rgb16_565 : Cairo::Format`

### `rgb24 : Cairo::Format`

### `rgb30 : Std::I32`

### `stride_for_width : Cairo::Format -> Std::I32 -> Std::I32`

## `namespace Cairo::HintMetrics`

### `default : Cairo::HintMetrics`

### `off : Cairo::HintMetrics`

### `on : Cairo::HintMetrics`

## `namespace Cairo::HintStyle`

### `default : Cairo::HintStyle`

### `full : Cairo::HintStyle`

### `medium : Cairo::HintStyle`

### `none : Cairo::HintStyle`

### `slight : Cairo::HintStyle`

## `namespace Cairo::LineCap`

### `butt : Cairo::LineCap`

### `round : Cairo::LineCap`

### `square : Cairo::LineCap`

## `namespace Cairo::LineJoin`

### `bevel : Cairo::LineJoin`

### `miter : Cairo::LineJoin`

### `round : Cairo::LineJoin`

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

### `add : Cairo::Operator`

### `atop : Cairo::Operator`

### `clear : Cairo::Operator`

### `color_burn : Cairo::Operator`

### `color_dodge : Cairo::Operator`

### `darken : Cairo::Operator`

### `dest : Cairo::Operator`

### `dest_atop : Cairo::Operator`

### `dest_in : Cairo::Operator`

### `dest_out : Cairo::Operator`

### `dest_over : Cairo::Operator`

### `difference : Cairo::Operator`

### `exclusion : Cairo::Operator`

### `hard_light : Cairo::Operator`

### `hsl_color : Cairo::Operator`

### `hsl_hue : Cairo::Operator`

### `hsl_luminosity : Cairo::Operator`

### `hsl_saturation : Cairo::Operator`

### `in_ : Cairo::Operator`

### `lighten : Cairo::Operator`

### `multiply : Cairo::Operator`

### `out : Cairo::Operator`

### `over : Cairo::Operator`

### `overlay : Cairo::Operator`

### `saturate : Cairo::Operator`

### `screen : Cairo::Operator`

### `soft_light : Cairo::Operator`

### `source : Cairo::Operator`

### `xor : Cairo::Operator`

## `namespace Cairo::Overlap`

### `in_ : Cairo::Overlap`

### `out : Cairo::Overlap`

### `part : Cairo::Overlap`

## `namespace Cairo::Path`

### `_borrow : (Cairo::Path::PathHandle -> a) -> Cairo::Path -> a`

### `_borrow_io : (Cairo::Path::PathHandle -> Std::IO a) -> Cairo::Path -> Std::IO a`

### `_create_from_handle : Cairo::Path::PathHandle -> Cairo::Path`

## `namespace Cairo::Pattern`

### `_borrow : (Cairo::Pattern::PatternHandle -> a) -> Cairo::Pattern -> a`

### `_borrow_io : (Cairo::Pattern::PatternHandle -> Std::IO a) -> Cairo::Pattern -> Std::IO a`

### `_create_from_handle : Cairo::Pattern::PatternHandle -> Cairo::Pattern`

### `add_color_stop_rgb : Std::F64 -> (Std::F64, Std::F64, Std::F64) -> Cairo::Pattern -> Std::IO ()`

### `add_color_stop_rgba : Std::F64 -> (Std::F64, Std::F64, Std::F64, Std::F64) -> Cairo::Pattern -> Std::IO ()`

### `create_for_surface : Cairo::Surface -> Std::IO Cairo::Pattern`

### `create_linear : (Std::F64, Std::F64) -> (Std::F64, Std::F64) -> Cairo::Pattern`

### `create_mesh : Cairo::Pattern`

### `create_radial : (Std::F64, Std::F64, Std::F64) -> (Std::F64, Std::F64, Std::F64) -> Cairo::Pattern`

### `create_rgb : (Std::F64, Std::F64, Std::F64) -> Cairo::Pattern`

### `create_rgba : (Std::F64, Std::F64, Std::F64, Std::F64) -> Cairo::Pattern`

### `get_color_stop_count : Cairo::Pattern -> Std::IO Std::I64`

### `get_color_stop_rgba : Std::I32 -> Cairo::Pattern -> Std::IO (Std::Result Cairo::Status (Std::F64, Std::F64, Std::F64, Std::F64))`

### `get_extend : Cairo::Pattern -> Std::IO Cairo::Extend`

### `get_filter : Cairo::Pattern -> Std::IO Cairo::Filter`

### `get_linear_points : Cairo::Pattern -> Std::IO (Std::Result Cairo::Status ((Std::F64, Std::F64), (Std::F64, Std::F64)))`

### `get_matrix : Cairo::Pattern -> Std::IO Cairo::Matrix`

### `get_radial_circles : Cairo::Pattern -> Std::IO (Std::Result Cairo::Status ((Std::F64, Std::F64, Std::F64), (Std::F64, Std::F64, Std::F64)))`

### `get_rgba : Cairo::Pattern -> Std::IO (Std::Result Cairo::Status (Std::F64, Std::F64, Std::F64, Std::F64))`

### `get_surface : Cairo::Pattern -> Std::IO (Std::Result Cairo::Status Cairo::Surface)`

### `get_type : Cairo::Pattern -> Std::IO Cairo::PatternType`

### `linear : Cairo::PatternType`

### `mesh : Cairo::PatternType`

### `mesh_begin_patch : Cairo::Pattern -> Std::IO ()`

### `mesh_curve_to : (Std::F64, Std::F64) -> (Std::F64, Std::F64) -> (Std::F64, Std::F64) -> Cairo::Pattern -> Std::IO ()`

### `mesh_end_patch : Cairo::Pattern -> Std::IO ()`

### `mesh_get_control_point : Std::I64 -> Cairo::Pattern -> Std::IO (Std::Result Cairo::Status (Std::F64, Std::F64))`

### `mesh_get_corner_color_rgba : Std::I64 -> Cairo::Pattern -> Std::IO (Std::Result Cairo::Status (Std::F64, Std::F64, Std::F64, Std::F64))`

### `mesh_get_patch_count : Cairo::Pattern -> Std::IO (Std::Result Cairo::Status Std::I64)`

### `mesh_get_path : Std::I64 -> Cairo::Pattern -> Std::IO Cairo::Path`

### `mesh_line_to : (Std::F64, Std::F64) -> Cairo::Pattern -> Std::IO ()`

### `mesh_move_to : (Std::F64, Std::F64) -> Cairo::Pattern -> Std::IO ()`

### `mesh_set_control_point : (Std::F64, Std::F64) -> Cairo::Pattern -> Std::IO ()`

### `mesh_set_corner_color_rgb : Std::I64 -> (Std::F64, Std::F64, Std::F64) -> Cairo::Pattern -> Std::IO ()`

### `mesh_set_corner_color_rgba : Std::I64 -> (Std::F64, Std::F64, Std::F64, Std::F64) -> Cairo::Pattern -> Std::IO ()`

### `radial : Cairo::PatternType`

### `raster_source : Cairo::PatternType`

### `set_extend : Cairo::Extend -> Cairo::Pattern -> Std::IO ()`

### `set_filter : Cairo::Filter -> Cairo::Pattern -> Std::IO ()`

### `set_matrix : Cairo::Matrix -> Cairo::Pattern -> Std::IO ()`

### `solid : Cairo::PatternType`

### `status : Cairo::Pattern -> Std::IO Cairo::Status`

### `surface : Cairo::PatternType`

## `namespace Cairo::RectangleInt`

### `_borrow : (Std::Ptr -> a) -> Cairo::RectangleInt -> a`

### `_mutate_io : (Std::Ptr -> Std::IO a) -> Cairo::RectangleInt -> Std::IO (Cairo::RectangleInt, a)`

## `namespace Cairo::RectangleList`

### `_borrow : (Cairo::RectangleList::RectangleListHandle -> a) -> Cairo::RectangleList -> a`

### `_create_from_handle : Cairo::RectangleList::RectangleListHandle -> Cairo::RectangleList`

## `namespace Cairo::Region`

### `_borrow : (Cairo::Region::RegionHandle -> a) -> Cairo::Region -> a`

### `_borrow_io : (Cairo::Region::RegionHandle -> Std::IO a) -> Cairo::Region -> Std::IO a`

### `_create_from_handle : Cairo::Region::RegionHandle -> Cairo::Region`

### `_mutate : (Cairo::Region::RegionHandle -> Std::IO a) -> Cairo::Region -> (Cairo::Region, a)`

### `contains_point : (Std::I32, Std::I32) -> Cairo::Region -> Std::Bool`

### `contains_rectangle : Cairo::RectangleInt -> Cairo::Region -> Cairo::Overlap`

### `create : Cairo::Region`

### `create_rectangle : Cairo::RectangleInt -> Cairo::Region`

### `create_rectangles : Std::Array Cairo::RectangleInt -> Cairo::Region`

### `equal : Cairo::Region -> Cairo::Region -> Std::Bool`

### `get_extents : Cairo::Region -> Cairo::RectangleInt`

### `get_rectangle : Std::I32 -> Cairo::Region -> Cairo::RectangleInt`

### `intersect : Cairo::Region -> Cairo::Region -> Std::Result Cairo::Status Cairo::Region`

### `intersect_rectangle : Cairo::RectangleInt -> Cairo::Region -> Std::Result Cairo::Status Cairo::Region`

### `is_empty : Cairo::Region -> Std::Bool`

### `num_rectangles : Cairo::Region -> Std::I32`

### `status : Cairo::Region -> Cairo::Status`

### `subtract : Cairo::Region -> Cairo::Region -> Std::Result Cairo::Status Cairo::Region`

### `subtract_rectangle : Cairo::RectangleInt -> Cairo::Region -> Std::Result Cairo::Status Cairo::Region`

### `translate : (Std::I32, Std::I32) -> Cairo::Region -> Cairo::Region`

### `union_ : Cairo::Region -> Cairo::Region -> Std::Result Cairo::Status Cairo::Region`

### `union_rectangle : Cairo::RectangleInt -> Cairo::Region -> Std::Result Cairo::Status Cairo::Region`

### `xor : Cairo::Region -> Cairo::Region -> Std::Result Cairo::Status Cairo::Region`

### `xor_rectangle : Cairo::RectangleInt -> Cairo::Region -> Std::Result Cairo::Status Cairo::Region`

## `namespace Cairo::ScaledFont`

### `_borrow : (Cairo::ScaledFont::ScaledFontHandle -> a) -> Cairo::ScaledFont -> a`

### `_borrow_io : (Cairo::ScaledFont::ScaledFontHandle -> Std::IO a) -> Cairo::ScaledFont -> Std::IO a`

### `_create_from_handle : Cairo::ScaledFont::ScaledFontHandle -> Cairo::ScaledFont`

### `extents : Cairo::ScaledFont -> Cairo::FontExtents`

### `get_ctm : Cairo::ScaledFont -> Cairo::Matrix`

### `get_font_face : Cairo::ScaledFont -> Cairo::FontFace`

### `get_font_matrix : Cairo::ScaledFont -> Cairo::Matrix`

### `get_font_options : Cairo::ScaledFont -> Cairo::FontOptions`

### `get_scale_matrix : Cairo::ScaledFont -> Cairo::Matrix`

### `get_type : Cairo::ScaledFont -> Cairo::FontType`

### `glyph_extents : Std::Array Cairo::Glyph -> Cairo::ScaledFont -> Cairo::TextExtents`

### `status : Cairo::ScaledFont -> Cairo::Status`

### `text_extents : Std::String -> Cairo::ScaledFont -> Cairo::TextExtents`

## `namespace Cairo::Status`

### `clip_not_representable : Cairo::Status`

### `device_error : Cairo::Status`

### `device_type_mismatch : Cairo::Status`

### `file_not_found : Cairo::Status`

### `font_type_mismatch : Cairo::Status`

### `invalid_clusters : Cairo::Status`

### `invalid_content : Cairo::Status`

### `invalid_dash : Cairo::Status`

### `invalid_dsc_comment : Cairo::Status`

### `invalid_format : Cairo::Status`

### `invalid_index : Cairo::Status`

### `invalid_matrix : Cairo::Status`

### `invalid_path_data : Cairo::Status`

### `invalid_pop_group : Cairo::Status`

### `invalid_restore : Cairo::Status`

### `invalid_size : Cairo::Status`

### `invalid_slant : Cairo::Status`

### `invalid_status : Cairo::Status`

### `invalid_stride : Cairo::Status`

### `invalid_string : Cairo::Status`

### `invalid_visual : Cairo::Status`

### `invalid_weight : Cairo::Status`

### `negative_count : Cairo::Status`

### `no_current_point : Cairo::Status`

### `no_memory : Cairo::Status`

### `null_pointer : Cairo::Status`

### `pattern_type_mismatch : Cairo::Status`

### `read_error : Cairo::Status`

### `success : Cairo::Status`

### `surface_finished : Cairo::Status`

### `surface_type_mismatch : Cairo::Status`

### `temp_file_error : Cairo::Status`

### `user_font_error : Cairo::Status`

### `user_font_immutable : Cairo::Status`

### `user_font_not_implemented : Cairo::Status`

### `write_error : Cairo::Status`

## `namespace Cairo::SubpixelOrder`

### `bgr : Cairo::SubpixelOrder`

### `default : Cairo::SubpixelOrder`

### `rgb : Cairo::SubpixelOrder`

### `vbgr : Cairo::SubpixelOrder`

### `vrgb : Cairo::SubpixelOrder`

## `namespace Cairo::Surface`

### `_borrow : (Cairo::Surface::SurfaceHandle -> a) -> Cairo::Surface -> a`

### `_borrow_io : (Cairo::Surface::SurfaceHandle -> Std::IO a) -> Cairo::Surface -> Std::IO a`

### `_create_from_handle : Cairo::Surface::SurfaceHandle -> Cairo::Surface`

### `flush : Cairo::Surface -> Std::IO ()`

### `mark_dirty : Cairo::Surface -> Std::IO ()`

### `write_to_png : Std::Path -> Cairo::Surface -> Std::IO ()`

## `namespace Cairo::TextClusterFlags`

### `backward : Cairo::TextClusterFlags`

## `namespace Cairo::TextExtents`

### `_mutate : (Std::Ptr -> Std::IO a) -> Cairo::TextExtents -> (Cairo::TextExtents, a)`

### `_mutate_io : (Std::Ptr -> Std::IO a) -> Cairo::TextExtents -> Std::IO (Cairo::TextExtents, a)`

### `create : Cairo::TextExtents`

## `namespace Cairo::ToyFontFace`

### `create : Std::String -> Cairo::FontSlant -> Cairo::FontWeight -> Cairo::FontFace`

### `get_family : Cairo::FontFace -> Std::String`

### `get_slant : Cairo::FontFace -> Cairo::FontSlant`

### `get_weight : Cairo::FontFace -> Cairo::FontWeight`