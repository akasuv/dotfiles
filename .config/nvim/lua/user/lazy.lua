local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

plugins = {
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},
	{
		"maxmx03/dracula.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			local dracula = require("dracula")
			dracula.setup({
				transparent = true,
			})
		end,
	},
	"simrat39/symbols-outline.nvim",
	"LudoPinelli/comment-box.nvim",
	"catppuccin/nvim",
	"JoosepAlviste/nvim-ts-context-commentstring",
	"github/copilot.vim",
	"folke/trouble.nvim",
	"yamatsum/nvim-cursorline",
	"numToStr/Comment.nvim",
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/cmp-copilot",
	"hrsh7th/nvim-cmp",
	"f-person/git-blame.nvim",
	"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
	"jose-elias-alvarez/null-ls.nvim",
	"sbdchd/neoformat",
	"wbthomason/packer.nvim",
	"tpope/vim-surround",
	{ "nvim-telescope/telescope.nvim", tag = "0.1.5", dependencies = { "nvim-lua/plenary.nvim" } },
	"ryanoasis/vim-devicons",
	"projekt0n/github-nvim-theme",
	"nvim-lualine/lualine.nvim",
	"phaazon/hop.nvim",
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
	},
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	"xiyaowong/transparent.nvim",
}

require("lazy").setup(plugins)
