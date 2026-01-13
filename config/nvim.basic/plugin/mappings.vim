"
" Copyright (c) 2023-2026 Marcin Różewski, Amarokelab
" All rights reserved.
"
" Key mappings configuration.  These are loaded on demand.  This configuration
" file is a good place to put key mappings that you want to run on every Neovim
" editor startup.
"
" NOTE: The key mapping for the 'Visual Block' cursor style is not working on
" Windows Terminal Preview application with the 'CTRL+V' key shortcut, and the
" solution is to use 'CTRL+Q' instead.  On the Visual Studio Code application
" and Neovim extension the 'CTRL+V' key shortcut is working normally.  You can
" unbind the key shortcut 'CTRL+V' on the Windows Terminal Preview application
" and bind 'CTRL+SHIFT+V' keys instead for the copy text.
"

" General
map <C-S> :w<CR>  " Save file    CTRL+S

" Get folding working with Visual Studio Code and Neovim extension
if(exists("g:vscode"))
    nnoremap zM :call VSCodeNotify("editor.foldAll")<CR>
    nnoremap zR :call VSCodeNotify("editor.unfoldAll")<CR>
    nnoremap zc :call VSCodeNotify("editor.fold")<CR>
    nnoremap zC :call VSCodeNotify("editor.foldRecursively")<CR>
    nnoremap zo :call VSCodeNotify("editor.unfold")<CR>
    nnoremap zO :call VSCodeNotify("editor.unfoldRecursively")<CR>
    nnoremap za :call VSCodeNotify("editor.toggleFold")<CR>

    function! MoveCursor(direction) abort
        if(reg_recording() == "" && reg_executing() == "")
            return "g".a:direction
        else
            return a:direction
        endif
    endfunction

    nmap <expr> j MoveCursor("j")
    nmap <expr> k MoveCursor("k")
endif
