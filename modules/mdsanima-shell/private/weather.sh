# Copyright (c) 2023-2024 MDSANIMA DEV. All rights reserved.
# Licensed under the MIT license.

# Check the weather in your nearest location or by target city and show the weather on the terminal in nice way.


__mds_actual_weather() {
    curl "https://wttr.in/${1:-}"
}
