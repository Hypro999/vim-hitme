""" Declutter the window.
set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar


""" Keybindings for toggle the menu bar, toolbar, and scrollbar.
nnoremap <silent> <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
nnoremap <silent> <C-F2> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
nnoremap <silent> <C-F3> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>


""" Set the font and window size.
" set lines=30 columns=80
" set guifont=Consolas:h14:cANSI:qDRAFT
