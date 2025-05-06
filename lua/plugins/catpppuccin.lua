return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "macchiato", -- latte, frappe, macchiato, mocha
      background = {
        light = "frappe",
        dark = "macchiato",
      },
      transparent_background = true,
      disable_background = false,
      disable_float_background = false,
      disable_italic = false,
      disable_bold = false,
      disable_underline = false,

      integrations = {
        cmp = true,
        noice = true,
        notify = true,
        gitsigns = true,
        which_key = true,
        treesitter = true,
        treesitter_context = true,
        telescope = { enabled = true },
        indent_blankline = { enabled = true },
        mini = {
          enabled = true,
          indentscope_color = "rosewater",
        },
        illuminate = {
          enabled = true,
        },
        navic = {
          enabled = true,
          custom_bg = "NONE",
        },
        native_lsp = {
          enabled = true,
          inlay_hints = {
            background = true,
          },
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            information = { "italic" },
            warnings = { "italic" },
            ok = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            information = { "underline" },
            warnings = { "underline" },
          },
        },
      },
    })

    vim.cmd.colorscheme("catppuccin")
  end,
}
