return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },

  --------------------------------

  opts = function()
    return {
      capabilities = require("cmp_nvim_lsp").default_capabilities(),

      on_attach = function(_, bufnr)
        local map = function(mode, lhs, rhs, desc)
          vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc, silent = true })
        end
        map("n", "gd", vim.lsp.buf.definition, "Go to definition")
        map("n", "K", vim.lsp.buf.hover, "Hover documentation")
        map("n", "gr", vim.lsp.buf.references, "List references")
        map("n", "<leader>rn", vim.lsp.buf.rename, "Rename symbol")
        map("n", "<leader>ca", vim.lsp.buf.code_action, "Code actions")
        map("n", "<leader>f", function()
          vim.lsp.buf.format({ async = true })
        end, "Format buffer")
      end,

      --------------------------------

      servers = {
        clangd = {},
        pyright = {},

        --------------------------------
        --- ignore `vim` variable when i edit Neovim dots
        --------------------------------

        lua_ls = {
          settings = {
            Lua = {
              diagnostics = { globals = { "vim" } },
              workspace = { library = vim.api.nvim_get_runtime_file("", true) },
            },
          },
        },
      },
    }
  end,

  --------------------------------

  config = function(_, opts)
    local mason_config = require("mason-lspconfig")
    local lspconfig = require("lspconfig")

    mason_config.setup({ ensure_installed = vim.tbl_keys(opts.servers), automatic_installation = true })
    mason_config.setup_handlers({
      function(server)
        local cfg = vim.tbl_deep_extend("force", opts, opts.servers[server] or {})
        lspconfig[server].setup(cfg)
      end,
    })
  end,
}
