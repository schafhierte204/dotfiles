set nocompatible
syntax enable
set ruler

"splittsettings
set splitbelow
set splitright

"indentation
filetype plugin indent on
set smartindent

"Automatic realoding of .vimrc 
autocmd! bufwritepost vimrc source %

"auto Tex Compilation
autocmd! bufwritepost *.tex !pdflatex -synctex=1 -interaction=nonstopmode %

"auto c++ compile
autocmd! bufwritepost *.cpp !g++ -O0 %

"Backspace
set bs=2

"show number and length
set number
set relativenumber
set numberwidth=4
set tw=79
set nowrap
set fo-=t
set colorcolumn=80
highlight ColorColumn ctermbg=233

"spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

"make case incensitive
set hlsearch
set incsearch
set smartcase
set ignorecase

"Show Keystrokes
set showcmd

"autocompletion
set omnifunc=syntaxcomplete#Complete
set complete+=kspell

"Rebind mapleader key
let mapleader = ","

"esc removal
inoremap jk <esc>
inoremap <esc> <nop>

"disable arrow keys
noremap <left> <nop>
noremap <up> <nop>
noremap <down> <nop>
noremap <right> <nop>

"easier moving betwen Frames
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

" map sort fonction to a key
vnoremap <Leader>s :sort<CR>

"move line 
nnoremap ö ddp
nnoremap Ö ddkP
vnoremap ö dp'[V']
vnoremap Ö dkP'[V']

"Help navigation
noremap <leader> <c-]>

"insert blank line
nnoremap <leader>o o<ESC>
nnoremap <leader>O O<ESC>

"qick vimrc edit
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

"soruound selection
nnoremap <leader>" ea"<esc>bi"<esc>
vnoremap <leader>" <esc>'<i"<esc>'>a"<esc>

"indetention
vnoremap > >gv
vnoremap < <gv

"remove searchhighlight
nnoremap <leader>/ :nohlsearch <CR>
