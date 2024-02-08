require("mini.ai").setup({})
require("mini.pairs").setup({})

return {
	{ "echasnovski/mini.nvim", version = "*" },
	{ "echasnovski/mini.pairs", version = "*" },
	{ "echasnovski/mini.ai", version = "*" },
	{
		"echasnovski/mini.surround",
		opts = {
			mappings = {
				add = "gza", -- Add surrounding in Normal and Visual modes
				delete = "gzd", -- Delete surrounding
				find = "gzf", -- Find surrounding (to the right)
				find_left = "gzF", -- Find surrounding (to the left)
				highlight = "gzh", -- Highlight surrounding
				replace = "gzr", -- Replace surrounding
				update_n_lines = "gzn", -- Update `n_lines`
			},
		},
	},
}
