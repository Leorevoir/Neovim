return {
  "tamton-aquib/staline.nvim",
  version = "2024-02-05",
  commit = "d337bc9b343df3328921ef4c3f8ff604102d0201",

--------------------------------

  config = function()

    require("staline").setup({

--------------------------------

      sections = {
        left = { "-mode", " ", "branch" },
        mid = { "lsp_name" },
        right = { "file_name", "line_column" },
      },

      inactive_sections = {
        left = { "-mode", " ", "branch" },
        mid = { "lsp_name" },
        right = { "file_name", "line_column" },
      },

      defaults = {
        left_separator = " ",
        right_separator = "  ",
        branch_symbol = " ",
        mod_symbol = "",
        line_column = "[%l/%L]",
        inactive_color = "#80a6f2",
        inactive_bgcolor = "none",
      },

--------------------------------

      special_table = {
        lazy = { "Plugins", "💤 " },
        TelescopePrompt = { "Telescope", "  " },
        oil = { "Oil", "󰏇 " },
        lazygit = { "LazyGit", " " },
      },

      mode_icons = {
        ["n"] = "NORMAL",
        ["no"] = "NORMAL",
        ["nov"] = "NORMAL",
        ["noV"] = "NORMAL",
        ["niI"] = "NORMAL",
        ["niR"] = "NORMAL",
        ["niV"] = "NORMAL",
        ["i"] = "INSERT",
        ["ic"] = "INSERT",
        ["ix"] = "INSERT",
        ["s"] = "INSERT",
        ["S"] = "INSERT",
        ["v"] = "VISUAL",
        ["V"] = "VISUAL",
        [""] = "VISUAL",
        ["r"] = "REPLACE",
        ["r?"] = "REPLACE",
        ["R"] = "REPLACE",
        ["c"] = "COMMAND",
        ["t"] = "TERMINAL",
      },
    })
  end,
}

