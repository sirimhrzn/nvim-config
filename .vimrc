syntax on
filetype on
set nocompatible
filetype plugin on
filetype indent on
set number
set cursorline
set wildmode=list:longest
set wildmenu
set shiftwidth=4

set tabstop=4

set expandtab

set nobackup

set scrolloff=10

set nowrap

set incsearch

set ignorecase

set smartcase

set showcmd

set showmode

set showmatch

set hlsearch

set history=1000

call plug#begin()
    Plug 'lifepillar/vim-solarized8'
    Plug 'preservim/NERDTree'
    Plug 'itchyny/lightline.vim'
    Plug 'frazrepo/vim-rainbow'
    Plug 'junegunn/goyo.vim'
    Plug 'bagrat/vim-buffet'
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'dense-analysis/ale'
    Plug 'jlanzarotta/bufexplorer'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'tpope/vim-surround'
    Plug 'scrooloose/syntastic'
    Plug 'valloric/youcompleteme'
    Plug 'rust-lang/rust.vim'

call plug#end()



set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" Map Shift + H to switch to the previous buffer
nnoremap <S-H> :bprev<CR>

" Map Shift + L to switch to the next buffer
nnoremap <S-L> :bnext<CR>

nnoremap <Space>e :NERDTreeToggle<CR>

let g:ctrlp_map = '<Space>f'
let g:ctrlp_cmd = 'CtrlP'

colorscheme wildcharm
set background=dark



" Enable coc.nvim
let g:coc_enable = 1
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use <Enter> to select completion item
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
