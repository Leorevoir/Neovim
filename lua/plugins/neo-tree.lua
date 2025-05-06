return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "main",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  cmd = "Neotree",

  config = function()
    require("neo-tree").setup({
      add_blank_line_at_top = false,
      sources = { "filesystem", "buffers", "git_status", "document_symbols" },

      filesystem = {
        bind_to_cwd = false,
        follow_current_file = {
          enabled = true,
        },

        --------------------------------
        --- hide gitignore'd files & .git/
        --------------------------------

        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_by_pattern = {
            "^.git$",
          },
        },
      },

      --------------------------------

      default_component_configs = {
        indent = {
          with_expanders = true,
          expander_collapsed = "󰅂",
          expander_expanded = "󰅀",
          expander_highlight = "NeoTreeExpander",
        },

        --------------------------------

        git_status = {
          symbols = {
            added = " ",
            conflict = "󰩌 ",
            deleted = "󱂥",
            ignored = " ",
            modified = " ",
            renamed = "󰑕",
            staged = "󰩍",
            unstaged = "",
            untracked = " ",
          },
        },

        --------------------------------
      },
    })
  end,
}
