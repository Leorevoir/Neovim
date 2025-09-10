return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
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
