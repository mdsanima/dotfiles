" Copyright (c) 2023-2024 MDSANIMA DEV. All rights reserved.
" Licensed under the MIT license.

" This file sets up the basic settings options for Neovim.
" This config shuld be sourced in the `init.vim` file.


" Settings options
set autoindent              " Indent from last line
set autoread                " Read file on change
set backup                  " Make backups files
set clipboard=unnamedplus   " Use system clipboard
set encoding=utf-8          " Character encoding
set expandtab               " Override mode for TAB
set history=1000            " Lines to keep in history
set ignorecase              " Case insensitive search
set incsearch               " Incremental search
set linebreak               " Wrap long lines
set list                    " Show special characters
set listchars+=extends:→,   " Show right arrow
set listchars+=nbsp:·,      " Show non-breakable space
set listchars+=precedes:←,  " Show left arrow
set listchars+=tab:»\ ,     " Show tabs character
set listchars+=trail:·,     " Show trailing spaces
set mouse=a                 " Mouse support
set number                  " Show line numbering
set relativenumber          " Relative number of lines
set scrolloff=10            " Lines after before cursor
set shiftwidth=4            " Offset spaces
set showbreak=↪\            " Show break character
set smartcase               " Smart case search
set splitbelow              " Split below side
set splitright              " Split right side
set tabstop=4               " Ident spaces
set undofile                " Persistent undo
set writebackup             " Make backups files

" Directories
set backupdir=$HOME/.cache/nvim/backup//
set directory=$HOME/.cache/nvim/swap//
set undodir=$HOME/.cache/nvim/undo//
set viewdir=$HOME/.cache/nvim/view//
