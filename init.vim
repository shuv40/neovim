set number
set backspace=indent,eol,start
set autoindent
set backup
set history=100
set ruler
set showcmd
set incsearch
syntax on
set hlsearch
filetype plugin indent on

autocmd FileType text setlocal textwidth=78
autocmd BufReadPost * 
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \    exe "normal! g`\"" |
    \ endif

set tabstop=4
set smarttab
set shiftwidth=4

"minpac plugin config
packadd minpac
call minpac#init()

call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-scriptease', {'type':'opt'})
call minpac#add('k-takata/minpac', {'type': 'opt'})

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()


