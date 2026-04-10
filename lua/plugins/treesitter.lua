return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    lazy = false,
    config = function()
      local status_ok, configs = pcall(require, "nvim-treesitter.configs")
      if not status_ok then
        return
      end

      require("nvim-treesitter.install").prefer_git = true

      configs.setup({
        ensure_installed = {
          "lua",
          "vim",
          "vimdoc",
          "query",
          "bash",
          "python",
          "markdown",
          "markdown_inline",
        },
        highlight = {
          enable = true,
        },
        indent = { enable = true },
      })
    end,
  },
  {
    "OXY2DEV/markview.nvim",
    event = "VeryLazy",
  },
}
