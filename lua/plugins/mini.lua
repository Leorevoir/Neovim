return {
  "echasnovski/mini.nvim",

  config = function()

    require('mini.indentscope').setup({
      symbol = "│",
      options = {
        try_as_border = true,
      }
    })
    require('mini.surround').setup({})

  end

}
