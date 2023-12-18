local lualine = require("lualine")

local config = {
	option = { theme = "dracula" },
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
