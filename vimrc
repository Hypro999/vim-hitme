""" Core configuration
set encoding=utf-8

set nu
set relativenumber
set cursorline

set tabstop=4
set shiftwidth=4

set mouse=a
set whichwrap=<,>,[,]
set clipboard=unnamedplus
set backspace=indent,eol,start

set splitright
set splitbelow

set shortmess=Ic
set colorcolumn=80,100

syntax enable
filetype plugin indent on

set termguicolors
set background=dark
colorscheme solarized8_flat


""" Plugin management (via. vim-plug)
call plug#begin()
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-unimpaired'
	Plug 'tpope/vim-repeat'
call plug#end()


""" Key rebindings
	" Give esc the same function in terminal mode as normal:
		tnoremap <Esc> <C-\><C-n>
	" Remove all trailing whitespace:
		noremap <silent> <leader><space> : silent! %s/\s\+$//g<CR>


" A command mode abbreviation to map 'h' to opening docs in a new tab.
" type out 'help' instead of 'h' to open the docs in a regular split.
" We can't use just 'cnoreabbrev h help' since stuff like 'e h.txt'
" would get changed to 'e tab h.txt'.
cnoreabbrev <expr> h getcmdtype() == ":" && getcmdline() == 'h' ? 'tab help' : 'h'

