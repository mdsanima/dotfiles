# Copyright (c) 2024 MDSANIMA DEV. All rights reserved.
# Licensed under the MIT license.

# This library is designed for printing the text in colors and other styles.


################################################################################
# This function provides a simple way to printing the text with colors on the
# terminal bash script.
#
# Arguments:
#   -fg <color>     Foreground color number or name, optional, default to none
#   -bg <color>     Background color number or name, optional, default to none
#   -bold, -b       Print the text in bold style, optional, default to false
#   -italic, -i     Print the text in italic style, optional, default to false
#   -nonewline, -n  Dont print a new line after text, optional, default to false
#   <text>          The text to be printed in colors, required
#
# Usage:
#   print::color -fg <color> -bg <color> -bold -italic -nonewline <text>
#   print::color -fg 15 -bg 9 -bold "Bold white text on red background"
#   print::color -fg 196 -b -italic "Bold italic red text"
#   print::color -fg WHITE -bg RED "White text on red background"
################################################################################
function print::color() {
  local fg_color
  local bg_color
  local bold_text
  local italic_text
  local no_newline
  local text

  # Set color sequences
  local fg_seq="\e[38;5;"
  local bg_seq="\e[48;5;"
  local reset="\e[0m"

  # White bold error text on red background
  local _error_="${fg_seq}15;01m${bg_seq}196m ERROR ${reset}"

  # Red error messages
  local num_error="${fg_seq}196m Color number must be between 0 and 255${reset}"
  local argument_error="${fg_seq}196m Unrecognized argument:${reset}"
  local no_text_error="${fg_seq}196m No text specified for coloring${reset}"

  # Default values
  bold_text=false
  italic_text=false
  no_newline=false

  # Parse arguments
  while [[ $# -gt 0 ]]; do
    case "$1" in
      -fg)
        if [[ "$2" -gt 255 ]]; then
          echo -e "${_error_}${num_error}" >&2
          return 1
        fi
        fg_color="$2"
        shift 2
        ;;
      -bg)
        if [[ "$2" -gt 255 ]]; then
          echo -e "${_error_}${num_error}" >&2
          return 1
        fi
        bg_color="$2"
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
  if [[ "${fg_color}" =~ ^[0-9]+$ ]]; then
    fg_code="${fg_seq}${fg_color}m"
  elif [[ -v "${fg_color}" ]]; then
    fg_code="${fg_seq}${!fg_color}m"
  fi

  # Set background
  local bg_code
  if [[ "${bg_color}" =~ ^[0-9]+$ ]]; then
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

  # Printing text
  if [[ "${no_newline}" == true ]]; then
    echo -e -n "${fg_code}${bold_seq}${italic_seq}${bg_code}${text}${reset}"
  else
    echo -e "${fg_code}${bold_seq}${italic_seq}${bg_code}${text}${reset}"
  fi
}
