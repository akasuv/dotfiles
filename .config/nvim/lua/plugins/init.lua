vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use({
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		config = function()
			require("lsp_lines").setup()
		end,
	})
	use("wakatime/vim-wakatime")
	use("jose-elias-alvarez/null-ls.nvim")
	use("neovim/nvim-lspconfig")
	use("mhinz/vim-startify")
	use("sbdchd/neoformat")
	use("github/copilot.vim")
	use("wbthomason/packer.nvim")
	use("tpope/vim-surround")
	use({ "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/plenary.nvim" } } })
	use("preservim/nerdtree")
	use("ryanoasis/vim-devicons")
	use("projekt0n/github-nvim-theme")
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
end)
