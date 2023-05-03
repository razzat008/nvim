-- This is where all the LSP shenanigans will live

local lsp = require('lsp-zero')

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
end)

local lspconfig = require("lspconfig")
-- (Optional) Configure lua language server for neovim
lspconfig.lua_ls.setup(lsp.nvim_lua_ls())
lspconfig.pyright.setup({
    on_attach = function(client, bufnr)
    end,
})

lsp.setup()
