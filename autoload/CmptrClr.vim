" File              : CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 17/04/2019
" Last Modified Date: 21/04/2019
" vim: ai:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr') || !g:CmptrClr_enabled | finish | endif
let g:CmptrClr_debug = get(g:, 'CmptrClr_debug', 0)

function! CmptrClr#SourceHlFile()
  if !has_key(g:CmptrClr_use_user_hl, &filetype) | return | endif
  if g:CmptrClr_use_user_hl[&filetype]
    execute 'source' g:CmptrClr_user_hl[&filetype]
  endif
endfunction

" TODO If something was changed in the main colorscheme, the colors may not
" update collorectly.
function! CmptrClr#ReloadSyn()
  execute 'let g:CmptrClr_loaded_' . &ft . '= 0'
  execute 'runtime syntax/' . &ft . '/' . &ft . '_after_syntax_CmptrClr.vim'
endfunction

function! CmptrClr#HlExists(group)
  let retv = hlexists(a:group)
  if !retv && g:CmptrClr_debug
    echohl warningMsg | echomsg a:group . ' does not exist' | echohl None
  endif

  return retv
endfunction

" If mode is not specified and termguicolors is on, what gui is set to is what
" will be returned.
" Returned is a string created from a list of what cterm is set to.  The
" returned value is in a format such that it would be approrpieate to be used
" to set the cterm of a different group.
" If more than one optional arguemnt is given, the last one is used.
function! CmptrClr#GetAttrib(group, ...)
  if !CmptrClr#HlExists(a:group) | return | endif

  " This is to stay defined in this scope.
  let retv = ['bold', 'italic', 'reverse', 'inverse', 'standout', 'underline',
        \ 'undercurl', 'strike']

  " TODO Profile this and see if there is a performance gain
  for i in retv

    " This "SHOULD" use the last optional argument.  See CmptrClr#SetColor for
    " why we are doing this.
    if synIDattr(synIDtrans(hlID(a:group)), i, a:0 ? a:000[a:0 - 1] : 'cterm')
      continue | endif
    unlet retv[index(retv, i)]
  endfor

  return join(retv, ',')
endfunction

function! CmptrClr#GetColor(group, what, ...)
  if !CmptrClr#HlExists(a:group) | return | endif

  " What a:what can be
  let whats = ['fg', 'bg']
  if index(whats, tolower(a:what)) < 0
    echohl warningMsg
    echomsg a:what . ' is not valid.  Expected ' . join(whats, ' or ')
    echohl None
    return | endif

  return synIDattr(
        \ synIDtrans(hlID(a:group)), a:what, (a:0 ? a:1 : (&tgc ? 'gui' : '')))
endfunction

function! CmptrClr#GetFG(group)
  return CmptrClr#GetColor(a:group, 'fg')
endfunction

function! CmptrClr#GetBG(group)
  return CmptrClr#GetColor(a:group, 'bg')
endfunction

" FIXME If one of the values in a:options are of a color and not a group, the
" function will return resulting in nothing being done.
function! CmptrClr#SetHl(group, options)
  if !CmptrClr#HlExists(a:group) | return | endif

  " If we change the name of the function CmptrClr#GetAttrib or
  " CmptrClr#GetColor, it will be a lot easier to change the funcrefs for these
  " 2 variables, than to change them for each func entry in opts.
  "
  " These variables have to start with a captial as they are referencing a
  " function
  let GetAttrRef  = funcref('CmptrClr#GetAttrib')
  let GetColorRef = funcref('CmptrClr#GetColor')

  " FIXME Redefine this in the outerscope to use less cpu cycles.
  let opts = {
        \ 'cterm': {
        \   'func': GetAttrRef,
        \   'what': '',
        \   'mode': 'cterm'
        \   },
        \ 'ctermfg': {
        \   'func': GetColorRef,
        \   'what': 'fg',
        \   'mode': 'cterm'
        \   },
        \ 'ctermbg': {
        \   'func': GetColorRef,
        \   'what': 'bg',
        \   'mode': 'cterm'
        \   },
        \ 'gui': {
        \   'func': GetAttrRef,
        \   'what': '',
        \   'mode': 'gui'
        \   },
        \ 'font': {
        \   'func': GetColorRef,
        \   'what': 'bg',
        \   'mode': 'cterm'
        \   },
        \ 'guifg': {
        \   'func': GetColorRef,
        \   'what': 'fg',
        \   'mode': 'gui'
        \   },
        \ 'guibg': {
        \   'func': GetColorRef,
        \   'what': 'bg',
        \   'mode': 'gui'
        \   },
        \ 'guisp': {
        \   'func': GetColorRef,
        \   'what': 'sp',
        \   'mode': 'gui'
        \   },
        \ }

  let options = {}

  for [k, v] in items(a:options)
    if !has_key(opts, k) | continue | endif
    let tmpopt = opts[k]
    let options[k] = tmpopt.func(v, tmpopt.what, tmpopt.mode)
  endfor
  
  echohl errorMsg | echoerr 'Not implemented' | echohl None
  " TODO Implement the rest of this function
endfunction
