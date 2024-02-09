# Libraries

Below is documentation for the libraries included in this project, which you can utilize in your own projects.

Currently, the libraries are only available within this project and cannot be installed as a package using commands such as `sudo apt install`. However, there are plans to make it available as a standalone package in the future.

## mdsanima-shell

This library contains functions thats help to execute _Shell Scripts_ on **GNU/Linux** systems, like _Debian_ or _Ubuntu_.

## Available Functions

List of available files and functions:

- `libcolor.sh`: Defined color names with color code number.
- `libevent.sh`: Functions for print event names in colors.
  - `event::debug`
  - `event::dev`
  - `event::error`
  - `event::info`
  - `event::success`
  - `event::warning`
- `libmprint.sh`: Functions for print text messages in colors.
  - `mprint::color`
- `libutil.sh`: Utility functions.
  - `util::one_line_progress`
  - `util::check_package_installed`

Each file above contains appropriate documentation for each available function and how to use it.

## Example Usages

If you want to use this library files you can simple sourced this file on your bash script like this example:

```bash
source "$PWD/lib/mdsanima-shell/libcolor.sh"
```

In the above example, I used `$PWD` to get the path to the file directory. This example is executed in the directory where our libraries must be located, for example `/home/mdsanima/workspace/dotfiles/` the current repository and the script file in which we want to use our libraries is in the root of this directory like `install.sh` script.

Example script file `test.sh` must be located on the root of this repository:

```bash
#!/bin/bash

# Importing libraries
source "$PWD/lib/mdsanima-shell/libcolor.sh"
source "$PWD/lib/mdsanima-shell/libevent.sh"
source "$PWD/lib/mdsanima-shell/libmprint.sh"
source "$PWD/lib/mdsanima-shell/libutil.sh"

# Testing mprint functions
mprint::color -fg ${WHITE} -bg ${BLUE} -bold -nonewline " MDSANIMA "
mprint::color -fg 27 " Blue text next to other"
mprint::color -fg ${BLACK} -bg ${RED} "Black text on red background"
mprint::color -fg 15 -bg 9 -bold "Bold white text on red background"
mprint::color "Normal text"
mprint::color -fg 196 "Red text"
mprint::color -fg 196 -b "Bold red text"
mprint::color -fg 196 -i "Italic red text"
mprint::color -fg ${BLUE} -b -italic "Bold italic blue text"
mprint::color -n "This line is printed in "
mprint::color -fg ${RED} -n "red "
mprint::color -fg ${GREEN} -n "green "
mprint::color -fg ${BLUE} -n "blue "
mprint::color "colored text"

# Testing event functions
event::dev
event::info
event::debug
event::error
event::warning
done=$(event::success)
echo -e "${clean_line_seq}${done} Testing event functions was finished!"

# Tesging util functions
util::one_line_progress sudo apt update
if util::check_package_installed git; then
  echo "Package git is installed!"
else
  echo "Package git is not installed!"
fi
```

If you want to use this on other directory you must give the correct path to the libraries.
