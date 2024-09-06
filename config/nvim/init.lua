-- Initial configuration for the Neovim editor with Lazy, Mason, NvChad, and other cool plugins.

-- The other configs will be loaded automatically and will be loaded on startup.  The entire
-- configuration setup for the Neovim editor is defined in this file and other files in the `lua`
-- directory on this repo.  Make sure to check these files for more information.

-- Config is based on NvChad starter.  See docs: https://github.com/NvChad/starter
-- Some options is from NormalNvim.    See docs: https://github.com/NormalNvim/NormalNvim

-- The config are still a work in progress and subject to change.  I still need to think about this.

-- NvChad starter with cache and key leader
vim.g.base46_cache = vim.fn.stdpath "data" .. "/nvchad/base46/"
vim.g.mapleader = " "

-- Bootstrap lazy and all plugins
local lazy_path = vim.fn.stdpath "data" .. "/lazy/lazy.nvim/"
local lazy_conf = require "base.lazy"

if not vim.uv.fs_stat(lazy_path) then
    local lazy_repo = "https://github.com/folke/lazy.nvim.git"
    vim.fn.system { "git", "clone", "--filter=blob:none", lazy_repo, "--branch=stable", lazy_path }
end

vim.opt.rtp:prepend(lazy_path)

-- Load plugins
require("lazy").setup({
    {
        "NvChad/NvChad",
        lazy = false,
        branch = "v2.5",
        import = "nvchad.plugins",
    },

    { import = "plugins" },
}, lazy_conf)

-- Load themes
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

-- Custom modules
require "mdsanima.autocmds"
require "mdsanima.commands"
require "mdsanima.options"

vim.schedule(function()
    require "mdsanima.mappings"
end)

-- Custom configs
local null_conf = require "base.null"

-- Custom options
require("null-ls").setup(null_conf)
require("highlight-undo").setup()
