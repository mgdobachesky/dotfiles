-- Plugin Manager
require("config.lazy")

-- General Configuration
vim.opt.backspace = "indent,eol,start"
vim.opt.history = 10000
vim.opt.showcmd = true
vim.opt.showmode = true
vim.opt.autoread = true
vim.opt.hidden = true

-- User Interface
vim.opt.ruler = true
vim.opt.wildmenu = true
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.background = "dark"
vim.opt.title = true

-- Swap, Backup, and Undo Files
vim.opt.swapfile = true
vim.opt.directory = os.getenv("HOME") .. "/.local/state/nvim/swap//"

vim.opt.backup = true
vim.opt.writebackup = true
vim.opt.backupdir = os.getenv("HOME") .. "/.local/state/nvim/backup//"

vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.local/state/nvim/undo//"

-- Indentation
vim.opt.autoindent = true
vim.cmd("filetype indent on")
vim.opt.tabstop = 4
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.wrap = false

-- Searching
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Text Rendering
vim.opt.linebreak = true
vim.opt.scrolloff = 3
vim.opt.sidescrolloff = 5
vim.cmd("syntax enable")

-- Miscellaneous
vim.opt.confirm = true
vim.opt.modeline = false
vim.opt.spell = true

-- Status Line
vim.opt.laststatus = 2
vim.opt.statusline = "%F%m%r%h%w%=(%{&ff}/%Y) (line %l/%L, col %c)"

-- Folding
vim.opt.foldenable = true
vim.opt.foldlevelstart = 10
vim.opt.foldnestmax = 10
vim.opt.foldcolumn = "0"
vim.opt.foldmethod = "manual"

