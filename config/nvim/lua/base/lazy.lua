-- Base configuration for `lazy.nvim` plugin.

return {
    defaults = { lazy = true },
    install = { colorscheme = { "nvchad" } },

    ui = {
        icons = {
            ft = " ",
            lazy = "󰂠 ",
            loaded = " ",
            not_loaded = " ",
        },
    },

    performance = {
        rtp = {
            disabled_plugins = {
                "2html_plugin",
                "bugreport",
                "compiler",
                "ftplugin",
                "getscript",
                "getscriptPlugin",
                "gzip",
                "logipat",
                "matchit",
                "netrw",
                "netrwFileHandlers",
                "netrwPlugin",
                "netrwSettings",
                "optwin",
                "rplugin",
                "rrhelper",
                "spellfile_plugin",
                "synmenu",
                "syntax",
                "tar",
                "tarPlugin",
                "tohtml",
                "tutor",
                "vimball",
                "vimballPlugin",
                "zip",
                "zipPlugin",
            },
        },
    },

    lockfile = vim.fn.stdpath "cache" .. "/lazy-lock.json",
}
