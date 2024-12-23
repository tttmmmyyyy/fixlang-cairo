# `module Cairo.XlibSurface`

# Types and aliases

## `namespace Cairo.XlibSurface`

### `type BackBufferId = Std::U64`

### `type DisplayHandle = Std::Ptr`

### `type Event = unbox union { ...variants... }`

#### variant `key_press : Cairo.XlibSurface::Event::KeyEvent`

#### variant `key_release : Cairo.XlibSurface::Event::KeyEvent`

#### variant `button_press : Cairo.XlibSurface::Event::ButtonEvent`

#### variant `button_release : Cairo.XlibSurface::Event::ButtonEvent`

#### variant `motion_notify : Cairo.XlibSurface::Event::MotionEvent`

#### variant `expose : Cairo.XlibSurface::Event::ExposeEvent`

#### variant `destroy_notify : Cairo.XlibSurface::Event::DestroyNotifyEvent`

#### variant `unimplemented : ()`

### `type EventMask = Std::U64`

### `type KeyCode = Std::U32`

### `type KeySym = Std::U64`

### `type QueuedMode = Std::I32`

### `type Window = box struct { ...fields... }`

#### field `_display : Std::Ptr`

#### field `_window_id : Std::U64`

#### field `width : Std::I32`

#### field `height : Std::I32`

### `type WindowId = Std::U64`

### `type XbeSwapAction = Std::U8`

## `namespace Cairo.XlibSurface::Event`

### `type ButtonEvent = box struct { ...fields... }`

#### field `type_ : Std::I32`

#### field `serial : Std::U64`

#### field `send_event : Std::I32`

#### field `_display : Std::Ptr`

#### field `_window : Std::U64`

#### field `_root : Std::U64`

#### field `_subwindow : Std::U64`

#### field `time : Std::U64`

#### field `x : Std::I32`

#### field `y : Std::I32`

#### field `x_root : Std::I32`

#### field `y_root : Std::I32`

#### field `state : Std::U64`

#### field `button : Std::U32`

#### field `same_screen : Std::I32`

### `type DestroyNotifyEvent = box struct { ...fields... }`

#### field `type_ : Std::I32`

#### field `serial : Std::U64`

#### field `send_event : Std::I32`

#### field `_display : Std::Ptr`

#### field `_event : Std::U64`

#### field `_window : Std::U64`

### `type ExposeEvent = box struct { ...fields... }`

#### field `type_ : Std::I32`

#### field `serial : Std::U64`

#### field `send_event : Std::I32`

#### field `_display : Std::Ptr`

#### field `_window : Std::U64`

#### field `x : Std::I32`

#### field `y : Std::I32`

#### field `width : Std::I32`

#### field `height : Std::I32`

#### field `count : Std::I32`

### `type KeyEvent = box struct { ...fields... }`

#### field `type_ : Std::I32`

#### field `serial : Std::U64`

#### field `send_event : Std::I32`

#### field `_display : Std::Ptr`

#### field `_window : Std::U64`

#### field `_root : Std::U64`

#### field `_subwindow : Std::U64`

#### field `time : Std::U64`

#### field `x : Std::I32`

#### field `y : Std::I32`

#### field `x_root : Std::I32`

#### field `y_root : Std::I32`

#### field `state : Std::U32`

#### field `keycode : Std::U32`

#### field `same_screen : Std::I32`

### `type MotionEvent = box struct { ...fields... }`

#### field `type_ : Std::I32`

#### field `serial : Std::U64`

#### field `send_event : Std::I32`

#### field `_display : Std::Ptr`

#### field `_window : Std::U64`

#### field `_root : Std::U64`

#### field `_subwindow : Std::U64`

#### field `time : Std::U64`

#### field `x : Std::I32`

#### field `y : Std::I32`

#### field `x_root : Std::I32`

#### field `y_root : Std::I32`

#### field `state : Std::U64`

#### field `is_hint : Std::U8`

#### field `same_screen : Std::I32`

# Traits and aliases

# Trait implementations

# Values

## `namespace Cairo.XlibSurface`

### `create_back_surface : Cairo.XlibSurface::Window -> Cairo::Surface`

### `create_front_surface : Cairo.XlibSurface::Window -> Cairo::Surface`

### `create_simple_window : (Std::I64, Std::I64) -> Std::IO Cairo.XlibSurface::Window`

### `destroy_window : Cairo.XlibSurface::Window -> Std::IO ()`

### `events_queued : Std::I32 -> Cairo.XlibSurface::Window -> Std::IO Std::I64`

### `flush : Cairo.XlibSurface::Window -> Std::IO ()`

### `keycode_to_keysym : Std::U32 -> Cairo.XlibSurface::Window -> Std::IO Std::U64`

### `next_event : Cairo.XlibSurface::Window -> Std::IO Cairo.XlibSurface::Event`

### `select_input : Std::U64 -> Cairo.XlibSurface::Window -> Std::IO ()`

### `string_to_keysym : Std::String -> Std::U64`

### `swap_buffers : Std::U8 -> Cairo.XlibSurface::Window -> Std::IO ()`

## `namespace Cairo.XlibSurface::Event`

### `_button_press_id : Std::I32`

### `_button_release_id : Std::I32`

### `_destroy_notify_id : Std::I32`

### `_expose_id : Std::I32`

### `_key_press_id : Std::I32`

### `_key_release_id : Std::I32`

### `_motion_notify_id : Std::I32`

## `namespace Cairo.XlibSurface::Event::ButtonEvent`

### `_null : Cairo.XlibSurface::Event::ButtonEvent`

## `namespace Cairo.XlibSurface::Event::DestroyNotifyEvent`

### `_null : Cairo.XlibSurface::Event::DestroyNotifyEvent`

## `namespace Cairo.XlibSurface::Event::ExposeEvent`

### `_null : Cairo.XlibSurface::Event::ExposeEvent`

## `namespace Cairo.XlibSurface::Event::KeyEvent`

### `_null : Cairo.XlibSurface::Event::KeyEvent`

## `namespace Cairo.XlibSurface::Event::MotionEvent`

### `_null : Cairo.XlibSurface::Event::MotionEvent`

## `namespace Cairo.XlibSurface::EventMask`

### `button_press : Std::U64`

### `button_release : Std::U64`

### `exposure : Std::U64`

### `key_press : Std::U64`

### `key_release : Std::U64`

### `pointer_motion : Std::U64`

### `structure_notify : Std::U64`

## `namespace Cairo.XlibSurface::QueuedMode`

### `after_flush : Std::I32`

### `already : Std::I32`

### `reading : Std::I32`

## `namespace Cairo.XlibSurface::XbeSwapAction`

### `background : Std::U8`

### `copied : Std::U8`

### `undefined : Std::U8`

### `untouched : Std::U8`