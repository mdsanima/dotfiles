# Copyright (c) 2024 MDSANIMA DEV. All rights reserved.
# Licensed under the MIT license.

# Library for converting functions.

#-------------------------------------------------------------------------------
# This function converting HEX color code to RGB values. The returned values are
# separated by semicolon and will be used in another function.
#
# Arguments:
#   <hex_color>  The hexadecimal color code string, required
#
# Usage:
#   convert::hex_to_rgb <hex_color>
#   convert::hex_to_rgb "#ff0000"
#-------------------------------------------------------------------------------
function convert::hex_to_rgb() {
  local hex_color="$1"
  local awk_cmd='{print strtonum("0x" $0)}'

  # Convert HEX to RGB
  local r=$(echo "${hex_color:1:2}" | awk "${awk_cmd}")
  local g=$(echo "${hex_color:3:2}" | awk "${awk_cmd}")
  local b=$(echo "${hex_color:5:2}" | awk "${awk_cmd}")

  # Return RGB
  echo "${r};${g};${b}"
}
