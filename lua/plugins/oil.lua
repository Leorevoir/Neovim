return {
  "stevearc/oil.nvim",
  opts = {},
  depencecies = { "rachartier/tiny-devicons-auto-colors.nvim" },
  lazy = false,
  config = function()
    require("oil").setup()
  end,
}
