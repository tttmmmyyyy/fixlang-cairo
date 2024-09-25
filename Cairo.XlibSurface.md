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

### `as_button_press : Cairo.XlibSurface::Event -> Cairo.XlibSurface::Event::ButtonEvent`

Unwraps a union value of `Event` as the variant `button_press`.
If the value is not the variant `button_press`, this function aborts the program.

### `as_button_release : Cairo.XlibSurface::Event -> Cairo.XlibSurface::Event::ButtonEvent`

Unwraps a union value of `Event` as the variant `button_release`.
If the value is not the variant `button_release`, this function aborts the program.

### `as_destroy_notify : Cairo.XlibSurface::Event -> Cairo.XlibSurface::Event::DestroyNotifyEvent`

Unwraps a union value of `Event` as the variant `destroy_notify`.
If the value is not the variant `destroy_notify`, this function aborts the program.

### `as_expose : Cairo.XlibSurface::Event -> Cairo.XlibSurface::Event::ExposeEvent`

Unwraps a union value of `Event` as the variant `expose`.
If the value is not the variant `expose`, this function aborts the program.

### `as_key_press : Cairo.XlibSurface::Event -> Cairo.XlibSurface::Event::KeyEvent`

Unwraps a union value of `Event` as the variant `key_press`.
If the value is not the variant `key_press`, this function aborts the program.

### `as_key_release : Cairo.XlibSurface::Event -> Cairo.XlibSurface::Event::KeyEvent`

Unwraps a union value of `Event` as the variant `key_release`.
If the value is not the variant `key_release`, this function aborts the program.

### `as_motion_notify : Cairo.XlibSurface::Event -> Cairo.XlibSurface::Event::MotionEvent`

Unwraps a union value of `Event` as the variant `motion_notify`.
If the value is not the variant `motion_notify`, this function aborts the program.

### `as_unimplemented : Cairo.XlibSurface::Event -> ()`

Unwraps a union value of `Event` as the variant `unimplemented`.
If the value is not the variant `unimplemented`, this function aborts the program.

### `button_press : Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event`

Constructs a value of union `Event` taking the variant `button_press`.

### `button_release : Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event`

Constructs a value of union `Event` taking the variant `button_release`.

### `destroy_notify : Cairo.XlibSurface::Event::DestroyNotifyEvent -> Cairo.XlibSurface::Event`

Constructs a value of union `Event` taking the variant `destroy_notify`.

### `expose : Cairo.XlibSurface::Event::ExposeEvent -> Cairo.XlibSurface::Event`

Constructs a value of union `Event` taking the variant `expose`.

### `is_button_press : Cairo.XlibSurface::Event -> Std::Bool`

Checks if a union value of `Event` is the variant `button_press`.

### `is_button_release : Cairo.XlibSurface::Event -> Std::Bool`

Checks if a union value of `Event` is the variant `button_release`.

### `is_destroy_notify : Cairo.XlibSurface::Event -> Std::Bool`

Checks if a union value of `Event` is the variant `destroy_notify`.

### `is_expose : Cairo.XlibSurface::Event -> Std::Bool`

Checks if a union value of `Event` is the variant `expose`.

### `is_key_press : Cairo.XlibSurface::Event -> Std::Bool`

Checks if a union value of `Event` is the variant `key_press`.

### `is_key_release : Cairo.XlibSurface::Event -> Std::Bool`

Checks if a union value of `Event` is the variant `key_release`.

### `is_motion_notify : Cairo.XlibSurface::Event -> Std::Bool`

Checks if a union value of `Event` is the variant `motion_notify`.

### `is_unimplemented : Cairo.XlibSurface::Event -> Std::Bool`

Checks if a union value of `Event` is the variant `unimplemented`.

### `key_press : Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event`

Constructs a value of union `Event` taking the variant `key_press`.

### `key_release : Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event`

Constructs a value of union `Event` taking the variant `key_release`.

### `mod_button_press : (Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent) -> Cairo.XlibSurface::Event -> Cairo.XlibSurface::Event`

Updates a value of union `Event` by applying a function if it is the variant `button_press`, or doing nothing otherwise.

### `mod_button_release : (Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent) -> Cairo.XlibSurface::Event -> Cairo.XlibSurface::Event`

Updates a value of union `Event` by applying a function if it is the variant `button_release`, or doing nothing otherwise.

### `mod_destroy_notify : (Cairo.XlibSurface::Event::DestroyNotifyEvent -> Cairo.XlibSurface::Event::DestroyNotifyEvent) -> Cairo.XlibSurface::Event -> Cairo.XlibSurface::Event`

Updates a value of union `Event` by applying a function if it is the variant `destroy_notify`, or doing nothing otherwise.

### `mod_expose : (Cairo.XlibSurface::Event::ExposeEvent -> Cairo.XlibSurface::Event::ExposeEvent) -> Cairo.XlibSurface::Event -> Cairo.XlibSurface::Event`

Updates a value of union `Event` by applying a function if it is the variant `expose`, or doing nothing otherwise.

### `mod_key_press : (Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent) -> Cairo.XlibSurface::Event -> Cairo.XlibSurface::Event`

Updates a value of union `Event` by applying a function if it is the variant `key_press`, or doing nothing otherwise.

