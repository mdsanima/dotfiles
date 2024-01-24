" Copyright (c) 2023-2024 MDSANIMA DEV. All rights reserved.
" Licensed under the MIT license.

" This is a color file for custom theme in Neovim.
" Based on the default `pablo` vim color file.


" Basic
hi clear
set background=dark
let g:colors_name = "mdsanima"

" Colors
hi Boolean        cterm=none  ctermfg=202  ctermbg=none
hi Comment        cterm=none  ctermfg=8    ctermbg=none
hi Constant       cterm=none  ctermfg=222  ctermbg=none
hi Directory      cterm=none  ctermfg=2    ctermbg=none
hi Error          cterm=bold  ctermfg=15   ctermbg=196
hi ErrorMsg       cterm=bold  ctermfg=15   ctermbg=196
hi Identifier     cterm=none  ctermfg=24   ctermbg=none
hi LineNr         cterm=none  ctermfg=244  ctermbg=none
hi Number         cterm=none  ctermfg=196  ctermbg=none
hi Pmenu          cterm=none  ctermfg=0    ctermbg=27
hi PreProc        cterm=none  ctermfg=48   ctermbg=none
hi Search         cterm=none  ctermfg=16   ctermbg=9
hi Special        cterm=none  ctermfg=33   ctermbg=none
hi SpecialChar    cterm=none  ctermfg=45   ctermbg=none
hi Statement      cterm=none  ctermfg=215  ctermbg=none
hi StatusLine     cterm=bold  ctermfg=16   ctermbg=12
hi Todo           cterm=bold  ctermfg=15   ctermbg=3
hi Type           cterm=none  ctermfg=36   ctermbg=none

" Commits
hi diffRemoved    cterm=none  ctermfg=196  ctermbg=none
hi diffAdded      cterm=none  ctermfg=76   ctermbg=none
hi diffChanged    cterm=none  ctermfg=202  ctermbg=none
hi diffSubname    cterm=none  ctermfg=30   ctermbg=none
hi diffOldFile    cterm=none  ctermfg=23   ctermbg=none
hi diffNewFile    cterm=none  ctermfg=25   ctermbg=none
