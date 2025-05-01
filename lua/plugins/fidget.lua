return {
  "j-hui/fidget.nvim",
  branch = "main",
  event = "LspAttach",
  opts = {
    notification = {
      override_vim_notify = true,
    },
    progress = {
      poll_rate = 0,
      ignore_done_already = false,
      ignore_empty_message = true,
      suppress_on_insert = true,
    },
  },
}
