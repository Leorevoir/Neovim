return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },

  opts = {
    options = {
      diagnostics = "nvim_lsp",
      mode = "buffers",

      close_icon = " ",
      buffer_close_icon = "󰱝 ",
      modified_icon = "󰔯 ",

      offsets = {
        {
          filetype = "neo-tree",
          text = "Neo-tree",
          highlight = "Directory",
          text_align = "left",
        },
      },
    },
  },

}
