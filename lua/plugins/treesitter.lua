return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "main",
    build = ":TSUpdate",
    dependencies = "OXY2DEV/markview.nvim",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "vim", "bash", "python" },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
  {
    "OXY2DEV/markview.nvim",
    event = "VeryLazy",
  },
}
