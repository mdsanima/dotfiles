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

# Import default colors definition
source "$PWD/bin/mdsanima-colors"


# Help function for printing text in colors
function _color_print() {
    local text="$1"
    local fg_color
    local bg_color
    local no_newline=false

    shift 1

    while [[ $# -gt 0 ]]; do
        case "$1" in
            -fg)
                fg_color="$2"
                shift 2
                ;;
            -bg)
                bg_color="$2"
                shift 2
                ;;
            -nonewline)
                no_newline=true
                shift 1
                ;;
            *)
                echo "unrecognized argument: $1"
                return 1
                ;;
        esac
    done

    local fg_code
    local bg_code
    local reset_code="\x1b[0m"

    if [[ "$fg_color" =~ ^[0-9]+$ ]]; then
        fg_code="\x1b[38;5;${fg_color}m"
    elif [[ -v "$fg_color" ]]; then
        fg_code="\x1b[38;5;${!fg_color}m"
    fi

    if [[ "$bg_color" =~ ^[0-9]+$ ]]; then
        bg_code="\x1b[48;5;${bg_color}m"
    elif [[ -v "$bg_color" ]]; then
        bg_code="\x1b[48;5;${!bg_color}m"
    fi

    if [[ "$no_newline" == true ]]; then
        echo -e -n "${fg_code}${bg_code}${text}${reset_code}"
    else
        echo -e "${fg_code}${bg_code}${text}${reset_code}"
    fi
}


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
