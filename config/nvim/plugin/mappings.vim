" Copyright (c) 2024 MDSANIMA DEV. All rights reserved.
" Licensed under the MIT license.

" Key mappings.  These are loaded on demand.  This is a good place to put key mappings that you want
" to run on every startup.

" NOTE: The key mapping for the 'Visual Block' is not working on Windows Terminal with the `CTRL+V`
" keyboard shortcut and the solution is to use `CTRL+Q` instead.  On the Visual Studio Code and
" Neovim extension the `CTRL+V` keyboard shortcut is working normally.  You can unbind the `CTRL+V`
" on the Windows Terminal and bind `CTRL+SHIFT+V` instead for the copy text.

" General
map <C-S> :w<CR>  " CTRL+S to Save file

" Get folding working with Visual Studio Code and Neovim extension
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
