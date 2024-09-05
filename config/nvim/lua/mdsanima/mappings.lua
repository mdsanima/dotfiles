-- Key mappings.  These are loaded on demand.  This is a good place to put key mappings that you
-- want to run on every startup.

-- NOTE:  The key mapping for the 'Visual Block' is not working on Windows Terminal with the
-- keyboard shortcut `CTRL+V` and the solution is to use `CTRL+Q` instead.  On the Visual Studio
-- Code and Neovim extension the keyboard shortcut `CTRL+V` is working normally.  You can unbind
-- the `CTRL+V` on the Windows Terminal and bind `CTRL+SHIFT+V` instead for the copy text.

require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD Enter command mode" })
map("i", "jk", "<ESC>")

-- TODO:  Get folding working with Visual Studio Code and Neovim extension
-- NOTE:  Bellow is old Vim code
-- if(exists('g:vscode'))
--   nnoremap zM :call VSCodeNotify('editor.foldAll')<CR>
--   nnoremap zR :call VSCodeNotify('editor.unfoldAll')<CR>
--   nnoremap zc :call VSCodeNotify('editor.fold')<CR>
--   nnoremap zC :call VSCodeNotify('editor.foldRecursively')<CR>
--   nnoremap zo :call VSCodeNotify('editor.unfold')<CR>
--   nnoremap zO :call VSCodeNotify('editor.unfoldRecursively')<CR>
--   nnoremap za :call VSCodeNotify('editor.toggleFold')<CR>
--
--   function! MoveCursor(direction) abort
--     if(reg_recording() == '' && reg_executing() == '')
--       return 'g'.a:direction
--     else
--       return a:direction
--     endif
--   endfunction
--
--   nmap <expr> j MoveCursor('j')
--   nmap <expr> k MoveCursor('k')
-- endif
