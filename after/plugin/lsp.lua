require("mason").setup();
require("mason-lspconfig").setup();
local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({ buffer = bufnr })
end)

-- (Optional) Configure lua language server for neovim
local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup(lsp.nvim_lua_ls())
local capabilities = require("cmp_nvim_lsp").default_capabilities();
lsp.setup({
  capabilities = capabilities
})
