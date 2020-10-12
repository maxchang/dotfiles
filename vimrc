" avoids problems when using Fish shell
set shell=/bin/sh

" install vim-plug if necessary
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" load plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'chriskempson/base16-vim'
Plug 'baskerville/bubblegum'
Plug 'scrooloose/nerdtree'
Plug 'mechatroner/rainbow_csv'
call plug#end()

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

"fold all lines, default of 60 characters
nnoremap <leader>f :%!fold -w 60

"toggle paste mode
nmap <leader>p :setlocal paste! paste?<cr>

"duplicate all lines
nnoremap <leader>d :g/^/t.<cr>:noh<cr>

"substitute on odd lines
nnoremap <leader>s1 :g/^/if line('.')%2\|s/$/_R1.fastq.gz/\|endif

"substitute on even lines
nnoremap <leader>s2 :g/^/if !(line('.')%2)\|s/$/_R2.fastq.gz/\|endif

"toggle line numbers
nnoremap <leader>n :set number!<cr>

"show/hide yankring
nnoremap <silent> <leader>y :YRShow<cr>
inoremap <silent> <leader>y :YRShow<cr>

"use tab to jump to matched parentheses
nnoremap <tab> %
vnoremap <tab> %

"toggle file browser
map <C-n> :NERDTreeToggle<CR>

"let g:yankring_history_dir = '$HOME/.vim'
"setup undo file(s)
"set undodir=~/.vim/undo
"set undofile
set undolevels=1000 "maximum number of changes that can be undone
"set undoreload=10000 "maximum number lines to save for undo on a buffer reload

"invisible characters to show
set listchars=tab:▸\ ,eol:¬
"toggle invisible characters
nnoremap <leader>i :set list!<cr>

"save and (r)un python script
nnoremap <silent> <leader>r :w<CR>:exe ":!python " . getreg("%") . "" <CR>

"powerline stuff (https://github.com/vim-airline/vim-airline)
set t_Co=256
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'

"let base16colorspace=256
"colorscheme bubblegum-256-dark
colorscheme bubblegum-256-light
"colorscheme base16-default-dark
"colorscheme base16-cupertino