### `mod_key_release : (Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent) -> Cairo.XlibSurface::Event -> Cairo.XlibSurface::Event`

Updates a value of union `Event` by applying a function if it is the variant `key_release`, or doing nothing otherwise.

### `mod_motion_notify : (Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent) -> Cairo.XlibSurface::Event -> Cairo.XlibSurface::Event`

Updates a value of union `Event` by applying a function if it is the variant `motion_notify`, or doing nothing otherwise.

### `mod_unimplemented : (() -> ()) -> Cairo.XlibSurface::Event -> Cairo.XlibSurface::Event`

Updates a value of union `Event` by applying a function if it is the variant `unimplemented`, or doing nothing otherwise.

### `motion_notify : Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event`

Constructs a value of union `Event` taking the variant `motion_notify`.

### `unimplemented : () -> Cairo.XlibSurface::Event`

Constructs a value of union `Event` taking the variant `unimplemented`.

## `namespace Cairo.XlibSurface::Event::ButtonEvent`

### `@_display : Cairo.XlibSurface::Event::ButtonEvent -> Std::Ptr`

Retrieves the field `_display` from a value of `ButtonEvent`.

### `@_root : Cairo.XlibSurface::Event::ButtonEvent -> Std::U64`

Retrieves the field `_root` from a value of `ButtonEvent`.

### `@_subwindow : Cairo.XlibSurface::Event::ButtonEvent -> Std::U64`

Retrieves the field `_subwindow` from a value of `ButtonEvent`.

### `@_window : Cairo.XlibSurface::Event::ButtonEvent -> Std::U64`

Retrieves the field `_window` from a value of `ButtonEvent`.

### `@button : Cairo.XlibSurface::Event::ButtonEvent -> Std::U32`

Retrieves the field `button` from a value of `ButtonEvent`.

### `@same_screen : Cairo.XlibSurface::Event::ButtonEvent -> Std::I32`

Retrieves the field `same_screen` from a value of `ButtonEvent`.

### `@send_event : Cairo.XlibSurface::Event::ButtonEvent -> Std::I32`

Retrieves the field `send_event` from a value of `ButtonEvent`.

### `@serial : Cairo.XlibSurface::Event::ButtonEvent -> Std::U64`

Retrieves the field `serial` from a value of `ButtonEvent`.

### `@state : Cairo.XlibSurface::Event::ButtonEvent -> Std::U64`

Retrieves the field `state` from a value of `ButtonEvent`.

### `@time : Cairo.XlibSurface::Event::ButtonEvent -> Std::U64`

Retrieves the field `time` from a value of `ButtonEvent`.

### `@type_ : Cairo.XlibSurface::Event::ButtonEvent -> Std::I32`

Retrieves the field `type_` from a value of `ButtonEvent`.

### `@x : Cairo.XlibSurface::Event::ButtonEvent -> Std::I32`

Retrieves the field `x` from a value of `ButtonEvent`.

### `@x_root : Cairo.XlibSurface::Event::ButtonEvent -> Std::I32`

Retrieves the field `x_root` from a value of `ButtonEvent`.

### `@y : Cairo.XlibSurface::Event::ButtonEvent -> Std::I32`

Retrieves the field `y` from a value of `ButtonEvent`.

### `@y_root : Cairo.XlibSurface::Event::ButtonEvent -> Std::I32`

Retrieves the field `y_root` from a value of `ButtonEvent`.

### `_null : Cairo.XlibSurface::Event::ButtonEvent`

### `act__display : [f : Std::Functor] (Std::Ptr -> f Std::Ptr) -> Cairo.XlibSurface::Event::ButtonEvent -> f Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a functorial action to field `_display`.

### `act__root : [f : Std::Functor] (Std::U64 -> f Std::U64) -> Cairo.XlibSurface::Event::ButtonEvent -> f Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a functorial action to field `_root`.

### `act__subwindow : [f : Std::Functor] (Std::U64 -> f Std::U64) -> Cairo.XlibSurface::Event::ButtonEvent -> f Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a functorial action to field `_subwindow`.

### `act__window : [f : Std::Functor] (Std::U64 -> f Std::U64) -> Cairo.XlibSurface::Event::ButtonEvent -> f Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a functorial action to field `_window`.

### `act_button : [f : Std::Functor] (Std::U32 -> f Std::U32) -> Cairo.XlibSurface::Event::ButtonEvent -> f Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a functorial action to field `button`.

### `act_same_screen : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::ButtonEvent -> f Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a functorial action to field `same_screen`.

### `act_send_event : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::ButtonEvent -> f Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a functorial action to field `send_event`.

### `act_serial : [f : Std::Functor] (Std::U64 -> f Std::U64) -> Cairo.XlibSurface::Event::ButtonEvent -> f Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a functorial action to field `serial`.

### `act_state : [f : Std::Functor] (Std::U64 -> f Std::U64) -> Cairo.XlibSurface::Event::ButtonEvent -> f Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a functorial action to field `state`.

### `act_time : [f : Std::Functor] (Std::U64 -> f Std::U64) -> Cairo.XlibSurface::Event::ButtonEvent -> f Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a functorial action to field `time`.

