-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	-- use 'AlexvZyl/nordic.nvim'
	use 'rebelot/kanagawa.nvim'
	-- use("Alexis12119/nightly.nvim")
	use("ThePrimeagen/harpoon")
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{
				"williamboman/mason.nvim",
				run = function()
					pcall(vim.cmd, "MasonUpdate")
				end,
			},
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
			{ "saadparwaiz1/cmp_luasnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	})

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})
	use("lukas-reineke/indent-blankline.nvim")
	-- Lua
	use({
		"folke/trouble.nvim",
		requires = "nvim-tree/nvim-web-devicons",
		config = function()
			require("trouble").setup({})
		end,
	})
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional
		},
		config = function()
			require("nvim-tree").setup({})
		end,
	})
	-- commenting out lines plguin
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})
	use("jiangmiao/auto-pairs")
	use("mbbill/undotree")
	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	})
	use({
		"Wansmer/treesj",
		requires = { "nvim-treesitter" },
		config = function()
			require("treesj").setup({ --[[ your config ]]
			})
		end,
	})
	use({ "tpope/vim-dadbod" })
	--always at the bottom of pacekr , !icons
	use("nvim-tree/nvim-web-devicons")

	use({
		"williamboman/mason.nvim",
		"mfussenegger/nvim-dap",
		"jay-babu/mason-nvim-dap.nvim",
	})
	use({
		"rcarriga/nvim-dap-ui",
		requires = { "mfussenegger/nvim-dap" },
	})
	use("jose-elias-alvarez/null-ls.nvim")
  use ( { 'andweeb/presence.nvim' } )
end)
