local autocmd = vim.api.nvim_create_autocmd

--------------------------------
--- from NVChad https://nvchad.com/docs/recipes
--- (this autocmd will restore the cursor position when opening a file)
--------------------------------

autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    if vim.fn.line("'\"") > 1 and vim.fn.line("'\"") <= vim.fn.line("$") and vim.bo.filetype ~= "commit"
      and vim.fn.index({ "xxd", "gitrebase" }, vim.bo.filetype) == -1 then
      vim.cmd("normal! g`\"")
    end
  end,
})

--------------------------------
--- disable mini when pattern
--------------------------------

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "help", "alpha", "neo-tree", "trouble", "notify" },
  callback = function()
    vim.b.miniindentscope_disable = true
  end,
})
