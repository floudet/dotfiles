" Fabien's basic setup 

" enable not vi-compatible yet very nice features
set nocompatible

" enable pathogen
call pathogen#infect()

" enable matchit
filetype plugin on
runtime macros/matchit.vim

" Show (partial) command in the last line of the screen
set showcmd

" Minimal number of screen lines to keep above and below the cursor
set scrolloff=4

" Fast terminal connection. Improves smoothness.
set ttyfast

"set t_Co=256
" Set color scheme
colorscheme molokai

" Enable syntax highlighting
syntax on

" Define leader key for extended shortcuts
let mapleader = ","

" Always display the line status
set laststatus=2
" line status format
set statusline=%t\ %y\ [line:\ %l]\ [col:\ %c]\ [format:\ %{&ff}] 

" Enable line numbers
set number
"set relativenumber

" Centralize and keep a lot of undo history
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000  "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload 

" Character encoding used inside Vim
set encoding=utf-8

" history of ex commands and search patterns
set history=300

" Python parameters 
"set textwidth=79  " lines longer than 79 columns will be broken
set shiftwidth=2  " operation >> indents x columns; << unindents x columns
set tabstop=2     " a hard TAB displays as x columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=2 " insert/delete x spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line
set smarttab      " Use shiftwidth not tabstop for inserting TABs on line begin

set smartindent   " Smart autoindenting when starting a new line

" enable auto indent
filetype indent on

" show a visual line under the cursor's current line
set cursorline
set cursorcolumn

" enable enhanced command line completion
set wildmenu
set wildmode=full
set wildignore=*.swp

" Search parameters
set incsearch     " Show where the pattern matches
set hlsearch      " turns on search highlighting
set showmatch     " briefly jump to the matching brace when inserting one
nnoremap <leader><space> :noh<cr>
set ignorecase    " ignore case in search patterns
set smartcase     " override the 'ignorecase' option if the search pattern

" set working directory to current file
set autochdir

" disable bell for error messages
set noerrorbells
set visualbell    " screen flash instead of beep

" define key sequence to put vim in Paste mode
set pastetoggle=<F2>

" backup parameters
set backupdir=~/.vim/backup// " directory for backup files
set directory=~/.vim/swp//    " directory for the swap files

set backup                    " make a backup before overwriting a file
set writebackup               " make a backup before overwriting a file
" with the two options above set all the backups are kept
set backupcopy=yes            " backup mode: make a copy and overwrite the original
" meaningful backup name
autocmd BufWritePre * let &bex = '@' . strftime("%F.%H:%M")

" splitting a window will put the new window below the current one
set splitbelow
" splitting a window will put the new window right of the current one
set splitright

" make `j` and `k` work on visual lines not physical lines
nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j

" disable arrow keys (normal mode) 
nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
" disable arrow keys (insert mode)
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>

" save file openened read-only
cmap w!! :w !sudo tee % 

" copy line to clipboard when in visual mode
vmap <C-c> :w !pbcopy<CR><CR>

