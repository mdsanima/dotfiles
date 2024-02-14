# Libraries

Below is documentation for the libraries included in this project, which you can utilize in your own projects.

> [!NOTE]
> Currently, the libraries are only available within this project and cannot be installed as a package using `apt install`.
>
> However, there are plans to make it available as a standalone package in the future.

<details>
<summary><strong>Table of Contents</strong> (click to expand)</summary>

- [Libraries](#libraries)
  - [mdsanima-shell](#mdsanima-shell)
    - [Available libraries](#available-libraries)
    - [Available functions](#available-functions)
    - [Example usages](#example-usages)

</details>

## mdsanima-shell

This package contains libraries for functions that help execute _Shell Scripts_ on **GNU/Linux**, such as _Debian_ or _Ubuntu_.

### Available libraries

- [`libcolor`](./mdsanima-shell/libcolor.sh): Color palette definition that will be used throughout a project for consistent styling.
- [`libconvert`](./mdsanima-shell/libconvert.sh): Converting data or values from one format or type to another.
- [`libevent`](./mdsanima-shell/libevent.sh): Logging events or actions within a program for debugging or monitoring purposes.
- [`libprint`](./mdsanima-shell/libprint.sh): Printing formatted text or data to the shell console or another output stream.
- [`libutil`](./mdsanima-shell/libutil.sh): Utility that perform common tasks or operations needed across different parts of a project.

Each file above contains appropriate documentation for each available function and how to use it.

### Available functions

- `convert::hex_to_rgb`
- `event::debug`
- `event::dev`
- `event::error`
- `event::info`
- `event::success`
- `event::warning`
- `print::color`
- `util::check_package_installed`
- `util::one_line_progress`

### Example usages

If you want to use this library files you can simple sourced this file on your bash script like this example:

```shell
source "$PWD/lib/mdsanima-shell/libcolor.sh"
```

In the above example, I used `$PWD` to get the path to the file directory. This example is executed in the directory where our libraries must be located, for example `/home/mdsanima/workspace/dotfiles/` the current repository and the script file in which we want to use our libraries is in the root of this directory like `install.sh` script.

Example script file `test.sh` must be located on the root of this repository:

```shell
#!/bin/bash

# Import library
source "$PWD/lib/mdsanima-shell/libcolor.sh"
source "$PWD/lib/mdsanima-shell/libconvert.sh"
source "$PWD/lib/mdsanima-shell/libevent.sh"
source "$PWD/lib/mdsanima-shell/libprint.sh"
source "$PWD/lib/mdsanima-shell/libutil.sh"

# Test color library
echo "RED color number: ${RED}"

# Test contert library
hex="ff0000"
rgb=$(convert::hex_to_rgb $hex)
echo "HEX ${hex} color is converted to RGB: ${rgb}"

# Test event library
event::warning
done=$(event::success)
echo -e "${clean_line_seq}${done} Testing event functions was finished!"

# Test print library
print::color -fg 16 -bg 196 -bold "Bold black text on red background"
print::color -fg ${BLACK} -bg ${BLUE} -bold -nonewline " MDSANIMA "
print::color -fg 27 " Blue text next to other"

# Test util library
util::one_line_progress sudo apt update
if util::check_package_installed git; then
  echo "Package git is installed!"
else
  echo "Package git is not installed!"
fi
```

If you want to use this on other directory you must give the correct path to the libraries.
