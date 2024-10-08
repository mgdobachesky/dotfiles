-- Prerequisite Configuration
vim.g.mapleader = " " -- Map leader key to space-bar (for lazy.nvim)
vim.g.maplocalleader = "\\" -- Map local leader key to backslash (for lazy.nvim)
vim.g.loaded_netrw = 1 -- Disable netrw (for nvim-tree)
vim.g.loaded_netrwPlugin = 1 -- Disable netrw (for nvim-tree)

-- Plugin Manager
require("config.lazy") -- Load Lazy plugin manager

-- General Configuration
vim.opt.backspace = "indent,eol,start" -- Allow backspacing over indents, line breaks, and insertions
vim.opt.history = 10000 -- Save more lines of history
vim.opt.showcmd = true -- Show incomplete commands at the bottom
vim.opt.showmode = true -- Show mode at the bottom
vim.opt.autoread = true -- Re-read unmodified files
vim.opt.hidden = true -- Remember marks and undo history when re-activating background buffer

-- User Interface
vim.opt.ruler = true -- Always show cursor position
vim.opt.wildmenu = true -- Display tab-complete options as a menu
vim.opt.cursorline = true -- Set a line where the cursor currently is
vim.opt.number = true -- Enable line numbers
vim.opt.relativenumber = true -- Enable relative line numbers
vim.opt.background = "dark" -- Use colors that work for a dark background
vim.opt.title = true -- Show the windows title based on filename

-- Swap, Backup, and Undo Files
vim.opt.swapfile = true -- Enable swap files
vim.opt.directory = os.getenv("HOME") .. "/.local/state/nvim/swap//" -- Set swap file directory

vim.opt.backup = true -- Enable file backups
vim.opt.writebackup = true -- Enable backups when writing
vim.opt.backupdir = os.getenv("HOME") .. "/.local/state/nvim/backup//" -- Set backup file directory

vim.opt.undofile = true -- Enable undo files
vim.opt.undodir = os.getenv("HOME") .. "/.local/state/nvim/undo//" -- Set undo file directory

-- Indentation
vim.opt.autoindent = true -- Enable auto indenting
vim.cmd("filetype indent on") -- Enable indenting for files
vim.opt.tabstop = 4 -- Show existing tab with N spaces width
vim.opt.softtabstop = 2 -- Indent by N spaces when hitting tab
vim.opt.shiftwidth = 2 -- Indent by N spaces when auto-indenting
vim.opt.expandtab = true -- Insert 4 spaces when pressing tab
vim.opt.wrap = false -- Don't wrap lines

-- Searching
vim.opt.incsearch = true -- Find matches as the search is being typed
vim.opt.hlsearch = true -- Highlight search results
vim.opt.ignorecase = true -- Ignore case when searching
vim.opt.smartcase = true -- Ignore case unless a capital is explicitly typed

-- Text Rendering
vim.opt.linebreak = true -- Wrap lines at convenient points
vim.opt.scrolloff = 3 -- Number of lines to keep above and below cursor
vim.opt.sidescrolloff = 5 -- Number of columns to keep to the left and right of the cursor
vim.cmd("syntax enable") -- Enable syntax highlighting

-- Miscellaneous
vim.opt.confirm = true -- Display confirmation when closing unsaved file
vim.opt.modeline = false -- Ignore file's mode lines and use the vimrc configuration instead
vim.opt.spell = true -- Enable spell checking in English

-- Status Line
vim.opt.laststatus = 2 -- Always display the status line
vim.opt.statusline = "%F%m%r%h%w%=(%{&ff}/%Y) (line %l/%L, col %c)"

-- Folding
vim.opt.foldenable = true -- Enable folding
vim.opt.foldlevelstart = 10 -- Open most folds by default, 0 keeps them closed
vim.opt.foldnestmax = 10 -- Max amount of nested folds
vim.opt.foldcolumn = "0" -- Show a column on the left side of the window showing folds and their statuses
vim.opt.foldmethod = "manual" -- Manually manage folds

