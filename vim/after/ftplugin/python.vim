setlocal expandtab
setlocal tabstop=4
setlocal shiftwidth=4
setlocal commentstring=#\ %s

" jedi-vim plugin configuration
autocmd CursorMovedI * if pumvisible() == 0|silent! pclose|endif
autocmd InsertLeave * if pumvisible() == 0|silent! pclose|endif
