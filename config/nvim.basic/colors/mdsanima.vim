"
" Copyright (c) 2023-2026 Marcin Różewski, Amarokelab
" All rights reserved.
"
" Custom colors theme configuration.  This theme config is based on the default
" file named 'pablo.vim' from Vim editor.  Run command below for more info:
"
"       vim -c 'edit $VIMRUNTIME/colors/pablo.vim'
"
" This custom colors scheme configuration is still work in progress and may be
" change in the future.  I still need to think about this basic configuration
" for the Neovim editor.  May be I should just use the default colors scheme.
"

" Initial setup
hi clear
set notermguicolors
set background=dark
let g:colors_name = "mdsanima"

" Basic colors definition
hi Boolean         cterm=none    ctermbg=none    ctermfg=202
hi ColorColumn     cterm=none    ctermbg=235     ctermfg=none
hi Comment         cterm=none    ctermbg=none    ctermfg=8
hi Constant        cterm=none    ctermbg=none    ctermfg=222
hi Directory       cterm=none    ctermbg=none    ctermfg=2
hi Error           cterm=bold    ctermbg=196     ctermfg=15
hi ErrorMsg        cterm=bold    ctermbg=196     ctermfg=15
hi Identifier      cterm=none    ctermbg=none    ctermfg=24
hi LineNr          cterm=none    ctermbg=none    ctermfg=27
hi LineNrAbove     cterm=none    ctermbg=none    ctermfg=244
hi LineNrBelow     cterm=none    ctermbg=none    ctermfg=244
hi Number          cterm=none    ctermbg=none    ctermfg=196
hi Pmenu           cterm=none    ctermbg=27      ctermfg=16
hi PmenuSel        cterm=bold    ctermbg=44      ctermfg=16
hi PreProc         cterm=none    ctermbg=none    ctermfg=48
hi Search          cterm=none    ctermbg=9       ctermfg=16
hi Special         cterm=none    ctermbg=none    ctermfg=33
hi SpecialChar     cterm=none    ctermbg=none    ctermfg=45
hi Statement       cterm=none    ctermbg=none    ctermfg=215
hi StatusLine      cterm=bold    ctermbg=12      ctermfg=16
hi StatusLineNC    cterm=none    ctermbg=24      ctermfg=12
hi Todo            cterm=bold    ctermbg=3       ctermfg=15
hi Type            cterm=none    ctermbg=none    ctermfg=36

" Basic colors definition for commit
hi diffRemoved     cterm=none    ctermbg=none    ctermfg=196
hi diffAdded       cterm=none    ctermbg=none    ctermfg=76
hi diffChanged     cterm=none    ctermbg=none    ctermfg=202
hi diffSubname     cterm=none    ctermbg=none    ctermfg=30
hi diffOldFile     cterm=none    ctermbg=none    ctermfg=23
hi diffNewFile     cterm=none    ctermbg=none    ctermfg=25
