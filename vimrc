" allow beeing incompatible to vi
set nocompatible

" indentation
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent

set ignorecase
set smartcase

set hlsearch " highlight search 

" allow use of mouse
set mouse=a
set ttymouse=xterm2

" line number
set number
let &colorcolumn=join(range(81,999),",")

" remove the '|' sign in vertical window seperator bar
set fillchars+=vert:\ 

syntax on

" Vundle stuff
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'https://github.com/kien/ctrlp.vim.git'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'https://github.com/sickill/vim-monokai.git'
Plugin 'michalbachowski/vim-wombat256mod.git'
call vundle#end()
filetype plugin indent on 

autocmd FileType make set noexpandtab

" Force correct coding style in linux source tree files ... (TODO: there has 
" to be a better solution for this
autocmd BufNewFile,BufRead */linux/* set noexpandtab tabstop=8 shiftwidth=8 textwidth=78

" Disable folding for Markdown
let g:vim_markdown_folding_disabled=1

colorscheme monokai
