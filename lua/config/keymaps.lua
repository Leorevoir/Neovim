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

--------------------------------
--- ctrl+s to save (shortcut)
--------------------------------

map('i', '<C-s>', '<cmd>w<cr><esc>', opts)
map('n', '<C-s>', '<cmd>w<cr><esc>', opts)

--------------------------------
--- open partend directory
--------------------------------

map('n', '-', ':Oil<CR>', opts)

--------------------------------
--- leader QQ to force quit
--------------------------------

map('n', '<leader>qq', '<cmd>quitall<cr><esc>', opts)

--------------------------------
--- ctrl + a to select all
--------------------------------

map('n', '<C-a>', 'gg<S-v>G', opts)

--------------------------------
--- open terminal below
--------------------------------

map('n', '<leader>t', ':sp +:terminal<CR>i', opts)

--------------------------------
--- escape mode in terminal
--------------------------------

map('t', '<Esc>', '<C-\\><C-n>', opts)

--------------------------------
--- bufferline
--------------------------------

map("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>", opts)
map("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", opts)
map("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", opts)
map("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", opts)
map("n", "<leader>bd", "<cmd>bdelete<cr>", opts)
map("n", "<leader>bb", "<cmd>e #<cr>", opts)
map("n", "<leader>bo", "<cmd>BufferLineCloseOthers<cr>", opts)
map("n", "<leader>bp", "<cmd>BufferLineTogglePin<cr>", opts)
map("n", "<leader>bP", "<cmd>BufferLineGroupClose ungrouped<cr>", opts)

