" File              : dosbatch_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 10/04/2019
" Last Modified Date: 12/04/2019 22:08:15
" vim: ai:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_dosbatch') && g:CmptrClr_loaded_dosbatch)
  finish | endif

let g:CmptrClr_loaded_dosbatch = get(g:, 'CmptrClr_loaded_dosbatch', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if !g:CmptrClr_use_default_hl[&filetype] | call s:SourceHlFile() | endif

hi! link dosbatchArgument     argument
hi! link dosbatchEchoOperator operator
hi! link dosbatchImplicit     identifier
hi! link dosbatchSwitch       special

function! s:SourceHlFile()
  if g:CmptrClr_use_user_hl[&filetype]
    execute 'source' g:CmptrClr_user_hl[&filetype]
  endif
endfunction

let g:CmptrClr_loaded_dosbatch = 1