### `act_type_ : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::ButtonEvent -> f Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a functorial action to field `type_`.

### `act_x : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::ButtonEvent -> f Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a functorial action to field `x`.

### `act_x_root : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::ButtonEvent -> f Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a functorial action to field `x_root`.

### `act_y : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::ButtonEvent -> f Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a functorial action to field `y`.

### `act_y_root : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::ButtonEvent -> f Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a functorial action to field `y_root`.

### `mod__display : (Std::Ptr -> Std::Ptr) -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a function to field `_display`.

### `mod__root : (Std::U64 -> Std::U64) -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a function to field `_root`.

### `mod__subwindow : (Std::U64 -> Std::U64) -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a function to field `_subwindow`.

### `mod__window : (Std::U64 -> Std::U64) -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a function to field `_window`.

### `mod_button : (Std::U32 -> Std::U32) -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a function to field `button`.

### `mod_same_screen : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a function to field `same_screen`.

### `mod_send_event : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a function to field `send_event`.

### `mod_serial : (Std::U64 -> Std::U64) -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a function to field `serial`.

### `mod_state : (Std::U64 -> Std::U64) -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a function to field `state`.

### `mod_time : (Std::U64 -> Std::U64) -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a function to field `time`.

### `mod_type_ : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a function to field `type_`.

### `mod_x : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a function to field `x`.

### `mod_x_root : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a function to field `x_root`.

### `mod_y : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a function to field `y`.

### `mod_y_root : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by applying a function to field `y_root`.

### `set__display : Std::Ptr -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by setting field `_display` to a specified one.

### `set__root : Std::U64 -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by setting field `_root` to a specified one.

### `set__subwindow : Std::U64 -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by setting field `_subwindow` to a specified one.

### `set__window : Std::U64 -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by setting field `_window` to a specified one.

### `set_button : Std::U32 -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by setting field `button` to a specified one.

### `set_same_screen : Std::I32 -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by setting field `same_screen` to a specified one.

### `set_send_event : Std::I32 -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by setting field `send_event` to a specified one.

### `set_serial : Std::U64 -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by setting field `serial` to a specified one.

### `set_state : Std::U64 -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by setting field `state` to a specified one.

### `set_time : Std::U64 -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by setting field `time` to a specified one.

### `set_type_ : Std::I32 -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by setting field `type_` to a specified one.

### `set_x : Std::I32 -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by setting field `x` to a specified one.

### `set_x_root : Std::I32 -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by setting field `x_root` to a specified one.

### `set_y : Std::I32 -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by setting field `y` to a specified one.

### `set_y_root : Std::I32 -> Cairo.XlibSurface::Event::ButtonEvent -> Cairo.XlibSurface::Event::ButtonEvent`

Updates a value of `ButtonEvent` by setting field `y_root` to a specified one.

## `namespace Cairo.XlibSurface::Event::DestroyNotifyEvent`

### `@_display : Cairo.XlibSurface::Event::DestroyNotifyEvent -> Std::Ptr`

Retrieves the field `_display` from a value of `DestroyNotifyEvent`.

### `@_event : Cairo.XlibSurface::Event::DestroyNotifyEvent -> Std::U64`

Retrieves the field `_event` from a value of `DestroyNotifyEvent`.

### `@_window : Cairo.XlibSurface::Event::DestroyNotifyEvent -> Std::U64`

Retrieves the field `_window` from a value of `DestroyNotifyEvent`.

### `@send_event : Cairo.XlibSurface::Event::DestroyNotifyEvent -> Std::I32`

Retrieves the field `send_event` from a value of `DestroyNotifyEvent`.

### `@serial : Cairo.XlibSurface::Event::DestroyNotifyEvent -> Std::U64`

Retrieves the field `serial` from a value of `DestroyNotifyEvent`.

### `@type_ : Cairo.XlibSurface::Event::DestroyNotifyEvent -> Std::I32`

Retrieves the field `type_` from a value of `DestroyNotifyEvent`.

### `_null : Cairo.XlibSurface::Event::DestroyNotifyEvent`

### `act__display : [f : Std::Functor] (Std::Ptr -> f Std::Ptr) -> Cairo.XlibSurface::Event::DestroyNotifyEvent -> f Cairo.XlibSurface::Event::DestroyNotifyEvent`

Updates a value of `DestroyNotifyEvent` by applying a functorial action to field `_display`.

### `act__event : [f : Std::Functor] (Std::U64 -> f Std::U64) -> Cairo.XlibSurface::Event::DestroyNotifyEvent -> f Cairo.XlibSurface::Event::DestroyNotifyEvent`

Updates a value of `DestroyNotifyEvent` by applying a functorial action to field `_event`.

### `act__window : [f : Std::Functor] (Std::U64 -> f Std::U64) -> Cairo.XlibSurface::Event::DestroyNotifyEvent -> f Cairo.XlibSurface::Event::DestroyNotifyEvent`

Updates a value of `DestroyNotifyEvent` by applying a functorial action to field `_window`.

### `act_send_event : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::DestroyNotifyEvent -> f Cairo.XlibSurface::Event::DestroyNotifyEvent`

Updates a value of `DestroyNotifyEvent` by applying a functorial action to field `send_event`.

