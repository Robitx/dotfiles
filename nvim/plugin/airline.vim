if has('mac')
  let g:airline_theme='onedark'
else
  let g:airline_theme='ayu_mirage'
endif
let g:airline_powerline_fonts = 1
let g:airline_exclude_preview = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#vista#enabled = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_skip_empty_sections = 1
