local cmp = require('cmp');


require("luasnip.loaders.from_vscode").lazy_load();
cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
    ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
    ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
  },
  completion = {
    completeopt = 'noinsert',
    max_items = 5,
  },
  sources = cmp.config.sources {
    { name = "nvim_lsp" },
    { name = "luasnip" },
  },
  debounce = 0,
  throttle = 100,
})
