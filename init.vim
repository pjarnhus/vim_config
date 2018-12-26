set nocompatible              " Remove Vi compatibility

call plug#begin('~/.config/nvim/autoload')
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

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

" Jedi-vim
Plug 'davidhalter/jedi-vim'

" Zenburn colour scheme
Plug 'jnurmine/Zenburn'

call plug#end()

autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=menuone,noselect,noinsert
set shortmess+=c
let ncm2#popup_delay = 5
let ncm2#complete_length = [[1, 1]]
let g:ncm2#matcher = 'substrfuzzy'

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

" Investigate what this does!
let python_highlight_all = 1
syntax on

" Do not show docstring popup until called for
autocmd FileType python setlocal completeopt-=preview
" Do not start autocompletion on . - Requires that it is called
let g:jedi#popup_on_dot = 0

" Set colour scheme
colorscheme zenburn


let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = 1

set ignorecase
set smartcase
