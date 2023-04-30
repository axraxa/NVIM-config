local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({ buffer = bufnr })
end)

-- (Optional) Configure lua language server for neovim
local lspconfig = require('lspconfig')

-- lspconfig.eslint.setup({
--   root_dir = lspconfig.util.root_pattern('.git', '.eslintrc*', '.prettierrc*', '.editorconfig', 'package.json') })
lspconfig.lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

local cmp = require('cmp')

cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
  },
  completion = {
    completeopt = 'menu,menuone,noinsert',
    max_items = 5,
  },
})
