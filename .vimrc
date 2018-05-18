set nocompatible              " be iMproved, required
filetype off                  " required
set termguicolors
set shell=/usr/bin/zsh

filetype plugin on
filetype indent on

" set the runtime path to include plug
call plug#begin('~/.vim/plugged')

" plugins to be installed by plug
Plug 'chriskempson/base16-vim'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-python/python-syntax'
Plug 'nvie/vim-flake8'
Plug 'cespare/vim-toml'
Plug 'justinmk/vim-syntax-extra'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" plugins must be listed prior to this call
call plug#end()

" enable hidden buffers
set hidden

" set the path to racer for rust autocompletion
let g:racer_cmd = "/home/mandeep/.cargo/bin/racer"

" point neovim to virtualenvs where the neovim python package is installed
let g:python_host_prog = "/home/mandeep/.virtualenvs/neovim3/bin/python"
let g:python3_host_prog = "/home/mandeep/.virtualenvs/neovim3/bin/python"

" enable highlighting of all python-syntax options
let g:python_highlight_all = 1

" translate tabs to 4 spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" create a user command :Flake8 that runs flake8 on the current file
command Flake8 call Flake8()

" enable persistent undo
let undodir = "~/.vim/undodir/"
set undofile


syntax on
colorscheme base16-oceanicnext
set number
highlight LineNr guibg=0
