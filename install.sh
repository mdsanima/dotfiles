#!/usr/bin/env bash

# Copyright © 2023 MDSANIMA

# This is a installation script for `Oh My Zsh` terminal configuration. This
# script also colorize print text in a fancy way.

# Import default color definition.
source "$PWD/.local/bin/mdsanima-color"

# Help function for printing text in color.
print_color() {
    local text="$1"
    local fg_color
    local bg_color
    local no_newline=false

    shift 1

    # Iterate over all arguments.
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
