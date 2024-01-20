#!/usr/bin/env bash

# Copyright (c) 2023-2024 MDSANIMA DEV. All rights reserved.
# Licensed under the MIT license.

# This is a installation script for `Oh My Zsh` terminal configuration. This
# script also colorize print text in a fancy way.


# List of packages to install
APT_PACKAGES="python3-pip zsh powerline fonts-powerline zsh-theme-powerlevel9k"
APT_PACKAGES_OPTIONAL="curl git htop vim tmux mc neofetch cmatrix ffmpeg"

# Get the current tag from the Git repository
CURRENT_GIT_TAG=$(git describe --tags)

# Import default colors definition and help function for printing text in colors
source "$PWD/.local/bin/mdsanima-colors"
source "$PWD/.local/bin/mdsanima-prints"


# Event logs information
function _print_event() {
    local bg_color="$1"
    local fg_color="$2"
    local log_info="$3"
    _color_print " MDSANIMA DEV " -fg WHITE -bg $bg_color -nonewline
    _color_print " $log_info" -fg $fg_color
}


# Version and application name
function show_version() {
    _color_print ""
    _print_event GRAY SKY "dotfiles $CURRENT_GIT_TAG"
    _color_print ""
}


# Help instruction
function show_help() {
    _color_print "This installer is only available for Linux system." -fg WHITE
    _color_print ""
    _color_print "Copyright (c) 2023-2024 MDSANIMA DEV. All rights reserved. Licensed under the MIT license." -fg RED
    _color_print ""
}


# Run these functions
show_version
show_help
