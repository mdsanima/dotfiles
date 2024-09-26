-- Base configuration for `none-ls.nvim` plugin.

return {
    sources = {
        require("null-ls").builtins.diagnostics.commitlint.with({
            command = "commitlint",
            extra_args = { "--config", ".commitlintrc.mjs" },
        }),
        require("null-ls").builtins.diagnostics.editorconfig_checker.with({
            disabled_filetypes = { "gitcommit" },
        }),
        require("null-ls").builtins.diagnostics.markdownlint,
        require("null-ls").builtins.diagnostics.yamllint,
        require("null-ls").builtins.formatting.black,
        require("null-ls").builtins.formatting.clang_format,
        require("null-ls").builtins.formatting.gersemi,
        require("null-ls").builtins.formatting.isort,
        require("null-ls").builtins.formatting.prettierd,
        require("null-ls").builtins.formatting.shfmt,
    },
}
