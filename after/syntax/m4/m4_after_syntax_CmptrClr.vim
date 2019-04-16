" File              : m4_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 15/04/2019 21:03:18
" Last Modified Date: 16/04/2019 00:24:32
" vim: ai:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_m4') && g:CmptrClr_loaded_m4)
  finish | endif

let g:CmptrClr_loaded_m4 = get(g:, 'CmptrClr_loaded_m4', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if !g:CmptrClr_use_default_hl[&filetype] | call s:SourceHlFile() | endif

hi! link m4Command  command
hi! link m4PreProc  preProc

function! s:SourceHlFile()
  if g:CmptrClr_use_user_hl[&filetype]
    execute 'source' g:CmptrClr_user_hl[&filetype]
  endif
endfunction

let g:CmptrClr_loaded_m4 = 1
