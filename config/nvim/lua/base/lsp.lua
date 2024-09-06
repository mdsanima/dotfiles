-- Base configuration for `nvim-lspconfig` plugin.

-- Load defaults configuration i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local servers = { "html", "cssls", "clangd", "cmake" }
local nvlsp = require "nvchad.configs.lspconfig"

-- Default LSP configuration
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = nvlsp.on_attach,
        on_init = nvlsp.on_init,
        capabilities = nvlsp.capabilities,
    }
end
