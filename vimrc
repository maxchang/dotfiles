filetype on
filetype off
"call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set guifont=Menlo:h12

set tabstop=4
set shiftwidth=4

set ffs=unix,dos,mac

set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set cursorline
set ttyfast
set ruler
set ignorecase
set smartcase
set incsearch
set gdefault
syn on
set hlsearch

"hide search highlighting
nnoremap <leader><space> :noh<cr>

"toggle word wrap
nnoremap <leader>w :set linebreak!<cr>

"toggle line numbers
nnoremap <leader>n :set number!<cr>

"show/hide yankring
nnoremap <silent> <leader>y :YRShow<cr> 
inoremap <silent> <leader>y :YRShow<cr>

"use tab to jump to matched parentheses
nnoremap <tab> %
vnoremap <tab> %

let g:yankring_history_dir = '$HOME/.vim'

"setup undo file(s)
set undodir=~/.vim/undo
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

"invisible characters to show
set listchars=tab:▸\ ,eol:¬
"toggle invisible characters
nnoremap <leader>i :set list!<cr>

"save and (r)un python script
nnoremap <silent> <leader>r :w<CR>:exe ":!python " . getreg("%") . "" <CR>
