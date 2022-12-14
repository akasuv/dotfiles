vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use({ "nyoom-engineering/oxocarbon.nvim" })
	use("JoosepAlviste/nvim-ts-context-commentstring")
	use("github/copilot.vim")
	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	})
	use("yamatsum/nvim-cursorline")
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/cmp-copilot")
	use("hrsh7th/nvim-cmp")
	use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = { "hrsh7th/nvim-cmp" } })
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")

	use("f-person/git-blame.nvim")
	use("Mofiqul/dracula.nvim")
	use({
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		config = function()
			require("lsp_lines").setup()
		end,
	})
	use("wakatime/vim-wakatime")
	use("jose-elias-alvarez/null-ls.nvim")
	use("sbdchd/neoformat")
	use("wbthomason/packer.nvim")
	use("tpope/vim-surround")
	use({ "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/plenary.nvim" } } })
	use("ryanoasis/vim-devicons")
	use("projekt0n/github-nvim-theme")
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons", -- optional, for file icons
		},
		tag = "nightly", -- optional, updated every week. (see issue #1193)
	})
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})
	use({
		"akinsho/toggleterm.nvim",
		tag = "v2.*",
		config = function()
			require("toggleterm").setup()
		end,
	})
	use({ "glepnir/dashboard-nvim" })
	use({
		"phaazon/hop.nvim",
		branch = "v2", -- optional but strongly recommended
		config = function()
			-- you can configure Hop the way you like here; see :h hop-config
			require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
		end,
	})
end)
