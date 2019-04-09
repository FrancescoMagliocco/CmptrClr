" vim: ai:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('s:CmptrClr_loaded_make') && s:CmptrClr_loaded_make)
  finish | endif

let s:CmptrClr_loaded_make = get(s:, 'CmptrClr_loaded_make', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if !g:CmptrClr_use_default_hl[&filetype] | call s:SourceHlFile() | endif

hi! link makeCmdNextLine  makeNextLine
hi! link makeCommands     command
hi! link makeDefine       define
hi! link makeDString      string
hi! link makeIdent        identifier
hi! link makeInclude      include
hi! link makeNextLine     special
hi! link makePreCondit    preCondit
hi! link makeSpecial      special

" TODO This may make sence to be something else
hi! link makeSpecTarget   include

hi! link makeStatement    statement

" XXX It is kind of a label..
hi! link makeTarget       label

function! s:SourceHlFile()
  if g:CmptrClr_use_user_hl[&filetype]
    execute 'source' g:CmptrClr_user_hl[&filetype]
  endif | endfunction
