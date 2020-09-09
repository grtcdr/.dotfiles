call plug#begin()
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

set noswapfile
set rnu
set expandtab
set confirm
set lazyredraw
set noerrorbells
set novisualbell
set ai
set incsearch
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set noshowmode  " to get rid of thing like --INSERT--
set noshowcmd  " to get rid of display of last command
set shortmess+=F  " to get rid of the file name displayed in the command line bar

" Enable syntax highlighting
syntax enable
colorscheme nord 
set background=dark

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
