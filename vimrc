""" Core configuration
set encoding=utf-8

set nu
set relativenumber
set cursorline

set tabstop=4
set shiftwidth=4

set mouse=a
set nowrap
set whichwrap=<,>,[,]
set clipboard=unnamedplus
set backspace=indent,eol,start

set splitright
set splitbelow

set shortmess=Ic
set colorcolumn=80,100

syntax enable
filetype plugin indent on


""" Plugin management (via. vim-plug)
call plug#begin()
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-unimpaired'
	Plug 'tpope/vim-repeat'
	Plug 'tpope/vim-fugitive'

	Plug 'morhetz/gruvbox'
	Plug 'arcticicestudio/nord-vim'
	Plug 'lifepillar/vim-solarized8'

	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	Plug 'junegunn/fzf'
call plug#end()


""" Colorscheme
set termguicolors
set background=dark
colorscheme solarized8_flat


""" Key rebindings

" Give esc the same function in terminal mode as normal:
tnoremap <Esc> <C-\><C-n>

" Remove all trailing whitespace:
noremap <silent> <leader><space> : silent! %s/\s\+$//g<CR>

" Create bindings to move using hjkl in insert mode:
inoremap <A-h> <C-o>h
inoremap <A-j> <C-o>j
inoremap <A-k> <C-o>k
inoremap <A-l> <C-o>l

" A command mode abbreviation to map 'h' to opening docs in a new tab.
" type out 'help' instead of 'h' to open the docs in a regular split.
cnoreabbrev <expr> h getcmdtype() == ":" && getcmdline() == 'h' ? 'tab help' : 'h'

" Use Ctrl-P to open fzf, and Esc to exit:
nnoremap <silent> <C-p> :FZF<CR>
tnoremap <expr> <Esc> (&filetype == 'fzf') ? '<Esc>' : '<c-\><c-n>'


""" Configure vim-airline
set noshowmode
let g:airline_powerline_fonts=0
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#whitespace#checks=[]
let g:airline#extensions#tabline#formatter='unique_tail_improved'

