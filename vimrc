""" Core configuration
set nu
set relativenumber
set cursorline

set tabstop=4
set shiftwidth=4

set mouse=a
set whichwrap=<,>,[,]
set clipboard=unnamedplus

set splitright
set splitbelow

set shortmess=Ic
set colorcolumn=80,100

syntax enable
filetype plugin indent on

set termguicolors
set background=dark
colorscheme solarized


""" Plugin management (via. vim-plug)
call plug#begin()
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-unimpaired'
	Plug 'tpope/vim-repeat'
call plug#end()


""" Define custom comment strings
autocmd FileType c,cpp,h setlocal commentstring=//\ %s


""" Key rebindings
	" Give esc the same function in terminal mode as normal:
		tnoremap <Esc> <C-\><C-n>
	" Remove all trailing whitespace:
		noremap <silent> <leader><space> : silent! %s/\s\+$//g<CR>

