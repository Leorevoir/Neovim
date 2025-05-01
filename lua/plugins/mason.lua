return {
  "williamboman/mason.nvim",
  event = { "BufReadPre", "BufNewFile" },
  build = ":MasonUpdate",
  opts = {
    ui = {
      border = "rounded",
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗",
      },
    },
    ensure_installed = { "clangd", "pyright", "lua_ls" }
  },
  config = function(_, opts)
    require("mason").setup(opts)
  end,
}
