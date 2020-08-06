" Enable pathogen
execute pathogen#infect()


" Enable syntax support
syntax enable
filetype plugin indent on


" Core configuration
set nu
set relativenumber
set cursorline

set expandtab

set shortmess=Ic

set mouse=a
set whichwrap=<,>,[,]
set clipboard=unnamedplus

set splitright
set splitbelow


" Colorscheme
colorscheme one
set termguicolors
set background=dark
let g:airline_theme='one'


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
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#whitespace#checks=[]
let g:airline#extensions#tabline#formatter='jsformatter'