### `act_serial : [f : Std::Functor] (Std::U64 -> f Std::U64) -> Cairo.XlibSurface::Event::DestroyNotifyEvent -> f Cairo.XlibSurface::Event::DestroyNotifyEvent`

Updates a value of `DestroyNotifyEvent` by applying a functorial action to field `serial`.

### `act_type_ : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::DestroyNotifyEvent -> f Cairo.XlibSurface::Event::DestroyNotifyEvent`

Updates a value of `DestroyNotifyEvent` by applying a functorial action to field `type_`.

### `mod__display : (Std::Ptr -> Std::Ptr) -> Cairo.XlibSurface::Event::DestroyNotifyEvent -> Cairo.XlibSurface::Event::DestroyNotifyEvent`

Updates a value of `DestroyNotifyEvent` by applying a function to field `_display`.

### `mod__event : (Std::U64 -> Std::U64) -> Cairo.XlibSurface::Event::DestroyNotifyEvent -> Cairo.XlibSurface::Event::DestroyNotifyEvent`

Updates a value of `DestroyNotifyEvent` by applying a function to field `_event`.

### `mod__window : (Std::U64 -> Std::U64) -> Cairo.XlibSurface::Event::DestroyNotifyEvent -> Cairo.XlibSurface::Event::DestroyNotifyEvent`

Updates a value of `DestroyNotifyEvent` by applying a function to field `_window`.

### `mod_send_event : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::DestroyNotifyEvent -> Cairo.XlibSurface::Event::DestroyNotifyEvent`

Updates a value of `DestroyNotifyEvent` by applying a function to field `send_event`.

### `mod_serial : (Std::U64 -> Std::U64) -> Cairo.XlibSurface::Event::DestroyNotifyEvent -> Cairo.XlibSurface::Event::DestroyNotifyEvent`

Updates a value of `DestroyNotifyEvent` by applying a function to field `serial`.

### `mod_type_ : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::DestroyNotifyEvent -> Cairo.XlibSurface::Event::DestroyNotifyEvent`

Updates a value of `DestroyNotifyEvent` by applying a function to field `type_`.

### `set__display : Std::Ptr -> Cairo.XlibSurface::Event::DestroyNotifyEvent -> Cairo.XlibSurface::Event::DestroyNotifyEvent`

Updates a value of `DestroyNotifyEvent` by setting field `_display` to a specified one.

### `set__event : Std::U64 -> Cairo.XlibSurface::Event::DestroyNotifyEvent -> Cairo.XlibSurface::Event::DestroyNotifyEvent`

Updates a value of `DestroyNotifyEvent` by setting field `_event` to a specified one.

### `set__window : Std::U64 -> Cairo.XlibSurface::Event::DestroyNotifyEvent -> Cairo.XlibSurface::Event::DestroyNotifyEvent`

Updates a value of `DestroyNotifyEvent` by setting field `_window` to a specified one.

### `set_send_event : Std::I32 -> Cairo.XlibSurface::Event::DestroyNotifyEvent -> Cairo.XlibSurface::Event::DestroyNotifyEvent`

Updates a value of `DestroyNotifyEvent` by setting field `send_event` to a specified one.

### `set_serial : Std::U64 -> Cairo.XlibSurface::Event::DestroyNotifyEvent -> Cairo.XlibSurface::Event::DestroyNotifyEvent`

Updates a value of `DestroyNotifyEvent` by setting field `serial` to a specified one.

### `set_type_ : Std::I32 -> Cairo.XlibSurface::Event::DestroyNotifyEvent -> Cairo.XlibSurface::Event::DestroyNotifyEvent`

Updates a value of `DestroyNotifyEvent` by setting field `type_` to a specified one.

## `namespace Cairo.XlibSurface::Event::ExposeEvent`

### `@_display : Cairo.XlibSurface::Event::ExposeEvent -> Std::Ptr`

Retrieves the field `_display` from a value of `ExposeEvent`.

### `@_window : Cairo.XlibSurface::Event::ExposeEvent -> Std::U64`

Retrieves the field `_window` from a value of `ExposeEvent`.

### `@count : Cairo.XlibSurface::Event::ExposeEvent -> Std::I32`

Retrieves the field `count` from a value of `ExposeEvent`.

### `@height : Cairo.XlibSurface::Event::ExposeEvent -> Std::I32`

Retrieves the field `height` from a value of `ExposeEvent`.

### `@send_event : Cairo.XlibSurface::Event::ExposeEvent -> Std::I32`

Retrieves the field `send_event` from a value of `ExposeEvent`.

### `@serial : Cairo.XlibSurface::Event::ExposeEvent -> Std::U64`

Retrieves the field `serial` from a value of `ExposeEvent`.

### `@type_ : Cairo.XlibSurface::Event::ExposeEvent -> Std::I32`

Retrieves the field `type_` from a value of `ExposeEvent`.

### `@width : Cairo.XlibSurface::Event::ExposeEvent -> Std::I32`

Retrieves the field `width` from a value of `ExposeEvent`.

### `@x : Cairo.XlibSurface::Event::ExposeEvent -> Std::I32`

Retrieves the field `x` from a value of `ExposeEvent`.

