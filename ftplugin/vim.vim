" vim: ai:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('s:CmptrClr_loaded_vim') && s:CmptrClr_loaded_vim)
  finish | endif

let s:CmptrClr_loaded_vim = get(s:, 'CmptrClr_loaded_vim', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if !g:CmptrClr_use_default_hl[&filetype] | call s:SourceHlFile() | endif

hi! link vimAugroupKey    vimCommand
hi! link vimAutoCmd       vimCommand
hi! link vimAutoEvent     event
hi! link vimBracket       vimSep
hi! link vimCommand       command
hi! link vimComment       comment
hi! link vimCommentString vimString
hi! link vimCommentTitle  title

" Might use specialChar
hi! link vimContinue      special

hi! link vimEchoHL        vimCommand
hi! link vimFBVar         vimFuncVar
hi! link vimFTCmd         vimCommand
hi! link vimFTOption      vimOption

" May change this
hi! link vimFuncKey       vimCommand

hi! link vimFuncName      functionName
hi! link vimFuncSID       constant
hi! link vimFunction      functionName
hi! link vimFuncVar       functionVariable
hi! link vimGroup         constant
hi! link vimHighlight     vimCommand
hi! link vimIsCommand     vimCommand
hi! link vimLet           vimCommand
hi! link vimLineComment   vimComment
hi! link vimMap           vimCommand
hi! link vimMapLhs        vimMapRhs
hi! link vimMapModKey     constant
hi! link vimMapRhs        vimUserFunc
hi! link vimNotFunc       conditional
hi! link vimNotation      notation
hi! link vimNumber        number
hi! link vimOper          operator
hi! link vimOperParen     globalVariable
hi! link vimOption        option
hi! link vimParenSep      vimSep
hi! link vimSep           delimiter
hi! link vimSetSep        vimSep
hi! link vimString        string
hi! link vimSyntax        vimCommand
hi! link vimUserAttrbKey  attribute
hi! link vimUserCmd       vimSep

" Might have this be its own group
hi! link vimUserCommand   vimCommand

hi! link vimUserFunc      functionName
hi! link vimVar           globalVariable

function! s:SourceHlFile()
  if g:CmptrClr_use_user_hl[&filetype]
    execute 'source' g:CmptrClr_user_hl[&filetype]
  endif
endfunction
