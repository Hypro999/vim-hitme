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
set completeopt=longest,menuone,noinsert


""" Plugin management (via. vim-plug)
call plug#begin()
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-unimpaired'
	Plug 'tpope/vim-repeat'
call plug#end()


""" Colorscheme
set termguicolors
set background=dark
colorscheme solarized8_flat


""" Windows specific settings
if has('win32')
	set belloff=all
	set nobackup
	set nowritebackup
	set clipboard=unnamedplus
endif


""" Give esc the same function in terminal mode as normal:
tnoremap <Esc> <C-\><C-n>


""" Remove all trailing whitespace:
noremap <silent> <leader><space> : silent! %s/\s\+$//g<CR>


""" Create bindings to move using hjkl in insert mode:
inoremap <A-h> <C-o>h
inoremap <A-j> <C-o>j
inoremap <A-k> <C-o>k
inoremap <A-l> <C-o>l


""" A command mode abbreviation to map 'h' to opening docs in a new tab.
""" type out 'help' instead of 'h' to open the docs in a regular split:
cnoreabbrev <expr> h getcmdtype() == ":" && getcmdline() == 'h' ? 'tab help' : 'h'


""" Create a quick way to open the vimrc
function! ChangeVimConf()
	if has('win32') || has('win64')
		let vimrc = fnameescape($USERPROFILE) . "\\_vimrc"
	else
		let vimrc = fnameescape($HOME) . "/.vimrc"
	endif
	execute "e! " . vimrc
endfunction
command! ChangeVimConf call ChangeVimConf()
nnoremap <silent> <leader>cvc :ChangeVimConf<CR>


""" Keybind to clear the current buffer
nnoremap <silent> <leader>bw :bwipeout<CR>


""" Source the current file if it's vimscript
if !exists("*SourceVimscript")
	function SourceVimscript()
		if (&ft == "vim")
			execute "so %"
		endif
	endfunction
	command! SourceVimscript call SourceVimscript()
	nnoremap <silent> <leader>so :SourceVimscript<CR>
endif
