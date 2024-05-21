# cairo-fixlang
Fix-lang binding to the Cairo graphics library.

# Usage
* When building fix executable, add a flag `-d cairo`.
* If you use backends such as X11, additional flag for dynamic linking will be necessary. See Makefile for the compiler flag.
* Requires cairo >= 1.16.0.