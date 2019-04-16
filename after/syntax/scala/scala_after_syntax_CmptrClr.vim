" File              : scala_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 15/04/2019 20:45:32
" Last Modified Date: 16/04/2019 00:47:15
" vim: ai:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_scala') && g:CmptrClr_loaded_scala)
  finish | endif

let g:CmptrClr_loaded_scala = get(g:, 'CmptrClr_loaded_scala', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if !g:CmptrClr_use_default_hl[&filetype] | call s:SourceHlFile() | endif

hi! link scalaBlock               special
hi! link scalaCapitalWord         special
hi! link scalaExternal            include
hi! link scalaInstanceDeclaration special
hi! link scalaKeyword             statement
hi! link scalaKeywordModifier     attribute
hi! link scalaMultilineComment    comment
hi! link scalaNameDefinition      functionName
hi! link scalaNumber              number

" This was linked to preProc
hi! link scalaSpecial                 special
hi! link scalaSquaredBracketsBracket  delmiter

" This looks bork..
hi! link scalaTypeAnnotation      normal

hi! link scalaTypeOperator        operator

hi! link scalaTypeDeclaration     type

function! s:SourceHlFile()
  if g:CmptrClr_use_user_hl[&filetype]
    execute 'source' g:CmptrClr_user_hl[&filetype]
  endif
endfunction

let g:CmptrClr_loaded_scala = 1
