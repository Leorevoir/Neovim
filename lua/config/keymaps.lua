local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

--------------------------------
--- neo-tree
--------------------------------

map('n', '<leader>e', ":Neotree toggle<CR>", opts)

--------------------------------
--- telescope
--------------------------------

map('n', '<Leader><Leader>', ':Telescope find_files<CR>', opts)
map('n', '<Leader>r/', ':Telescope live_grep search_dirs=/<CR>', opts)
map('n', '<Leader>rr', ':Telescope live_grep search_dirs=%:p:h<CR>', opts)

