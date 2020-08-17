""" Core configuration
set nu
set relativenumber
set cursorline

set expandtab
set tabstop=4
set shiftwidth=4

set shortmess=Ic

set mouse=a
set whichwrap=<,>,[,]
set clipboard=unnamedplus

set splitright
set splitbelow

set textwidth=99
set wrapmargin=0
set colorcolumn=100

syntax enable
filetype plugin indent on


""" Plugin management via. vim-plug
call plug#begin('~/.vim/plugged')

" Core
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'

" Explore
Plug 'ctrlpvim/ctrlp.vim', { 'on': ['CtrlP', 'CtrlPBuffer', 'CtrlPMRU', 'CtrlPMixed'] }
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

" Git
Plug 'tpope/vim-fugitive'

" Language
    " Erlang
        Plug 'vim-erlang/vim-erlang-runtime', { 'for': 'erlang' }
        Plug 'vim-erlang/vim-erlang-compiler', { 'for': 'erlang' }
        Plug 'vim-erlang/vim-erlang-omnicomplete', { 'for': 'erlang' }
        Plug 'vim-erlang/vim-erlang-tags', { 'for': 'erlang' }
        Plug 'edkolev/erlang-motions.vim', { 'for': 'erlang' }

    " Go
        Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoInstallBinaries' }

    " Python
        Plug 'davidhalter/jedi-vim', { 'for': 'python' }

" Theming
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rakr/vim-one'
Plug 'altercation/vim-colors-solarized'

call plug#end()


" Configure nerdtree
map <C-n> :NERDTreeToggle<CR>


" Configure ctrlp
noremap <leader>pmru :CtrlPMRU<CR>
noremap <leader>pbuf :CtrlPBuffer<CR>
let g:ctrlp_tabpage_position="al"


" Configure vim-fugitive
noremap <leader>gd :Gvdiff<CR>
noremap <leader>gb :Gblame<CR>
noremap <leader>gs :Gstatus<CR>
noremap <leader>gc :Gcommit -s<CR>
noremap <silent> <leader>g<Right> :diffget //3<CR>
noremap <silent> <leader>g<Left> :diffget //2<CR>


" Configure vim-airline
set noshowmode
let g:airline_powerline_fonts=0
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#whitespace#checks=[]
let g:airline#extensions#tabline#formatter='jsformatter'

