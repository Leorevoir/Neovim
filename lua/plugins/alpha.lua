return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      "",
      "",
      "",
      "",
      "                     ./o.",
      "                   ./sssso-",
      "                 `:osssssss+-",
      "               `:+sssssssssso/.",
      "             `-/osssssssssssso/.",
      "           `-/+sssssssssssssssso+:`",
      "         `-:/+sssssssssssssssssso+/.",
      "       `.://osssssssssssssssssssso++-",
      "      .://+sssssssssssssssssssssssso++:",
      "    .:///osssssssssssssssssssssssssso++:",
      "  `:////sssssssssssssssssssssssssssso+++.",
      "`-////+sssssssssssssssssssssssssssso++++-",
      " `..-+oosssssssssssssssssssssssso+++++/`",
      "   ./++++++++++++++++++++++++++++++/:.",
      "  `:::::::::::::::::::::::::------``",
      "",
    }

    dashboard.section.buttons.val = {
      dashboard.button("n", "📄  New file", ":ene <BAR> startinsert<CR>"),
      dashboard.button("f", "🔍  Find file", ":Telescope find_files<CR>"),
      dashboard.button("r", "📂  Recent files", ":Telescope oldfiles<CR>"),
      dashboard.button("q", "❌  Quit", ":qa<CR>"),
    }

    dashboard.section.footer.val = {
      "I use EndeavourOS and Neovim (btw)",
    }

    dashboard.opts.opts.noautocmd = true
    alpha.setup(dashboard.opts)
  end,
}
