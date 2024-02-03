return {
  'stevearc/conform.nvim',
  lazy = true,
  cmd = "ConformInfo",
  keys = {
    {
      "<leader>cf",
      function()
        require("conform").format({ formatters = { "injected" } })
      end,
      mode = { "n", "v" },
      desc = "Format Injected Langs",
    },
  },
  opts = {
formatters_by_ft = { 
                        lua = {"sylua"}
                }
        },
}
