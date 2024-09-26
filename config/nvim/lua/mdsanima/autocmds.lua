-- General autocommands.  This is a good place to put command that you want to
-- run on every startup.

require("nvchad.autocmds")

-- Back to default terminal cursor style blinking block when leaving the editor
vim.api.nvim_create_autocmd("VimLeave", {
    pattern = "*",
    command = "set guicursor=a:block1-blinkon1",
})
