set nocompatible              " be iMproved, required
filetype off                  " required
set termguicolors
set shell=/usr/bin/zsh
set encoding=utf-8

filetype plugin on
filetype indent on

" set the runtime path to include plug
call plug#begin('~/.vim/plugged')

" plugins to be installed by plug
Plug 'chriskempson/base16-vim'
Plug 'rust-lang/rust.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-python/python-syntax'
Plug 'cespare/vim-toml'
Plug 'justinmk/vim-syntax-extra'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'

" plugins must be listed prior to this call
call plug#end()

" enable hidden buffers
set hidden

" point neovim to virtualenvs where the neovim python package is installed
let g:python_host_prog = "/home/mandeep/.virtualenvs/neovim2/bin/python"
let g:python3_host_prog = "/home/mandeep/.virtualenvs/neovim3/bin/python"

" set semantic completion for youcompleteme
let g:ycm_python_binary_path = "/usr/bin/python3"
let g:ycm_rust_src_path = "~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src"

" enable highlighting of all python-syntax options
let g:python_highlight_all = 1

" ale settings
let b:ale_fixers = ['trim_whitespace', 'remove_trailing_lines']
let g:ale_fix_on_save = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_set_signs = 0
let g:ale_set_highlights = 0
let g:ale_linters = {'c': ['gcc']}
let g:ale_c_gcc_options = '-Wextra -Wall -Wformat=2 -Wshadow -Wstrict-prototypes -std=c11'

" translate tabs to 4 spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" enable persistent undo
let undodir = "~/.vim/undodir/"
set undofile

syntax on
colorscheme base16-oceanicnext
set number
set ignorecase
set smartcase
highlight clear LineNr
