# Copyright (c) 2024 Marcin Różewski, MDSANIMA LAB. All rights reserved.
# Licensed under the MIT license.

# Library for event logging functions.  This is still work in progress.

function event::debug() {
    print::color -fg ${BLACK} -bg ${GRAY} -b " DEBUG "
}

function event::dev() {
    print::color -fg ${BLACK} -bg ${BLUE} -b " DEV "
}

function event::error() {
    print::color -fg ${BLACK} -bg ${RED} -b " ERROR "
}

function event::info() {
    print::color -fg ${BLACK} -bg ${CYAN} -b " INFO "
}

function event::success() {
    print::color -fg ${BLACK} -bg ${LIME} -b " SUCCESS "
}

function event::warning() {
    print::color -fg ${BLACK} -bg ${ORANGE} -b " WARNING "
}
