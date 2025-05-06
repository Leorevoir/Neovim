return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-emoji",
    "hrsh7th/cmp-cmdline",

    {
      "zbirenbaum/copilot.lua",
      cmd = "Copilot",
      event = "InsertEnter",
      config = function()
        require("copilot").setup({
          suggestion = { enabled = false },
          panel = { enabled = false },
        })
      end,
    },

    {
      "zbirenbaum/copilot-cmp",
      config = function()
        require("copilot_cmp").setup()
      end,
    },
    {
      "giuxtaposition/blink-cmp-copilot",
    },
  },

  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    local kind_icons = {
      Text = "󰊄",
      Method = "",
      Function = "󰡱",
      Constructor = "",
      Field = "",
      Variable = "󱀍",
      Class = "",
      Interface = "",
      Module = "󰕳",
      Property = "",
      Unit = "",
      Value = "",
      Enum = "",
      Keyword = "",
      Snippet = "",
      Color = "",
      File = "",
      Reference = "",
      Folder = "",
      EnumMember = "",
      Constant = "",
      Struct = "",
      Event = "",
      Operator = "",
      TypeParameter = "",
    }

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },

      experimental = { ghost_text = true },
      performance = { debounce = 60, fetching_timeout = 200, max_view_entries = 30 },

      mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          else
            fallback()
          end
        end, { "i", "s" }),

        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),

        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<S-CR>"] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
      }),

      formatting = {
        format = function(entry, vim_item)
          vim_item.kind = string.format("%s %s", kind_icons[vim_item.kind] or "", vim_item.kind)
          vim_item.menu = ({
            copilot = "[Copilot]",
            nvim_lsp = "[LSP]",
            luasnip = "[Snip]",
            buffer = "[Buf]",
            path = "[Path]",
            emoji = "[Emoji]",
            cmdline = "[Cmd]",
          })[entry.source.name]
          return vim_item
        end,
        fields = { "kind", "abbr", "menu" },
      },

      sources = cmp.config.sources({
        { name = "copilot" },
        { name = "nvim_lsp" },
        { name = "emoji" },
        { name = "luasnip", keyword_length = 3 },
        { name = "buffer", keyword_length = 3 },
        { name = "path", keyword_length = 3 },
      }),

      window = {
        completion = { border = "solid" },
        documentation = { border = "solid" },
      },
    })
  end,
}
