" vim: ai:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('s:CmptrClr_loaded_sh') && s:CmptrClr_loaded_sh)
  finish | endif

let s:CmptrClr_loaded_sh = get(s:, 'CmptrClr_loaded_sh', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if !g:CmptrClr_use_default_hl[&filetype] | call s:SourceHlFile() | endif

hi! link shCommandSubBQ command
hi! link shComment      comment
hi! link shConditional  conditional
hi! link shDerefSiple   preProc
hi! link shDoubleQuote  string
hi! link shNumber       number
hi! link shOperator     operator
hi! link shOption       option

" FIXME I want this to be something else
hi! link shRange        shOperator

hi! link shStatement    statement

" TODO The previous blue that was used for preCondit, I think would match this
" adequetly.
hi! link shTestOpr      preCondit

" TODO Possibly something else
hi! link shVarAssign    shOperator

" TODO Does global make sence?
hi! link shVariable     globalVariable

" TODO May make this something else
hi! link shQuote        noise

function! s:SourceHlFile()
  if g:CmptrClr_use_user_hl[&filetype]
    execute 'source' g:CmptrClr_user_hl[&filetype]
  endif | endfunction
