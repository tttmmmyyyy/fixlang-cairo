# cairo-fixlang

Fix-lang binding to the Cairo graphics library.

# Dependencies 

* You need [Fix-lang](https://github.com/tttmmmyyyy/fixlang) to be installed.
* Requires cairo >= 1.16.0, X11, Xext. 
  * The build script finds these libraries by pkg-config. So, you need to have pkg-config installed.
```
sudo apt update
sudo apt install -y pkg-config libcairo2-dev libx11-dev libxext-dev
```
* On MacOS, XQuartz is required.
