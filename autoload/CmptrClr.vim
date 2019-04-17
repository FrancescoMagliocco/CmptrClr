" File              : CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 17/04/2019 15:36:46
" Last Modified Date: 17/04/2019 20:34:25
" vim: ai:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr') || !g:CmptrClr_enabled | finish | endif

function! CmptrClr#SourceHlFile()
  if !has_key(g:CmptrClr_use_user_hl, &filetype) | return | endif
  if g:CmptrClr_use_user_hl[&filetype]
    execute 'source' g:CmptrClr_user_hl[&filetype]
  endif
endfunction

" TODO If something was changed in the main colorscheme, the colors may not
" update collorectly.
" vint: -ProhibitAbbreviationOption
function! CmptrClr#ReloadSyn()
  execute 'let g:CmptrClr_loaded_' . &ft . '= 0'
  execute 'runtime syntax/' . &ft . '/' . &ft . '_after_syntax_CmptrClr.vim'
endfunction
