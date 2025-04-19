" Copyright (c) 2024-2025 Marcin Różewski, Amarokelab.
" All rights reserved.
"
" Autoloaded functions.  Autoloading allows functions to be loaded on demand,
" which makes startup time faster and enforces function namespacing.
"
" Form manually run defined function run `:call mdsanima#hello` inside Neovim
" command line, and the result should show on bottom bar.

" Test function
function mdsanima#hello()
    echo "Hello World"
endfunction
