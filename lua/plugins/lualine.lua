return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function()
    require("lualine").setup({
      options = {
        theme = "catppuccin",
        globalstatus = true,
        extensions = { "fzf", "neo-tree" },
        disabled_filetypes = {
          statusline = { "startup", "alpha" },
        },
      },
      sections = {
        lualine_a = {
          { "mode", icon = "" },
        },
        lualine_b = {
          { "branch", icon = "" },
          {
            "diff",
            symbols = {
              added = " ",
              modified = " ",
              removed = " ",
            },
          },
        },
        lualine_c = {
          {
            "diagnostics",
            sources = { "nvim_lsp" },
            symbols = {
              error = " ",
              warn = " ",
              info = " ",
              hint = "󰝶 ",
            },
          },
          { "navic" },
        },
        lualine_x = {
          {
            "filetype",
            icon_only = true,
            separator = "",
            padding = { left = 1, right = 0 },
          },
          {
            "filename",
            path = 1,
          },
        },
        lualine_y = {
          { "progress" },
        },
        lualine_z = {
          { "location" },
        },
      },
    })
  end,
}
