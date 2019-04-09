" vim: ai:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('s:CmptrClr_loaded_xml') && s:CmptrClr_loaded_xml)
  finish | endif

let s:CmptrClr_loaded_xml = get(s:, 'CmptrClr_loaded_xml', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if !g:CmptrClr_use_default_hl[&filetype] | call s:SourceHlFile() | endif

hi! link xmlAttrib      type
hi! link xmlAttribPunct delimiter
hi! link xmlEqual       noise
hi! link xmlString      string
hi! link xmlTag         delimiter
hi! link xmlTagName     tagName

function! s:SourceHlFile()
  if g:CmptrClr_use_user_hl[&filetype]
    execute 'source' g:CmptrClr_user_hl[&filetype]
  endif
endfunction
