# Copyright (c) 2023-2024 MDSANIMA DEV. All rights reserved.
# Licensed under the MIT license.

# This is the `mdsanima-shell` module for terminal Shell Script on Linux system. This file is the entry point of the all
# files in `mdsanima-shell` module. The module is the part of `mdsanima-dev` dotfiles project.


# Import private modules
source "$PWD/private/banner.sh"
source "$PWD/private/print.sh"
source "$PWD/private/prompt.sh"
source "$PWD/private/weather.sh"

# Import public modules
source "$PWD/public/colors.sh"


# The alternative to `__mdsanima_color_print` function, it works the same way
cprint() {
    __mdsanima_color_print "$@"
    unset -f __mdsanima_color_print
}
