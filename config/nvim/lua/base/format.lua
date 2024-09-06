-- Base configuration for `conform.nvim` plugin.

return {
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
}
