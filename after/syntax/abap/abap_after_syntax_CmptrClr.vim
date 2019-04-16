" File              : abap_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 15/04/2019 19:59:55
" Last Modified Date: 15/04/2019 23:16:36
" vim: ai:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_abap') && g:CmptrClr_loaded_abap)
  finish | endif

let g:CmptrClr_loaded_abap = get(g:, 'CmptrClr_loaded_abap', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if !g:CmptrClr_use_default_hl[&filetype] | call s:SourceHlFile() | endif

hi! link abapCharString       string
hi! link abapComment          comment
hi! link abapComplexStatement abapStatement

" FIXME probably wrong
hi! link abapField            globalVariable
hi! link abapNumber           number
hi! link abapSpecialTables    special
hi! link abapStatement        statement
hi! link abapStructure        structure
hi! link abapSymbolOperator   operator
hi! link abapTypes            type

function! s:SourceHlFile()
  if g:CmptrClr_use_user_hl[&filetype]
    execute 'source' g:CmptrClr_user_hl[&filetype]
  endif
endfunction

let g:CmptrClr_loaded_abap = 1