### `@y : Cairo.XlibSurface::Event::ExposeEvent -> Std::I32`

Retrieves the field `y` from a value of `ExposeEvent`.

### `_null : Cairo.XlibSurface::Event::ExposeEvent`

### `act__display : [f : Std::Functor] (Std::Ptr -> f Std::Ptr) -> Cairo.XlibSurface::Event::ExposeEvent -> f Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by applying a functorial action to field `_display`.

### `act__window : [f : Std::Functor] (Std::U64 -> f Std::U64) -> Cairo.XlibSurface::Event::ExposeEvent -> f Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by applying a functorial action to field `_window`.

### `act_count : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::ExposeEvent -> f Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by applying a functorial action to field `count`.

### `act_height : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::ExposeEvent -> f Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by applying a functorial action to field `height`.

### `act_send_event : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::ExposeEvent -> f Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by applying a functorial action to field `send_event`.

### `act_serial : [f : Std::Functor] (Std::U64 -> f Std::U64) -> Cairo.XlibSurface::Event::ExposeEvent -> f Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by applying a functorial action to field `serial`.

### `act_type_ : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::ExposeEvent -> f Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by applying a functorial action to field `type_`.

### `act_width : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::ExposeEvent -> f Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by applying a functorial action to field `width`.

### `act_x : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::ExposeEvent -> f Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by applying a functorial action to field `x`.

### `act_y : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::ExposeEvent -> f Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by applying a functorial action to field `y`.

### `mod__display : (Std::Ptr -> Std::Ptr) -> Cairo.XlibSurface::Event::ExposeEvent -> Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by applying a function to field `_display`.

### `mod__window : (Std::U64 -> Std::U64) -> Cairo.XlibSurface::Event::ExposeEvent -> Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by applying a function to field `_window`.

### `mod_count : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::ExposeEvent -> Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by applying a function to field `count`.

### `mod_height : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::ExposeEvent -> Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by applying a function to field `height`.

### `mod_send_event : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::ExposeEvent -> Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by applying a function to field `send_event`.

### `mod_serial : (Std::U64 -> Std::U64) -> Cairo.XlibSurface::Event::ExposeEvent -> Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by applying a function to field `serial`.

### `mod_type_ : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::ExposeEvent -> Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by applying a function to field `type_`.

### `mod_width : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::ExposeEvent -> Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by applying a function to field `width`.

### `mod_x : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::ExposeEvent -> Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by applying a function to field `x`.

### `mod_y : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::ExposeEvent -> Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by applying a function to field `y`.

### `set__display : Std::Ptr -> Cairo.XlibSurface::Event::ExposeEvent -> Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by setting field `_display` to a specified one.

### `set__window : Std::U64 -> Cairo.XlibSurface::Event::ExposeEvent -> Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by setting field `_window` to a specified one.

### `set_count : Std::I32 -> Cairo.XlibSurface::Event::ExposeEvent -> Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by setting field `count` to a specified one.

### `set_height : Std::I32 -> Cairo.XlibSurface::Event::ExposeEvent -> Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by setting field `height` to a specified one.

### `set_send_event : Std::I32 -> Cairo.XlibSurface::Event::ExposeEvent -> Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by setting field `send_event` to a specified one.

### `set_serial : Std::U64 -> Cairo.XlibSurface::Event::ExposeEvent -> Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by setting field `serial` to a specified one.

### `set_type_ : Std::I32 -> Cairo.XlibSurface::Event::ExposeEvent -> Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by setting field `type_` to a specified one.

### `set_width : Std::I32 -> Cairo.XlibSurface::Event::ExposeEvent -> Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by setting field `width` to a specified one.

### `set_x : Std::I32 -> Cairo.XlibSurface::Event::ExposeEvent -> Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by setting field `x` to a specified one.

### `set_y : Std::I32 -> Cairo.XlibSurface::Event::ExposeEvent -> Cairo.XlibSurface::Event::ExposeEvent`

Updates a value of `ExposeEvent` by setting field `y` to a specified one.

## `namespace Cairo.XlibSurface::Event::KeyEvent`

### `@_display : Cairo.XlibSurface::Event::KeyEvent -> Std::Ptr`

Retrieves the field `_display` from a value of `KeyEvent`.

### `@_root : Cairo.XlibSurface::Event::KeyEvent -> Std::U64`

Retrieves the field `_root` from a value of `KeyEvent`.

### `@_subwindow : Cairo.XlibSurface::Event::KeyEvent -> Std::U64`

Retrieves the field `_subwindow` from a value of `KeyEvent`.

### `@_window : Cairo.XlibSurface::Event::KeyEvent -> Std::U64`

Retrieves the field `_window` from a value of `KeyEvent`.

### `@keycode : Cairo.XlibSurface::Event::KeyEvent -> Std::U32`

Retrieves the field `keycode` from a value of `KeyEvent`.

### `@same_screen : Cairo.XlibSurface::Event::KeyEvent -> Std::I32`

Retrieves the field `same_screen` from a value of `KeyEvent`.

### `@send_event : Cairo.XlibSurface::Event::KeyEvent -> Std::I32`

Retrieves the field `send_event` from a value of `KeyEvent`.

### `@serial : Cairo.XlibSurface::Event::KeyEvent -> Std::U64`

Retrieves the field `serial` from a value of `KeyEvent`.

