local autocmd = vim.api.nvim_create_autocmd

--------------------------------
--- from NVChad https://nvchad.com/docs/recipes
--- (this autocmd will restore the cursor position when opening a file)
--------------------------------

autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    if
      vim.fn.line("'\"") > 1
      and vim.fn.line("'\"") <= vim.fn.line("$")
      and vim.bo.filetype ~= "commit"
      and vim.fn.index({ "xxd", "gitrebase" }, vim.bo.filetype) == -1
    then
      vim.cmd('normal! g`"')
    end
  end,
})

--------------------------------
--- disable mini when pattern
--------------------------------

autocmd("FileType", {
  pattern = { "help", "alpha", "neo-tree", "trouble", "notify" },
  callback = function()
    vim.b.miniindentscope_disable = true
  end,
})

autocmd("User", {
  pattern = "AlphaReady",
  callback = function()
    vim.opt_local.list = false
    vim.b.miniindentscope_disable = true
    pcall(function()
      require("ibl").setup_buffer(0, { enabled = false })
    end)
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
    vim.opt_local.foldenable = false
    vim.opt_local.signcolumn = "no"
  end,
})

do
  autocmd("FileType", {
    pattern = { "alpha" },
    callback = function()
      vim.schedule(function()
        vim.opt_local.cursorline = false
        vim.o.guicursor = "a:block-Cursor"
        io.write("\27[?25l")
        io.flush()
      end)
    end,
  })

  autocmd({ "BufLeave", "BufWipeout", "VimLeavePre" }, {
    pattern = "*",
    callback = function()
      io.write("\27[?25h")
      io.flush()
    end,
  })
end
