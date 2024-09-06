-- This file needs to have same structure as `nvconfig.lua` file.
-- See NvChad config: https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
    theme = "tokyonight",

    hl_override = {
        Comment = { italic = true },
        ["@comment"] = { italic = true },
    },
}

M.mason = {
    pkgs = {
        "clang-format",
        "clangd",
        "cmake-language-server",
        "commitlint",
        "editorconfig-checker",
        "gersemi",
        "lua-language-server",
        "markdownlint",
    },
}

return M
