-- User Interface
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.title = true
vim.opt.wrap = false
vim.opt.linebreak = true

-- Swap, Undo, and Backup Files
vim.opt.swapfile = true
vim.opt.undofile = true
vim.opt.backup = true
vim.opt.writebackup = true
vim.opt.backupdir:remove('.')

-- Indentation
vim.cmd("filetype indent on")
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Text Rendering
vim.opt.scrolloff = 3
vim.opt.sidescrolloff = 5

-- Miscellaneous
vim.opt.confirm = true
vim.opt.modeline = false
vim.opt.spell = true

