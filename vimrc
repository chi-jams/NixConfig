set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" IDE Stuff
Plugin 'w0rp/ale'
Plugin 'scrooloose/nerdtree' " File explorer
Plugin 'ctrlpvim/ctrlp.vim' " File searcher
Plugin 'junegunn/fzf' " File search across project
Plugin 'junegunn/fzf.vim'

" Plugin 'jiangmiao/auto-pairs'
Plugin 'luochen1990/rainbow'
"Plugin 'terryma/vim-multiple-cursors'
Plugin 'rcabralc/monokai.vim'

" Language Support
Plugin 'leafgarland/typescript-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:rainbow_active = 1

" NERDTree stuff
" Toggle file explorer
map <C-n> :NERDTreeToggle<CR>

" close vim if only NERDTree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeWinSize=30
let g:NERDTreeIgnore=[
    \'node_modules$[[dir]]'
    \]

" Auto-open NERDTree
" autocmd vimenter * NERDTree

map <C-Tab> :tabn<CR>
map <C-S-Tab> :tabp<CR>

nnoremap <C-S> :Rg<CR>

" Ale stuff
let g:ale_completion_enabled = 1
let g:ale_lint_on_save = 1

" Ctrl-P stuff
let g:ctrlp_cmd = 'CtrlP getcwd()'
let g:ctrlp_follow_symlinks = 1

let g:ctrlp_custom_ignore = {
    \ 'dir': '(node_modules|build|build.tools|dist)',
    \ }

let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("v")': ['<cr>', '<RightMouse>'],
    \ 'AcceptSelection("e")': ['<c-v>', '<2-LeftMouse>'],
    \ }

" Monokai stuff
let g:monokai_colorscheme#output_srgb = 0
if !has('gui_running')
    let g:monokai_colorscheme#transparent_background = 1
endif

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
set textwidth=80

set hlsearch
set incsearch

inoremap <S-Tab> <C-d>

" This is to prevent python from untabbing when typing a '#'
inoremap # X#

set spell spelllang=en_us

" Vim apparently starts in replace mode due to some ambiguous utf-8 characters,
" which this fixes
" https://superuser.com/questions/1284561/why-is-vim-starting-in-replace-mode
set t_u7=

source ~/NixConfig/vimrc.custom
