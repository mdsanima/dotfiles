-- Key mappings.  These are loaded on demand.  This is a good place to put key
-- mappings that you want to run on every startup.

-- NOTE:  The key mapping for the 'Visual Block' is not working on Windows
-- Terminal with the keyboard shortcut `CTRL+V` and the solution is to use
-- `CTRL+Q` instead.  On the Visual Studio Code and Neovim extension the
-- keyboard shortcut `CTRL+V` is working normally.  You can unbind the `CTRL+V`
-- on the Windows Terminal and bind `CTRL+SHIFT+V` instead for the copy text.

require("nvchad.mappings")

local map = vim.keymap.set

-- General
map("n", ";", ":", { desc = "CMD Enter command mode" })
map("i", "jk", "<ESC>")

-- Get folding working with Visual Studio Code and Neovim extension
if vim.g.vscode then
    local vsmap = vim.api.nvim_set_keymap

    -- Mappings for folding and unfolding
    vsmap("n", "zM", ":call VSCodeNotify('editor.foldAll')<CR>", {
        noremap = true,
    })
    vsmap("n", "zR", ":call VSCodeNotify('editor.unfoldAll')<CR>", {
        noremap = true,
    })
    vsmap("n", "zc", ":call VSCodeNotify('editor.fold')<CR>", {
        noremap = true,
    })
    vsmap("n", "zC", ":call VSCodeNotify('editor.foldRecursively')<CR>", {
        noremap = true,
    })
    vsmap("n", "zo", ":call VSCodeNotify('editor.unfold')<CR>", {
        noremap = true,
    })
    vsmap("n", "zO", ":call VSCodeNotify('editor.unfoldRecursively')<CR>", {
        noremap = true,
    })
    vsmap("n", "za", ":call VSCodeNotify('editor.toggleFold')<CR>", {
        noremap = true,
    })

    -- Function for move cursor with macro recording
    function MoveCursor(directrion)
        if vim.fn.reg_recording() == "" and vim.fn.reg_executing() == "" then
            return "g" .. directrion
        else
            return directrion
        end
    end

    -- Mappings for moving with recording
    vsmap("n", "j", "v:lua.MoveCursor('j')", { expr = true })
    vsmap("n", "k", "v:lua.MoveCursor('k')", { expr = true })
end
