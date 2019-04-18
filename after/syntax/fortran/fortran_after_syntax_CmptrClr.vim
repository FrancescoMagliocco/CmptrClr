" File              : fortran_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 15/04/2019
" Last Modified Date: 17/04/2019
" vim: ai:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_fortran') && g:CmptrClr_loaded_fortran)
  finish | endif

let g:CmptrClr_loaded_fortran = get(g:, 'CmptrClr_loaded_fortran', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if g:CmptrClr_use_default_hl[&filetype]
  hi! link fortranComment       comment
  hi! link fortranContinueMark  special
  hi! link fortranNumber        number
  hi! link fortranOperator      operator
  hi! link fortranUnitHeader    preCondit
  hi! link fortranStringR       string
  hi! link fortranStorageClass  storageClass
  hi! link fortranStructure     strucutre
  hi! link fortranTrype         type
endif

call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_fortran = 1
