" vim: ai:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('s:CmptrClr_loaded_perl') && s:CmptrClr_loaded_perl)
  finish | endif

let s:CmptrClr_loaded_perl = get(s:, 'CmptrClr_loaded_perl', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if !g:CmptrClr_use_default_hl[&filetype] | call s:SourceHlFile() | endif

hi! link perlComment            comment
hi! link perlConditional        conditional

" XXX Despite the name, it's more like a keyword from the example that was
" given.
hi! link perlFunction           statement

" TODO It would probably be best to use somethig different so this doesn't
" clash with strings.
hi! link perlMatch              perlString

" TODO Might use different
hi! link perlMatchStartEnd      special

hi! link perlNumber             number
hi! link perlOperator           operator
hi! link perlRepeat             repeat

" TODO make sure this matches up with the pythonRun group
hi! link perlSharpBang          special

hi! link perlSpecialMatch       special
hi! link perlSpecialString      special
hi! link perlStatementControl   statement

" FIXME This is a hard one because the example that was given was print, so
" that makes me think of functions.
" TODO Learn more about perl so more accurate choices can be made
hi! link perlStatementFiledesc  functionName

hi! link perlStatementFlow      statement
hi! link perlStatementHash      statement
hi! link perlStatementInclude   include
hi! link perlStatementList      statement
hi! link perlStatementStorage   storageClass
hi! link perlString             string

" TODO Know more about perl to see if this is something that is important that
" is of a string quote.
hi! link perlStringStartEnd     perlString

hi! link perlSubName            functionName
hi! link perlVarPlain           localVariable

" TODO Might have this one of the other variable colors or of its own.
hi! link perlVarPlain2          perlVarPlain

function! s:SourceHlFile()
  if g:CmptrClr_use_user_hl[&filetype]
    execute 'source' g:CmptrClr_user_hl[&filetype]
  endif | endfunction
