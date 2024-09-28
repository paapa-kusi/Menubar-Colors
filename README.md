<h1 align="center">Menubar Colors</h1>

<p align="center">
    <img alt="OS X Version"    src="http://img.shields.io/badge/OS%20X-10.10%2B-lightgrey.svg"/>
    <img alt="Release Version" src="https://img.shields.io/badge/release-v2.3.0-orange.svg"/>
    <img alt="License"         src="https://img.shields.io/badge/license-MIT-blue.svg"/>
</p>

<p align="center">
    <a href="#installation">Installation</a>
  • <a href="#how-do-you-use-this">Usage</a>
  • <a href="#recommended-plugins">Plugins</a>
</p>


## What is this?

This a utility that runs in the OS X menubar that allows for quick access to the
system-wide color panel.

![Example](./Example.jpg)

## Installation

### Download

[Latest release](https://github.com/nvzqz/Menubar-Colors/releases/latest)

### Cask

`brew cask install menubar-colors`

## How do you use this?

- Left click toggles the color panel's visibility. <br/>
- Right click opens a drop down menu of options.
    - Closing the application.
    - Color panel settings.

## Who is this for?

This utility was designed for designers and developers who need quick access to
the color panel. I chose to use the system color panel rather than make my own
because of how extensible it is.

## Recommended Plugins

### Skala Color
An advanced color picker for designers.

[Download](http://bjango.com/mac/skalacolor/)

Cask: `brew cask install colorpicker-skalacolor`

### Antetype Color Picker
Color picker for UI/UX designers.

[Download](http://www.antetype.com/blog/2014/03/updated-antetype-color-picker-1-4-1/)

Cask: `brew cask install colorpicker-antetype`

### Developer Color Picker
A tool for developers that provides hex and RGB color codes.

[Download](http://download.panic.com/picker/)

Cask: `brew cask install colorpicker-developer`

## FAQ
- Can I customize the color picker?
    - This project uses the system-wide panel, so it's functionality can be extended with the plugins in the plugins section.
- Does this work between multiple monitors?
    - Yes, this should work between multiple seamless displays. The color panel will open on the screen where the menubar is.

## License

This project is licensed under the [MIT License](http://opensource.org/licenses/MIT).
Anyone is free to edit and improve the code here or use it for another project.

#### The MIT License (MIT)

Copyright (c) 2015 Nikolai Vazquez

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
