-- Core plugins loaded on startup.

return {
    -- Formatting on save
    -- URL: https://github.com/stevearc/conform.nvim
    {
        "stevearc/conform.nvim",
        event = "BufWritePre",
        opts = {
            formatters_by_ft = {
                lua = { "stylua" },
                css = { "prettier" },
                html = { "prettier" },
                c = { "clang-format" },
                cpp = { "clang-format" },
                cmake = { "gersemi" },
                ["_"] = { "trim_whitespace" },
            },
            format_on_save = {
                timeout_ms = 500,
                lsp_fallback = true,
            },
        },
    },

    -- Neovim LSP configuration
    -- URL: https://github.com/neovim/nvim-lspconfig
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "base.lsp"
        end,
    },

    -- Neovim LSP diagnostics
    -- URL: https://github.com/nvimtools/none-ls.nvim
    {
        "nvimtools/none-ls.nvim",
        event = "User BaseFile",
    },

    -- Abstraction layer such as highlighting
    -- URL: https://github.com/nvim-treesitter/nvim-treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "bash",
                "c",
                "cmake",
                "cpp",
                "css",
                "html",
                "lua",
                "vim",
                "vimdoc",
            },
        },
    },

    -- Neovim LSP Tools for LSP, linters, and formatters
    -- URL: https://github.com/williamboman/mason.nvim
    {
        "williamboman/mason.nvim",
    },
}