### `@state : Cairo.XlibSurface::Event::KeyEvent -> Std::U32`

Retrieves the field `state` from a value of `KeyEvent`.

### `@time : Cairo.XlibSurface::Event::KeyEvent -> Std::U64`

Retrieves the field `time` from a value of `KeyEvent`.

### `@type_ : Cairo.XlibSurface::Event::KeyEvent -> Std::I32`

Retrieves the field `type_` from a value of `KeyEvent`.

### `@x : Cairo.XlibSurface::Event::KeyEvent -> Std::I32`

Retrieves the field `x` from a value of `KeyEvent`.

### `@x_root : Cairo.XlibSurface::Event::KeyEvent -> Std::I32`

Retrieves the field `x_root` from a value of `KeyEvent`.

### `@y : Cairo.XlibSurface::Event::KeyEvent -> Std::I32`

Retrieves the field `y` from a value of `KeyEvent`.

### `@y_root : Cairo.XlibSurface::Event::KeyEvent -> Std::I32`

Retrieves the field `y_root` from a value of `KeyEvent`.

### `_null : Cairo.XlibSurface::Event::KeyEvent`

### `act__display : [f : Std::Functor] (Std::Ptr -> f Std::Ptr) -> Cairo.XlibSurface::Event::KeyEvent -> f Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a functorial action to field `_display`.

### `act__root : [f : Std::Functor] (Std::U64 -> f Std::U64) -> Cairo.XlibSurface::Event::KeyEvent -> f Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a functorial action to field `_root`.

### `act__subwindow : [f : Std::Functor] (Std::U64 -> f Std::U64) -> Cairo.XlibSurface::Event::KeyEvent -> f Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a functorial action to field `_subwindow`.

### `act__window : [f : Std::Functor] (Std::U64 -> f Std::U64) -> Cairo.XlibSurface::Event::KeyEvent -> f Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a functorial action to field `_window`.

### `act_keycode : [f : Std::Functor] (Std::U32 -> f Std::U32) -> Cairo.XlibSurface::Event::KeyEvent -> f Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a functorial action to field `keycode`.

### `act_same_screen : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::KeyEvent -> f Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a functorial action to field `same_screen`.

### `act_send_event : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::KeyEvent -> f Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a functorial action to field `send_event`.

### `act_serial : [f : Std::Functor] (Std::U64 -> f Std::U64) -> Cairo.XlibSurface::Event::KeyEvent -> f Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a functorial action to field `serial`.

### `act_state : [f : Std::Functor] (Std::U32 -> f Std::U32) -> Cairo.XlibSurface::Event::KeyEvent -> f Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a functorial action to field `state`.

### `act_time : [f : Std::Functor] (Std::U64 -> f Std::U64) -> Cairo.XlibSurface::Event::KeyEvent -> f Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a functorial action to field `time`.

### `act_type_ : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::KeyEvent -> f Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a functorial action to field `type_`.

### `act_x : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::KeyEvent -> f Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a functorial action to field `x`.

### `act_x_root : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::KeyEvent -> f Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a functorial action to field `x_root`.

### `act_y : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::KeyEvent -> f Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a functorial action to field `y`.

### `act_y_root : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::KeyEvent -> f Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a functorial action to field `y_root`.

### `mod__display : (Std::Ptr -> Std::Ptr) -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a function to field `_display`.

### `mod__root : (Std::U64 -> Std::U64) -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a function to field `_root`.

### `mod__subwindow : (Std::U64 -> Std::U64) -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a function to field `_subwindow`.

### `mod__window : (Std::U64 -> Std::U64) -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a function to field `_window`.

### `mod_keycode : (Std::U32 -> Std::U32) -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a function to field `keycode`.

### `mod_same_screen : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a function to field `same_screen`.

### `mod_send_event : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a function to field `send_event`.

### `mod_serial : (Std::U64 -> Std::U64) -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a function to field `serial`.

### `mod_state : (Std::U32 -> Std::U32) -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a function to field `state`.

### `mod_time : (Std::U64 -> Std::U64) -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a function to field `time`.

### `mod_type_ : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a function to field `type_`.

### `mod_x : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a function to field `x`.

### `mod_x_root : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a function to field `x_root`.

### `mod_y : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a function to field `y`.

### `mod_y_root : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by applying a function to field `y_root`.

### `set__display : Std::Ptr -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by setting field `_display` to a specified one.

### `set__root : Std::U64 -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by setting field `_root` to a specified one.

### `set__subwindow : Std::U64 -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by setting field `_subwindow` to a specified one.

### `set__window : Std::U64 -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by setting field `_window` to a specified one.

### `set_keycode : Std::U32 -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by setting field `keycode` to a specified one.

### `set_same_screen : Std::I32 -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by setting field `same_screen` to a specified one.

### `set_send_event : Std::I32 -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by setting field `send_event` to a specified one.

### `set_serial : Std::U64 -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by setting field `serial` to a specified one.

### `set_state : Std::U32 -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by setting field `state` to a specified one.

### `set_time : Std::U64 -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by setting field `time` to a specified one.

### `set_type_ : Std::I32 -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by setting field `type_` to a specified one.

### `set_x : Std::I32 -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by setting field `x` to a specified one.

