# Copyright (c) 2023-2024 MDSANIMA DEV. All rights reserved.
# Licensed under the MIT license.

# This is the `mdsanima-shell` module for terminal Shell Script on Linux system. This file is the entry point of the all
# files in `mdsanima-shell` module. The module is the part of `mdsanima-dev` dotfiles project.


# Get the current directory
MODULE_DIR="$(dirname "$0")"

# Import private modules
. "$MODULE_DIR/private/banner.sh"
. "$MODULE_DIR/private/event.sh"
. "$MODULE_DIR/private/print.sh"
. "$MODULE_DIR/private/prompt.sh"
. "$MODULE_DIR/private/weather.sh"

# Import public modules
. "$MODULE_DIR/public/colors.sh"

# The alternative to `__mds_color_print` function, it works the same way
cprint() {
    __mds_color_print "$@"
}
