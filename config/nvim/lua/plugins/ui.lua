-- User interface plugins that make the GUI better.

return {
    -- Flashes on redo and yank
    -- URL: https://github.com/tzachar/highlight-undo.nvim
    {
        "tzachar/highlight-undo.nvim",
        event = "User BaseDefered",
        opts = {
            duration = 150,
            undo = { hlgroup = "IncSearch" },
            redo = { hlgroup = "IncSearch" },
        },
        config = function(_, opts)
            require("highlight-undo").setup(opts)
            vim.api.nvim_create_autocmd("TextYankPost", {
                desc = "Highlight yanked text",
                pattern = "*",
                callback = function()
                    vim.highlight.on_yank()
                end,
            })
        end,
    },

    -- Neovim tree file managing
    -- URL: https://github.com/nvim-tree/nvim-tree.lua
    {
        "nvim-tree/nvim-tree.lua",
        opts = require("base.tree"),
        config = function(_, opts)
            require("nvim-tree").setup(opts)
        end,
    },
}