### `set_x_root : Std::I32 -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by setting field `x_root` to a specified one.

### `set_y : Std::I32 -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by setting field `y` to a specified one.

### `set_y_root : Std::I32 -> Cairo.XlibSurface::Event::KeyEvent -> Cairo.XlibSurface::Event::KeyEvent`

Updates a value of `KeyEvent` by setting field `y_root` to a specified one.

## `namespace Cairo.XlibSurface::Event::MotionEvent`

### `@_display : Cairo.XlibSurface::Event::MotionEvent -> Std::Ptr`

Retrieves the field `_display` from a value of `MotionEvent`.

### `@_root : Cairo.XlibSurface::Event::MotionEvent -> Std::U64`

Retrieves the field `_root` from a value of `MotionEvent`.

### `@_subwindow : Cairo.XlibSurface::Event::MotionEvent -> Std::U64`

Retrieves the field `_subwindow` from a value of `MotionEvent`.

### `@_window : Cairo.XlibSurface::Event::MotionEvent -> Std::U64`

Retrieves the field `_window` from a value of `MotionEvent`.

### `@is_hint : Cairo.XlibSurface::Event::MotionEvent -> Std::U8`

Retrieves the field `is_hint` from a value of `MotionEvent`.

### `@same_screen : Cairo.XlibSurface::Event::MotionEvent -> Std::I32`

Retrieves the field `same_screen` from a value of `MotionEvent`.

### `@send_event : Cairo.XlibSurface::Event::MotionEvent -> Std::I32`

Retrieves the field `send_event` from a value of `MotionEvent`.

### `@serial : Cairo.XlibSurface::Event::MotionEvent -> Std::U64`

Retrieves the field `serial` from a value of `MotionEvent`.

### `@state : Cairo.XlibSurface::Event::MotionEvent -> Std::U64`

Retrieves the field `state` from a value of `MotionEvent`.

### `@time : Cairo.XlibSurface::Event::MotionEvent -> Std::U64`

Retrieves the field `time` from a value of `MotionEvent`.

### `@type_ : Cairo.XlibSurface::Event::MotionEvent -> Std::I32`

Retrieves the field `type_` from a value of `MotionEvent`.

### `@x : Cairo.XlibSurface::Event::MotionEvent -> Std::I32`

Retrieves the field `x` from a value of `MotionEvent`.

### `@x_root : Cairo.XlibSurface::Event::MotionEvent -> Std::I32`

Retrieves the field `x_root` from a value of `MotionEvent`.

### `@y : Cairo.XlibSurface::Event::MotionEvent -> Std::I32`

Retrieves the field `y` from a value of `MotionEvent`.

### `@y_root : Cairo.XlibSurface::Event::MotionEvent -> Std::I32`

Retrieves the field `y_root` from a value of `MotionEvent`.

### `_null : Cairo.XlibSurface::Event::MotionEvent`

### `act__display : [f : Std::Functor] (Std::Ptr -> f Std::Ptr) -> Cairo.XlibSurface::Event::MotionEvent -> f Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a functorial action to field `_display`.

### `act__root : [f : Std::Functor] (Std::U64 -> f Std::U64) -> Cairo.XlibSurface::Event::MotionEvent -> f Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a functorial action to field `_root`.

### `act__subwindow : [f : Std::Functor] (Std::U64 -> f Std::U64) -> Cairo.XlibSurface::Event::MotionEvent -> f Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a functorial action to field `_subwindow`.

### `act__window : [f : Std::Functor] (Std::U64 -> f Std::U64) -> Cairo.XlibSurface::Event::MotionEvent -> f Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a functorial action to field `_window`.

### `act_is_hint : [f : Std::Functor] (Std::U8 -> f Std::U8) -> Cairo.XlibSurface::Event::MotionEvent -> f Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a functorial action to field `is_hint`.

### `act_same_screen : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::MotionEvent -> f Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a functorial action to field `same_screen`.

### `act_send_event : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::MotionEvent -> f Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a functorial action to field `send_event`.

### `act_serial : [f : Std::Functor] (Std::U64 -> f Std::U64) -> Cairo.XlibSurface::Event::MotionEvent -> f Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a functorial action to field `serial`.

### `act_state : [f : Std::Functor] (Std::U64 -> f Std::U64) -> Cairo.XlibSurface::Event::MotionEvent -> f Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a functorial action to field `state`.

### `act_time : [f : Std::Functor] (Std::U64 -> f Std::U64) -> Cairo.XlibSurface::Event::MotionEvent -> f Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a functorial action to field `time`.

### `act_type_ : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::MotionEvent -> f Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a functorial action to field `type_`.

### `act_x : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::MotionEvent -> f Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a functorial action to field `x`.

### `act_x_root : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::MotionEvent -> f Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a functorial action to field `x_root`.

### `act_y : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::MotionEvent -> f Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a functorial action to field `y`.

### `act_y_root : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Event::MotionEvent -> f Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a functorial action to field `y_root`.

### `mod__display : (Std::Ptr -> Std::Ptr) -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a function to field `_display`.

### `mod__root : (Std::U64 -> Std::U64) -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a function to field `_root`.

### `mod__subwindow : (Std::U64 -> Std::U64) -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a function to field `_subwindow`.

