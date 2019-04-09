" vim: ai:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('s:CmptrClr_loaded_c') && s:CmptrClr_loaded_c)
  finish | endif

let s:CmptrClr_loaded_c = get(s:, 'CmptrClr_loaded_c', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if !g:CmptrClr_use_default_hl[&filetype] | call s:SourceHlFile() | endif

hi cCommentStart    guifg=#404040 guibg=NONE    cterm=none
hi cFormat          guifg=#800000 guibg=NONE    cterm=underline
hi cTagsDefinedName guifg=#c000c0 guibg=NONE    cterm=none

hi! link cAnsiFunction        functionName
hi! link cBoolean             boolean

" TODO Make a default group for character
hi! link cCharacter           constant

hi! link cComment             comment
hi! link cCommentL            cComment
hi! link cCppString           cString
hi! link cCustomFunc          functionName
hi! link cDefine              define
hi! link cInclude             include
hi! link cIncluded            string
hi! link cLabel               label
hi! link cNumber              number

" FIXME Change this, this is sizeof
hi! link cOperator            command

hi! link cPreCondit           preCondit
hi! link cPreCondiMatch       cPreCondit
hi! link cRepeat              repeat
hi! link cSpecial             special
hi! link cStatement           statement
hi! link cString              string
hi! link cStructure           structure
hi! link cTagsGlobalVariable  globalVariable
hi! link cTagsFunction        functionName
hi! link cTagsMember          member
hi! link cTagsType            cType
hi! link cType                type
hi! link cUserLabel           cLabel

function! s:SourceHlFile()
  if g:CmptrClr_use_user_hl[&filetype]
    execute 'source' g:CmptrClr_user_hl[&filetype]
  endif | endfunction
