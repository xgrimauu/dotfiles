return {
	{
		"echasnovski/mini.nvim",
		dependencies = {
			{ "echasnovski/mini.ai", version = "*" },
			{ "echasnovski/mini.pairs", version = "*" },
		},
		version = "*",
		config = function()
			require("mini.ai").setup({})
			require("mini.pairs").setup({})
		end,
	},
}