### `mod__window : (Std::U64 -> Std::U64) -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a function to field `_window`.

### `mod_is_hint : (Std::U8 -> Std::U8) -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a function to field `is_hint`.

### `mod_same_screen : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a function to field `same_screen`.

### `mod_send_event : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a function to field `send_event`.

### `mod_serial : (Std::U64 -> Std::U64) -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a function to field `serial`.

### `mod_state : (Std::U64 -> Std::U64) -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a function to field `state`.

### `mod_time : (Std::U64 -> Std::U64) -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a function to field `time`.

### `mod_type_ : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a function to field `type_`.

### `mod_x : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a function to field `x`.

### `mod_x_root : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a function to field `x_root`.

### `mod_y : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a function to field `y`.

### `mod_y_root : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by applying a function to field `y_root`.

### `set__display : Std::Ptr -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by setting field `_display` to a specified one.

### `set__root : Std::U64 -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by setting field `_root` to a specified one.

### `set__subwindow : Std::U64 -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by setting field `_subwindow` to a specified one.

### `set__window : Std::U64 -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by setting field `_window` to a specified one.

### `set_is_hint : Std::U8 -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by setting field `is_hint` to a specified one.

### `set_same_screen : Std::I32 -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by setting field `same_screen` to a specified one.

### `set_send_event : Std::I32 -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by setting field `send_event` to a specified one.

### `set_serial : Std::U64 -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by setting field `serial` to a specified one.

### `set_state : Std::U64 -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by setting field `state` to a specified one.

### `set_time : Std::U64 -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by setting field `time` to a specified one.

### `set_type_ : Std::I32 -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by setting field `type_` to a specified one.

### `set_x : Std::I32 -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by setting field `x` to a specified one.

### `set_x_root : Std::I32 -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by setting field `x_root` to a specified one.

### `set_y : Std::I32 -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by setting field `y` to a specified one.

### `set_y_root : Std::I32 -> Cairo.XlibSurface::Event::MotionEvent -> Cairo.XlibSurface::Event::MotionEvent`

Updates a value of `MotionEvent` by setting field `y_root` to a specified one.

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

## `namespace Cairo.XlibSurface::Window`

### `@_display : Cairo.XlibSurface::Window -> Std::Ptr`

Retrieves the field `_display` from a value of `Window`.

### `@_window_id : Cairo.XlibSurface::Window -> Std::U64`

Retrieves the field `_window_id` from a value of `Window`.

### `@height : Cairo.XlibSurface::Window -> Std::I32`

Retrieves the field `height` from a value of `Window`.

### `@width : Cairo.XlibSurface::Window -> Std::I32`

Retrieves the field `width` from a value of `Window`.

### `act__display : [f : Std::Functor] (Std::Ptr -> f Std::Ptr) -> Cairo.XlibSurface::Window -> f Cairo.XlibSurface::Window`

Updates a value of `Window` by applying a functorial action to field `_display`.

### `act__window_id : [f : Std::Functor] (Std::U64 -> f Std::U64) -> Cairo.XlibSurface::Window -> f Cairo.XlibSurface::Window`

Updates a value of `Window` by applying a functorial action to field `_window_id`.

### `act_height : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Window -> f Cairo.XlibSurface::Window`

Updates a value of `Window` by applying a functorial action to field `height`.

### `act_width : [f : Std::Functor] (Std::I32 -> f Std::I32) -> Cairo.XlibSurface::Window -> f Cairo.XlibSurface::Window`

Updates a value of `Window` by applying a functorial action to field `width`.

### `mod__display : (Std::Ptr -> Std::Ptr) -> Cairo.XlibSurface::Window -> Cairo.XlibSurface::Window`

Updates a value of `Window` by applying a function to field `_display`.

### `mod__window_id : (Std::U64 -> Std::U64) -> Cairo.XlibSurface::Window -> Cairo.XlibSurface::Window`

Updates a value of `Window` by applying a function to field `_window_id`.

### `mod_height : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Window -> Cairo.XlibSurface::Window`

Updates a value of `Window` by applying a function to field `height`.

### `mod_width : (Std::I32 -> Std::I32) -> Cairo.XlibSurface::Window -> Cairo.XlibSurface::Window`

Updates a value of `Window` by applying a function to field `width`.

### `set__display : Std::Ptr -> Cairo.XlibSurface::Window -> Cairo.XlibSurface::Window`

Updates a value of `Window` by setting field `_display` to a specified one.

### `set__window_id : Std::U64 -> Cairo.XlibSurface::Window -> Cairo.XlibSurface::Window`

Updates a value of `Window` by setting field `_window_id` to a specified one.

### `set_height : Std::I32 -> Cairo.XlibSurface::Window -> Cairo.XlibSurface::Window`

Updates a value of `Window` by setting field `height` to a specified one.

### `set_width : Std::I32 -> Cairo.XlibSurface::Window -> Cairo.XlibSurface::Window`

Updates a value of `Window` by setting field `width` to a specified one.

## `namespace Cairo.XlibSurface::XbeSwapAction`

### `background : Std::U8`

### `copied : Std::U8`

### `undefined : Std::U8`

### `untouched : Std::U8`