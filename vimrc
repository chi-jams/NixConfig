

" Makes it so weird things don't happen...?
"set nocompatible

" Syntax highlighting
syntax enable
colorscheme monokai

set shiftwidth=4
"set tabstop=8
set tabstop=4
set expandtab
set smarttab

set autoindent
set smartindent

set number
set relativenumber

set ruler

set colorcolumn=80

inoremap <S-Tab> <C-d>

" This is to prevent python from untabbing when typing a '#'
inoremap # X#

autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType jade setlocal shiftwidth=2 tabstop=2
