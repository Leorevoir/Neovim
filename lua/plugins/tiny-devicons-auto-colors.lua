return {
  "rachartier/tiny-devicons-auto-colors.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  event = "VeryLazy",
  config = function()
    require("tiny-devicons-auto-colors").setup()
    require("nvim-web-devicons").set_icon({
      frag = {
        icon = "",
        color = "#ff9e64",
        cterm_color = "202",
        name = "Frag",
      },
      vert = {
        icon = "",
        color = "#4f5b93",
        cterm_color = "63",
        name = "Vert",
      },
      comp = {
        icon = "",
        color = "#00ff00",
        cterm_color = "34",
        name = "Comp",
      },
    })
  end,
}
