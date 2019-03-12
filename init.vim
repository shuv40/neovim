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

"Mapleader
let mapleader = " "

filetype plugin indent on

autocmd FileType text setlocal textwidth=78
autocmd BufReadPost * 
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \    exe "normal! g`\"" |
    \ endif

set tabstop=4
set smarttab
set shiftwidth=4


" CUSTOM KEY BINDINGS

"quickly edit vimrc
:nnoremap <leader>ev :vsplit $VIMRC<cr>

"source file, source means reload
:nnoremap <leader>s :source %<cr> 


"ABBREVIATONS

:iabbrev adn and
:iabbrev #i #include 
:iabbrev #d #define



" PLUGINS

"minpac plugin config
packadd minpac
call minpac#init()

call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-scriptease', {'type':'opt'})
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('ervandew/supertab')

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()


"fzf config
nnoremap <C-p> :<C-u>FZF<CR>

"configuring nerdtree
call minpac#add('scrooloose/nerdtree')
map <C-o> :NERDTreeToggle<CR>

"configuring ale 
"for c linting
let g:ale_linters = {
\	'c': ['gcc'],
\ }

"Mappings in the style of unimpaired-next
nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)


"grepper Plugin
let g:grepper	= {}
let g:grepper.tools = ['grep', 'git', 'rg']
"search for the current word
nnoremap <Leader>* :Grepper -cword -noprompt<CR>
"search for the current selection
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

"Open grepper-prompt for a particular grep-alike tool
nnoremap <Leader>g :Grepper -tool git<CR>
nnoremap <Leader>G :Grepper -tool rg<CR>

"terminal mode config
if has('nvim')
	tnoremap <Esc> <C-\><C-n>
	tnoremap <C-v><Esc> <Esc>
endif

"window switching terminal
nnoremap <M-h> <c-w>h
nnoremap <M-j> <c-w>j
nnoremap <M-k> <c-w>k
nnoremap <M-l> <c-w>l
if has('nvim')
	tnoremap <M-h> <c-\><c-n><c-w>h
	tnoremap <M-j> <c-\><c-n><c-w>j
	tnoremap <M-k> <c-\><c-n><c-w>k
	tnoremap <M-l> <c-\><c-n><c-w>l
endif



















