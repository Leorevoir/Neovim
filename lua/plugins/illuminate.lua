return {
  "RRethy/vim-illuminate",

  config = function()

    require('illuminate').configure({
      enable = true, 
      under_cursor = false,
      filetypes_denylist = {
        "Outline",
        "TelescopePrompt",
        "alpha",
        "harpoon",
        "reason",
      },
    })

  end

}
