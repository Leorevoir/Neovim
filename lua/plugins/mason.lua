return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "jose-elias-alvarez/null-ls.nvim",
    "williamboman/mason-null-ls.nvim",
  },

  config = function()

    require('mason').setup()

    require('mason-lspconfig').setup({
      ensure_installed = { "lua_ls", "pyright", "clangd" },
    })

    require('mason-null-ls').setup({
      ensure_installed = { "stylua", "eslint_d", "black" },
    })

  end
}
