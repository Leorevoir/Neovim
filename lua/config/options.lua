local opts = vim.opt

opts.number = true
opts.relativenumber = true

opts.shiftwidth = 4
opts.tabstop = 4
opts.showtabline = 4
opts.softtabstop = 4
opts.expandtab = true
opts.breakindent = true

opts.hlsearch = true
opts.incsearch = true

opts.wrap = true

opts.ignorecase = true
opts.smartcase = true

opts.grepprg = "rg --vimgrep"
opts.grepformat = "%f:%l:%c:%m"

opts.termguicolors = true
-- opts.cursorline = true

opts.encoding = "utf-8"
opts.fileencoding = "utf-8"

opts.cmdheight = 0

opts.showmode = false
