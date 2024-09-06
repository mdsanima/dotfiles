-- Base configuration for `nvim-tree` plugin.

return {
    git = {
        ignore = false,
    },

    filters = {
        custom = { "^\\.git$" },
        dotfiles = false,
    },

    renderer = {
        icons = {
            glyphs = {
                git = {
                    unstaged = "✗",
                    staged = "✓",
                    unmerged = "",
                    renamed = "➜",
                    untracked = "★",
                    deleted = "",
                    ignored = "",
                },
                folder = {
                    arrow_closed = "",
                    arrow_open = "",
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                    symlink_open = "",
                },
            },
            padding = " ",
        },
        highlight_git = true,
    },
}
