        " Important!!
        if has('termguicolors')
          set termguicolors
        endif
        " The configuration options should be placed before `colorscheme edge`.
        let g:edge_style = 'neon'
        let g:edge_enable_italic = 1
        let g:edge_disable_italic_comment = 1
	"To use transparent background, set this option to `1`.
        let g:edge_transparent_background = 1
        let g:edge_show_eob = 0

        colorscheme edge

	let g:airline_theme = 'edge'
	let g:lightline = {'colorscheme' : 'edge'}


