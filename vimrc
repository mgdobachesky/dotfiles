set nocompatible " Use Vim settings, rather than Vi settings

" General Configuration
set backspace=indent,eol,start " Allow backspacing over indents, line breaks, and insertions
set history=1000 " Save more lines of history
set showcmd " Show incomplete commands at the bottom
set showmode " Show mode at the bottom
set autoread " Re-read unmodified files
set hidden " Remember marks and undo history when re-activating background buffer

" User Interface
set ruler " Always show cursor position
set wildmenu " Display tab-complete options as a menu
colorscheme habamax " Set nice looking colorscheme
set cursorline " Set a line where the cursor currently is
:highlight CursorLine guibg=black ctermbg=black
set number " Enable line numbers
set relativenumber " Enable relative line numbers
set background=dark " Use colors that work for a dark background
set title " Show the windows title based on filename

" Swap and Backup Files
set noswapfile " Disable swapfile
set nobackup " Disable file backups

" Indentation
set autoindent " Enable auto indenting
filetype indent on " Enable indenting for files
set tabstop=4 " Show existing tab with N spaces width
set softtabstop=2 " Indent by N spaces when hitting tab
set shiftwidth=2 " Indent by N spaces when auto-indenting
set expandtab " Insert 4 spaces when pressing tab
set nowrap " Don't wrap lines

" Searching
set incsearch " Find matches as the search is being typed
set hlsearch " Highlight search results
set ignorecase " Ignore case when searching
set smartcase " Ignore case unless a capital is explicitly typed

" Text Rendering
set encoding=utf-8 " Set specific encoding
set linebreak " Wrap lines at convenient points
set scrolloff=3 " Number of lines to keep above and below cursor
set sidescrolloff=5 " Number of columns to keep to the left and right of the cursor
syntax enable " Enable syntax highlighting

" Miscellaneous
set confirm " Display confirmation when closing unsaved file
set nomodeline " Ignore file's mode lines and use the vimrc configuration instead
set nrformats-=octal " Interpret octal as decimal when incrementing numbers
set shell=/bin/bash " Set shell used to execute commands
set spell " Enable spell checking in English
set exrc " Enable project specific vimrc files when placed in root project folders

" Status Line
set laststatus=2 " Always display the status line
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
