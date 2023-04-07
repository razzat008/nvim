local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

local lspconfig= require("lspconfig")

lsp.setup()
local servers = { "html", "cssls", "pyright", "tsserver", "lua_ls", "clangd", "bashls" }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

--
lspconfig.clangd.setup {
  filetypes = { "c", "cpp" },
}

lspconfig.tsserver.setup {
  filetypes = { "js", "ts" },
}

