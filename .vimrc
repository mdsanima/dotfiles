" Copyright © 2023 MDSANIMA

" BASE CONFIGS
colorscheme pablo       " Editor color theme.
syntax on               " Syntax coloring.
set encoding=utf-8      " Character encoding.
set number              " Line numbering.
set relativenumber      " Relative number of lines.
set scrolloff=10        " Lines after and befor the cursor.
set tabstop=4           " Ident spaces.
set shiftwidth=4        " Offset spaces.
set expandtab           " Override mode for TAB.
set nobackup            " Dont make backups.
set nowritebackup       " Dont save backups.

" CURSOR
let &t_EI = "\e[2 q"    " Block on NORMAL mode.
let &t_SI = "\e[6 q"    " Bar on INSERT mode.

" KEYBOARD SHORTCUTS
map <C-S> :w<CR>        " Save file.        CTRL+S
map <C-Q> :q<CR>        " Exit Vim.         CTRL+S

" SHOWS HIDDEN
set list listchars=tab:»\ ,extends:→,precedes:←,nbsp:·,trail:·,
