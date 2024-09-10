return {
	"williamboman/mason.nvim",
	cmd = {
		"Mason",
		"MasonInstall",
		"MasonUpdate",
		"MasonInstallAll",
		"MasonUninstall",
		"MasonUninstallAll",
		"MasonLog",
	},
	build = "MasonUpdate",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "",
					package_pending = "",
					package_uninstalled = "",
				},
			},
		})
	end,
}
