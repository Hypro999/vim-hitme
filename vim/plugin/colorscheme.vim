function ChangeColorSchemeDark()
        set termguicolors
        set background=dark
        let g:airline_theme='one'
        colorscheme one
        :AirlineRefresh
endfunction
com ChangeColorSchemeDark call ChangeColorSchemeDark()
nnoremap <leader>ccsd :call ChangeColorSchemeDark()<CR>

function ChangeColorSchemeLight()
        set notermguicolors
        set background=light
        let g:solarized_visibility = "high"
        let g:solarized_contrast = "high"
        let g:solarized_termcolors = 256
        colorscheme solarized
        :AirlineRefresh
endfunction
com ChangeColorSchemeLight call ChangeColorSchemeLight()
nnoremap <leader>ccsl :call ChangeColorSchemeLight()<CR>
