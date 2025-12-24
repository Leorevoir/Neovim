return {
  "stevearc/oil.nvim",
  opts = {},
  dependencies = { "rachartier/tiny-devicons-auto-colors.nvim" },
  lazy = false,
  config = function()
    require("oil").setup()
  end,
}
