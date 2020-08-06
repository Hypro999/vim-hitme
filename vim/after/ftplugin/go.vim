setlocal noexpandtab
setlocal tabstop=2
setlocal shiftwidth=2
setlocal commentstring=//\ %s

" vim-go plugin configuration
let g:go_gopls_enabled=1
let g:go_auto_type_info=1
let g:go_echo_command_info=0
let g:go_template_autocreate=0
let g:go_fmt_command="goimports"
inoremap <buffer> . .<C-x><C-o>
setlocal omnifunc=go#complete#Complete
