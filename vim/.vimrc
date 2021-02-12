call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'w0ng/vim-hybrid'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jamessan/vim-gnupg'
call plug#end()

syntax enable
set autoindent
set noerrorbells
set relativenumber
set encoding=utf-8
set title
set pastetoggle=<F3>
set cursorline
"set t_Co=256
set termguicolors
set background=dark
color material 

let g:airline_theme='hybrid'

hi CursorLine term=bold cterm=bold

" General keybindings
nnoremap <C-x> :qa<CR>
nnoremap <C-q> :q<CR>
nnoremap <C-s> :w<CR>

" Moving lines around
nnoremap <C-j> :m+<CR>==
nnoremap <C-k> :m-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
