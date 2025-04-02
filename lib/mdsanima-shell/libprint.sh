# Copyright (c) 2024-2025 Marcin Różewski, Amarokelab.
# All rights reserved.
#
# Library for printing functions.  This library is still work in progress and
# subject to change.  I still need to think about this repository code, and for
# now this is a base code.

# =====> DOCS <================================================================
# This function provides a simple way to print the text with colors on the
# terminal outputs.  The color mode may be number, name or the HEX code values.
#
# Usage:
#   print::color -fg <color> -bg <color> -bold -italic -nonewline <text>
#   print::color -fg 15 -bg 208 -b "Bold white text on orange background"
#   print::color -fg 196 -b -italic "Bold italic red text"
#   print::color -fg ${BLACK} -bg ${INT_RED} "Black text on red background"
#   print::color -fg ${HEX_YELLOW} -i "Italic yellow text"
#   print::color -fg "#f97316" -b "Bold orange text"
#
# Arguments:
#   -fg <color>     Foreground color mode, optional, default to none
#   -bg <color>     Background color mode, optional, default to none
#   -bold, -b       Print the text in bold style, optional, default to false
#   -italic, -i     Print the text in italic style, optional, default to false
#   -nonewline, -n  Dont print new line after text, optional, default to false
#   <text>          The text to be printed in colors, required
# Outputs:
#   Output to STDOUT or STDERR
# Returns:
#   The nice colored text in your terminal
# -----------------------------------------------------------------------------
function print::color() {
    local fg_color
    local bg_color
    local bold_text
    local italic_text
    local no_newline
    local text
    local hex_mode

    # Set color sequences
    local fg_seq="\e[38;5;"
    local bg_seq="\e[48;5;"
    local reset="\e[0m"

    # Black bold error text on red background
    local _error_="${fg_seq}16;01m${bg_seq}196m ERROR ${reset} "

    # Error messages
    local number_error="Color number must be between 0 and 255."
    local hex_error="This is a not valid HEX color."
    local color_error="Unrecognized color:"
    local argument_error="Unrecognized argument:"
    local no_text_error="No text specified for coloring."

    # Default values
    bold_text=false
    italic_text=false
    no_newline=false

    function set_color_mode() {
        local color_mode="$1"
        set -e
        if util::is_integer "$color_mode"; then
            if [[ "$color_mode" -gt 255 ]]; then
                echo -e "${_error_}${number_error}" >&2
                return 1 # ERROR
            else
                hex_mode=false
                return 0 # SUCCESS
            fi
        elif util::is_first_char_special "$color_mode"; then
            if [[ "$color_mode" =~ ^#[0-9a-fA-F]{6}$ ]]; then
                hex_mode=true
                return 0 # SUCCESS
            else
                echo -e "${_error_}${hex_error}" >&2
                return 1 # ERROR
            fi
        else
            echo -e "${_error_}${color_error} $color_mode" >&2
            return 1 # ERROR
        fi
    }

    # Parse arguments
    while [[ $# -gt 0 ]]; do
        case "$1" in
        -fg)
            set_color_mode "$2"
            if [[ "$hex_mode" == true ]]; then
                fg_seq="\e[38;2;"
                fg_color=$(convert::hex_to_rgb "$2")
            else
                fg_color="$2"
            fi
            shift 2
            ;;
        -bg)
            set_color_mode "$2"
            if [[ "$hex_mode" == true ]]; then
                bg_seq="\e[48;2;"
                bg_color=$(convert::hex_to_rgb "$2")
            else
                bg_color="$2"
            fi
            shift 2
            ;;
        -bold | -b)
            bold_text=true
            shift 1
            ;;
        -italic | -i)
            italic_text=true
            shift 1
            ;;
        -nonewline | -n)
            no_newline=true
            shift 1
            ;;
        *)
            if [[ -z "${text}" ]]; then
                text="$1"
            else
                echo -e "${_error_}${argument_error} $1" >&2
                return 1
            fi
            shift 1
            ;;
        esac
    done

    # Error if no text
    if [[ -z "${text}" ]]; then
        echo -e "${_error_}${no_text_error}" >&2
        return 1
    fi

    # Set foreground
    local fg_code
    if util::is_integer "$fg_color" || util::contains_special_char "$fg_color"; then
        fg_code="${fg_seq}${fg_color}m"
    elif [[ -v "${fg_color}" ]]; then
        fg_code="${fg_seq}${!fg_color}m"
    fi

    # Set background
    local bg_code
    if util::is_integer "$bg_color" || util::contains_special_char "$bg_color"; then
        bg_code="${bg_seq}${bg_color}m"
    elif [[ -v "${bg_color}" ]]; then
        bg_code="${bg_seq}${!bg_color}m"
    fi

    # Set bold
    local bold_seq
    if [[ "${bold_text}" == true ]]; then
        bold_seq="\e[1m"
    fi

    # Set italic
    local italic_seq
    if [[ "${italic_text}" == true ]]; then
        italic_seq="\e[3m"
    fi

    # Print text with colors
    if [[ "${no_newline}" == true ]]; then
        echo -e -n "${fg_code}${bold_seq}${italic_seq}${bg_code}${text}${reset}"
    else
        echo -e "${fg_code}${bold_seq}${italic_seq}${bg_code}${text}${reset}"
    fi
}
