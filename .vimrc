" see https://neovim.io/doc/user/nvim.html#nvim-from-vim on how to transition
" config from vim to neovim

set nocompatible              " be iMproved, required
filetype off                  " required
set termguicolors
set shell=/usr/bin/zsh
set encoding=utf-8

filetype plugin on
filetype indent on

" add plug install verification
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" set the runtime path to include plug
call plug#begin('~/.vim/plugged')

" plugins to be installed by plug
Plug 'chriskempson/base16-vim'
Plug 'rust-lang/rust.vim'  " checkout commit 0f26c3a0 for doc comments to work properly
Plug 'Valloric/YouCompleteMe'
Plug 'vim-python/python-syntax'
Plug 'cespare/vim-toml'
Plug 'justinmk/vim-syntax-extra'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'tikhomirov/vim-glsl'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" plugins must be listed prior to this call
call plug#end()

" enable hidden buffers
set hidden

" set semantic completion for youcompleteme
let g:ycm_python_binary_path = "/usr/bin/python3"
let g:ycm_rust_src_path = "~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src"
let g:ycm_auto_trigger = 0

" enable highlighting of all python-syntax options
let g:python_highlight_all = 1

" set ale specific settings
let g:ale_fixers = {'*': ['trim_whitespace', 'remove_trailing_lines']}
let g:ale_fix_on_save = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_set_signs = 0
let g:ale_set_highlights = 0
let g:ale_linters = {'c': ['gcc'], 'cpp': ['gcc'], 'python': ['flake8']}
let g:ale_c_gcc_options = '-Wextra -Wall -Wformat=2 -Wshadow -Wstrict-prototypes -std=c11'
let g:ale_cpp_gcc_options = '-Wall -Wextra -Wformat=2 -Wshadow -std=c++17'
let g:ale_nasm_nasm_options = '-f elf64'

" set the assembly syntax to nasm
let asmsyntax = "nasm"

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
