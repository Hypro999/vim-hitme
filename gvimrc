""" Declutter the window.
set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar


""" Set the font and window size.
set lines=37 columns=88
set guifont=Space_Mono_for_Powerline:h10:cANSI:qDRAFT


""" Keybindings for toggle the menu bar, toolbar, and scrollbar.
nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
nnoremap <C-F2> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
nnoremap <C-F3> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>

