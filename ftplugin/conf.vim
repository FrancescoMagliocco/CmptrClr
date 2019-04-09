" vim: ai:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('s:CmptrClr_loaded_conf') && s:CmptrClr_loaded_conf)
  finish | endif

let s:CmptrClr_loaded_conf = get(s:, 'CmptrClr_loaded_conf', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if !g:CmptrClr_use_default_hl[&filetype] | call s:SourceHlFile() | endif

hi! link confComment  comment
hi! link confString   string

function! s:SourceHlFile()
  if g:CmptrClr_use_user_hl[&filetype]
    execute 'source' g:CmptrClr_user_hl[&filetype]
  endif | endfunction
