require("nvim-treesitter.configs").setup({
	ensure_installed = { "lua", "python", "bash", "css", "html", "json", "solidity", "typescript", "yaml", "tsx" },
	sync_install = true,
	highlight = {
		enable = true,
	},
})
