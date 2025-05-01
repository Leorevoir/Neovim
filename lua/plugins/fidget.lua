return {
  "j-hui/fidget.nvim",
  event = "LspAttach",
  opts = {
    progress = {
      suppress_on_insert = true,
      ignore_done_already = false,
      ignore_empty_message = false,
    },
    notification = {
      override_vim_notify = true,
      window = {
        winblend = 0,
        border = "none",
        align = "bottom",
        relative = "editor",
        max_width = 80,
        x_padding = 1,
        y_padding = 0,
      },
      view = {
        stack_upwards = true,
        icon_separator = " ",
        group_separator = "---",
        group_separator_hl = "Comment",
      },
    },
  },
}
