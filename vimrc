" Show line numbers
set number

" Set tab to 2 spaces
set tabstop=2 shiftwidth=2 expandtab

" VimPlug
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-trailing-whitespace'

call plug#end()
