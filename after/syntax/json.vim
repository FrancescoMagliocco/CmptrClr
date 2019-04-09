" vim: ai:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('s:CmptrClr_loaded_json') && s:CmptrClr_loaded_json)
  finish | endif

let s:CmptrClr_loaded_json = get(s:, 'CmptrClr_loaded_json', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if !g:CmptrClr_use_default_hl[&filetype] | call s:SourceHlFile() | endif

hi jsonSemicolonError guifg=#800000 guibg=#F00000 cterm=bold,underline

hi! link jsonBoolean        boolean
hi! link jsonBraces         delimiter
hi! link jsonCommentError   error
hi! link jsonKeyword        statement
hi! link jsonKeywordMatch   delimiter
hi! link jsonNoise          noise
hi! link jsonNoQuotesError  error
hi! link jsonNull           preProc
hi! link jsonNumber         number
hi! link jsonQuote          special
hi! link jsonString         string

function! s:SourceHlFile()
  if g:CmptrClr_use_user_hl[&filetype]
    execute 'source' g:CmptrClr_user_hl[&filetype]
  endif
endfunction
