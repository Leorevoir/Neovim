return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  opts = {
    format_on_save = {
      lsp_fallback = true,
      timeout_ms = 500,
    },
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "isort", "black" },
      c = { "clang_format" },
      cpp = { "clang_format" },
      html = { "prettier" },
      css = { "prettier" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      nix = { "nixfmt" },
      markdown = { "prettier" },
      yaml = { "prettier" },
      json = { "jq" },
    },
  },
  config = function(_, opts)
    require("conform").setup(opts)
  end,
}
