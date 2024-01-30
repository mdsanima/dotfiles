# Copyright (c) 2023-2024 MDSANIMA DEV. All rights reserved.
# Licensed under the MIT license.

# This script is designed for printing event logs in colors on the terminal in the fancy way.


# Event logs are useful for debugging purposes. The events are printed with bold black text on specified colors for the
# event name, and the text log info is printed next to it with specified colors. Both the event name and the text share
# the same text color but have different background colors.
#
# List of available events:
#     - DEV
#     - INFO
#     - DEBUG
#     - ERROR
#     - WARNING
#     - SUCCESS
#
# Arguments:
#     <event_color>    The color number (integer) or name (string) for the bg color of the event and fg text, required
#     <event_name>     The event name (string), required
#     <evnet_text>     The text (string) to be printed in colors, required
#
# Usage:
#     __mds_event_log <event_color> <event_name> <evnet_text>
#     __mds_event_log $BLUE "DEV" "This is a dev event"
#     __mds_event_dev "This is a dev event"
#     __mds_event_info "This is a info event"
#     __mds_event_debug "This is a debug event"
#     __mds_event_error "This is a error event"
#     __mds_event_warning "This is a warning event"
#     __mds_event_success "This is a success event"


__mds_event_log() {
    local event_color=$1
    local event_name=$2
    local event_text=$3

    __mds_color_print -fg $BLACK -bg $event_color -b -n " $event_name "
    __mds_color_print -fg $evnet_color " $evnet_text"
}

__mds_event_dev() {
    __mds_event_log $BLUE "DEV" "$1"
}

__mds_event_info() {
    __mds_event_log $SKY "INFO" "$1"
}

__mds_event_debug() {
    __mds_event_log $GRAY "DEBUG" "$1"
}

__mds_event_error() {
    __mds_event_log $RED "ERROR" "$1"
}

__mds_event_warning() {
    __mds_event_log $ORANGE "WARNING" "$1"
}

__mds_event_success() {
    __mds_event_log $LIME "SUCCESS" "$1"
}
