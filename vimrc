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

" remove the '|' sign in vertical window seperator bar
set fillchars+=vert:\ 

syntax on

autocmd FileType make set noexpandtab

" Force correct coding style in linux source tree files ... (TODO: there has 
" to be a better solution for this
autocmd BufNewFile,BufRead */linux/* set noexpandtab tabstop=8 shiftwidth=8 textwidth=78

colorscheme monokai
