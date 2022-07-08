function! ToggleConcealLevel() abort
  if &conceallevel == 0
    setlocal conceallevel=1
  elseif &conceallevel == 1
    setlocal conceallevel=2
  elseif &conceallevel == 2
    setlocal conceallevel=0
  endif
  echo "Conceal level" &conceallevel
endfunction

nnoremap <silent><Leader>tc :call ToggleConcealLevel()<CR>

if has('mac')
  " Open Dictionary.app on mac systems
  function! OpenDictionary(...) abort
    let word = ''

    if a:1 !=# ''
      let word = a:1
    else
      let word = shellescape(expand('<cword>'))
    endif

    call system("open dict://" . word)
  endfunction
  command! -nargs=? Dict call OpenDictionary(<q-args>)
endif
