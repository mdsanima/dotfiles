# Copyright (c) 2024 Marcin Różewski, MDSANIMA LAB

# Library for event logging functions.  This is still work in progress.

# =====> LIBEVENT <============================================================
function event::debug() {
    print::color -fg "${BLACK}" -bg "${GRAY}" -b " DEBUG "
}

# =====> LIBEVENT <============================================================
function event::dev() {
    print::color -fg "${BLACK}" -bg "${BLUE}" -b " DEV "
}

# =====> LIBEVENT <============================================================
function event::error() {
    print::color -fg "${BLACK}" -bg "${RED}" -b " ERROR "
}

# =====> LIBEVENT <============================================================
function event::info() {
    print::color -fg "${BLACK}" -bg "${CYAN}" -b " INFO "
}

# =====> LIBEVENT <============================================================
function event::success() {
    print::color -fg "${BLACK}" -bg "${LIME}" -b " SUCCESS "
}

# =====> LIBEVENT <============================================================
function event::warning() {
    print::color -fg "${BLACK}" -bg "${ORANGE}" -b " WARNING "
}
