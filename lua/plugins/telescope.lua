return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "nvim-telescope/telescope-file-browser.nvim",
    "nvim-telescope/telescope-fzf-native.nvim",
  },
  cmd = "Telescope",

  config = function()

    require("telescope").setup({
      defaults = {
        layout_config = {
          horizontal = { prompt_position = "top" },
        },
        sorting_strategy = "ascending",
      },
      extensions = {
        file_browser = {
          enable = true,
        },
        fzf_native = {
          enable = true,
        },
      },
      pickers = {
        colorscheme = {
          enable_preview = true,
        },
      },

    })

    require("telescope").load_extension("file_browser")
    require("telescope").load_extension("fzf")
  end,
}
