require("mason").setup()
require("mason-lspconfig").setup()
local lsp = require("lsp-zero").preset({})
local cmp = require("cmp")

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({ buffer = bufnr })

	-- Disable LSP signs for diagnostics
	-- lsp.diagnostic.config({ signs = false })
  --
  vim.diagnostic.config({virtual_text = false})
end)
lsp.set_sign_icons({
	error = "✘",
	warn = "▲",
	hint = "⚑",
	info = "»",
})

-- (Optional) Configure lua language server for neovim
local lspconfig = require("lspconfig")
local configs = require("lspconfig/configs")
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
lspconfig.emmet_ls.setup({
	-- on_attach = on_attach,
	capabilities = capabilities,
	filetypes = {
		"css",
		"eruby",
		"html",
		"javascript",
		"javascriptreact",
		"less",
		"sass",
		"scss",
		"svelte",
		"pug",
		"typescriptreact",
		"vue",
	},
	init_options = {
		html = {
			options = {
				-- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
				["bem.enabled"] = true,
			},
		},
	},
})

lspconfig.lua_ls.setup(lsp.nvim_lua_ls())
local capabilitie = require("cmp_nvim_lsp").default_capabilities()
lsp.setup({
	capabilities = capabilitie,
})
