set nocompatible              " Remove Vi compatibility

call plug#begin('~/.config/nvim/autoload')

" Make sure that we get the corrent indentation with indentpython plugin
Plug 'vim-scripts/indentpython.vim'

" Enable proper folding for python
set foldmethod=indent
set foldlevel=99
Plug 'tmhedberg/SimpylFold'

" Enable folding with spacebar
nnoremap <space> za

" Linting with flake8
Plug 'nvie/vim-flake8'


call plug#end()
"
" Set encoding to UTF-8
set encoding=utf-8

" Set relative line numbering with absolute number at current line
set nu rnu

" Set color column with a warning and danger columns
let &colorcolumn="".join(range(80,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" Make Vim adhere to PEP-8 standards
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=79
    \ expandtab
    \ autoindent
    \ fileformat=unix
