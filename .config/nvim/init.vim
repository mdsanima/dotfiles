" Copyright (c) 2023-2024 MDSANIMA DEV. All rights reserved.
" Licensed under the MIT license.

" This is a basic configuration script file for Neovim editor.


" Base setup
colorscheme pablo       " Editor color theme
syntax on               " Syntax coloring
set encoding=utf-8      " Character encoding
set number              " Line numbering
set relativenumber      " Relative number of lines
set scrolloff=10        " Lines after and before cursor
set tabstop=4           " Ident spaces
set shiftwidth=4        " Offset spaces
set expandtab           " Override mode for TAB
set nobackup            " Dont make backups
set nowritebackup       " Dont save backups

" Keyboard shortcuts
map <C-S> :w<CR>        " Save file     CTRL+S
map <C-Q> :q<CR>        " Exit Vim      CTRL+Q

" Shows hidden
set list listchars=tab:»\ ,extends:→,precedes:←,nbsp:·,trail:·,

" Cursor style
autocmd VimLeave * set guicursor=a:ver1-blinkon1
