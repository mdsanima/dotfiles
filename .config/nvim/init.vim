" Copyright (c) 2023-2024 MDSANIMA DEV. All rights reserved.
" Licensed under the MIT license.

" This is a initial configuration script for Neovim.
" Repository: https://github.com/neovim/neovim/


" Base initial setup
colorscheme pablo
syntax on

" Load configurations sources
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/keymaps.vim

" Back to default terminal cursor style
autocmd VimLeave * set guicursor=a:ver1-blinkon1
