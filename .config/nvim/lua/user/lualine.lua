local lualine = require("lualine")

local config = {
	options = {
		theme = "dracula-nvim",
	},
	sections = {
		lualine_c = {
			{
				"filename",
				path = 1,
			},
		},
	},
}

lualine.setup(config)
