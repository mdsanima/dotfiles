# Copyright (c) 2024-2025 Marcin Różewski, Amarokelab.
# All rights reserved.
#
# Library for converting functions.  This library is still work in progress and
# subject to change.  I still need to think about this repository code, and for
# now this is a base code.

# =====> DOCS <================================================================
# This function is for converting HEX color code to RGB values.  The returned
# values are separated by semicolon and will be used in another function.
#
# Usage:
#   convert::hex_to_rgb <hex_color>
#   convert::hex_to_rgb "#ff0000"
#
# Arguments:
#   <hex_color>  The hexadecimal color code string, required
# Outputs:
#   Output to STDOUT look like this '128;64;32' example
# Returns:
#   The RGB integer values separated by semicolon
# -----------------------------------------------------------------------------
function convert::hex_to_rgb() {
    local hex_color="$1"
    local awk_cmd="{print strtonum('0x' $0)}"

    local red
    local green
    local blue

    # Convert HEX to RGB
    red=$(echo "${hex_color:1:2}" | awk "${awk_cmd}")
    green=$(echo "${hex_color:3:2}" | awk "${awk_cmd}")
    blue=$(echo "${hex_color:5:2}" | awk "${awk_cmd}")

    # Return RGB
    echo "${red};${green};${blue}"
}
