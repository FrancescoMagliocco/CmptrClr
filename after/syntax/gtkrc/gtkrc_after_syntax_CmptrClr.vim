" File              : gtkrc_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 10/04/2019
" Last Modified Date: 11/04/2019 21:21:50
" vim: ai:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_gtkrc') && g:CmptrClr_loaded_gtkrc)
  finish | endif

let g:CmptrClr_loaded_gtkrc = get(g:, 'CmptrClr_loaded_gtkrc', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if !g:CmptrClr_use_default_hl[&filetype] | call s:SourceHlFile() | endif

hi! link gtkrcComment       comment
hi! link gtkrcInclude       include
hi! link gtkrcNumber        number
hi! link gtkrcSettingsName  identifier
hi! link gtkrcString        string

" TODO Change this
hi! link gtkrcStyleKeyword  statement

hi! link gtkrcTop           statement

" TODO Change this
hi! link gtkrcWPathSpecial  special

function! s:SourceHlFile()
  if g:CmptrClr_use_user_hl[&filetype]
    execute 'source' g:CmptrClr_user_hl[&filetype]
  endif
endfunction

let g:CmptrClr_loaded_gtkrc = 1
