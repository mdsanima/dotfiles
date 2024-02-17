" Copyright (c) 2024 MDSANIMA DEV. All rights reserved.
" Licensed under the MIT license.

" Key mappings.


" General
map <C-S> :w<CR>            " CTRL+S to Save file
map <C-Q> :q<CR>            " CTRL+Q to Quit file

" Get folding working with vscode neovim plugin
if(exists('g:vscode'))
  nnoremap zM :call VSCodeNotify('editor.foldAll')<CR>
  nnoremap zR :call VSCodeNotify('editor.unfoldAll')<CR>
  nnoremap zc :call VSCodeNotify('editor.fold')<CR>
  nnoremap zC :call VSCodeNotify('editor.foldRecursively')<CR>
  nnoremap zo :call VSCodeNotify('editor.unfold')<CR>
  nnoremap zO :call VSCodeNotify('editor.unfoldRecursively')<CR>
  nnoremap za :call VSCodeNotify('editor.toggleFold')<CR>

  function! MoveCursor(direction) abort
    if(reg_recording() == '' && reg_executing() == '')
      return 'g'.a:direction
    else
      return a:direction
    endif
  endfunction

  nmap <expr> j MoveCursor('j')
  nmap <expr> k MoveCursor('k')
endif
