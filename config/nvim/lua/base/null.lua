-- Base configuration for `none-ls.nvim` plugin.

return {
    sources = {
        require("null-ls").builtins.diagnostics.commitlint.with {
            command = "commitlint",
            extra_args = { "--config", ".commitlintrc.mjs" },
        },
        require("null-ls").builtins.diagnostics.editorconfig_checker.with {
            disabled_filetypes = { "gitcommit" },
        },
        require("null-ls").builtins.diagnostics.markdownlint,
        require("null-ls").builtins.diagnostics.yamllint,
    },
}
