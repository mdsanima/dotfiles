#!/bin/sh

# Copyright (c) 2023-2024 MDSANIMA DEV. All rights reserved.
# Licensed under the MIT license.

# This is a installation script for MDSANIMA DEV dotfiles on Linux terminal configuration.


# Import necessary modules
. "$PWD/modules/mdsanima-shell/private/banner.sh"
. "$PWD/modules/mdsanima-shell/private/event.sh"
. "$PWD/modules/mdsanima-shell/private/print.sh"
. "$PWD/modules/mdsanima-shell/public/colors.sh"

# List of packages to install
APT_PACKAGES="python3-pip zsh powerline fonts-powerline zsh-theme-powerlevel9k"
APT_PACKAGES_OPTIONAL="curl git htop vim tmux mc neofetch cmatrix ffmpeg"

# Get the current tag from the Git repository
CURRENT_GIT_TAG=$(git describe --tags)

dotfiles_installer() {
    __mds_ascii_banner
    __mds_event_log $BLUE "MDSANIMA DEV" "dotfiles $CURRENT_GIT_TAG"
    __mds_color_print " "
    __mds_color_print -fg $WHITE "This installer is only available for Linux system."
    __mds_color_print " "
    __mds_color_print -fg $GRAY "Copyright (c) 2023-2024 MDSANIMA DEV. All rights reserved. Licensed under the MIT license."
}

dotfiles_installer
