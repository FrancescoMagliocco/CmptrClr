" File              : dosini_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 15/04/2019 16:36:05
" Last Modified Date: 15/04/2019 23:22:05
" vim: ai:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_ini') && g:CmptrClr_loaded_ini)
  finish | endif

let g:CmptrClr_loaded_ini = get(g:, 'CmptrClr_loaded_ini', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if !g:CmptrClr_use_default_hl[&filetype] | call s:SourceHlFile() | endif

hi! link dosiniHeader   special
hi! link dosiniLabel    label
hi! link dosiniNumber   number

function! s:SourceHlFile()
  if g:CmptrClr_use_user_hl[&filetype]
    execute 'source' g:CmptrClr_user_hl[&filetype]
  endif
endfunction

let g:CmptrClr_loaded_ini = 1
