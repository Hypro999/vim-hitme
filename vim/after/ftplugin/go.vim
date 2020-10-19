setlocal commentstring=//\ %s

" vim-go plugin configuration
let g:go_gopls_enabled=1
let g:go_auto_type_info=1
let g:go_echo_command_info=0
let g:go_template_autocreate=0
let g:go_fmt_command="goimports"
inoremap <buffer> . .<C-x><C-o><C-P>
setlocal omnifunc=go#complete#Complete
nnoremap <leader>ol :GoDecls<CR>

" Add extra keybindings to try and mirror jedi-vim
imap <C-Space> <C-x><C-o>
imap <C-@> <C-Space>
nnoremap <leader>d :GoDef<CR>
nnoremap <leader>r :GoRename<CR>
nnoremap <leader>s :GoImplements<CR>
nnoremap <K> :GoDoc<CR>
nnoremap <leader>n :GoReferrers<CR>
