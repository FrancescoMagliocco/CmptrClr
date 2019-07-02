" File              : CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 17/04/2019
" Last Modified Date: 29/04/2019
" vim: si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

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

finish

" Expects a:group to be of a string
function! CmptrClr#HlExists(group)
  if assert_equal(v:t_string, type(a:group))
    echohl warningMsg | echomsg v:errors[-1] | echohl None
    return
  endif

  let retv = hlexists(a:group)

  if !retv && g:CmptrClr_debug
    echohl warningMsg | echomsg a:group . ' does not exist' | echohl None
  endif

  return retv
endfunction

" If mode is not specified and termguicolors is on, what gui is set to is what
" will be returned.  To get around this, if no optional argument is given, it
" will default to 'cterm'
"
" TODO If no optional argument is given and termguicolors is on, have the mode
" default to cterm as odds are if termguicolors is on, you're in the terminal.
" If it is not on, 'the attributes for the currently active highlighting are
" used (GUI, cterm or term).'  (Info in the single quotes is quoted as is from
" 'synIDattr')
"
" Returned is a string created from a list of what cterm is set to.  The
" returned value is in a format such that it would be approrpieate to be used
" to set the cterm of a different group.
function! CmptrClr#GetAttrib(group, ...)
  " We have to check in this order for the main reason being there is a group
  " called 'none', and if we want to set the attribute for a group to be
  " 'none', we wont be able to do so.
  " TODO Should probably check if a:group is a list or not.
  let retv = CmptrClr#IsAttrib(a:group) ? a:group : CmptrClr#HlExists(a:group)
  
  " if retv is 0, a:group does not exists as a highlight group, and a:group is
  " not a valid attribute.
  " If retv is not 0 and the type of retv is a number, this means that a:group
  " is a valid attribute and it can safely be returned.
  if type(retv) == v:t_string | return retv
  elseif !retv | return 'none' | endif

  " We could have used filter to set this in the trenary, but I feel like it
  " would be more efficient this way.
  " TODO Maybe move to outer scope, but make sure to copy instead of modigying
  " directly.
  let retv = ['bold', 'italic', 'reverse', 'inverse', 'standout', 'underline',
        \ 'undercurl', 'strike']

  " TODO Profile this and see if there is a performance gain
  for i in retv
    if synIDattr(synIDtrans(hlID(a:group)), i, a:0 ? a:1 : 'cterm')
      continue | endif
    unlet retv[index(retv, i)]
  endfor

  return empty(retv) ? 'none' : join(retv, ',')
endfunction

function! CmptrClr#GetColor(group, what, ...)
  if CmptrClr#IsColor(a:group) | return a:group | endif
  if !CmptrClr#HlExists(a:group) | return 'NONE' | endif

  " What a:what can be
  let whats = ['fg', 'bg']
  if index(whats, tolower(a:what)) < 0
    echohl warningMsg
    echomsg a:what . ' is not valid.  Expected ' . join(whats, ' or ')
    echohl None
    return | endif

  let retv = synIDattr(
        \ synIDtrans(hlID(a:group)), a:what, (a:0 ? a:1 : (&tgc ? 'gui' : '')))

  return (empty(retv) ? 'NONE' : retv)
endfunction

function! CmptrClr#GetFG(group)
  return CmptrClr#GetColor(a:group, 'fg')
endfunction

function! CmptrClr#GetBG(group)
  return CmptrClr#GetColor(a:group, 'bg')
endfunction

" FIXME If a:string is v:t_number and > 255, 1 will still be returned.
function! CmptrClr#IsColor(string)
  return a:string =~
        \ '^\(#\x\{6\}\|\d\{1,3\}'
        \ . '\|Black\|White\|NONE\|\(\(Dark\|Light\)\?'
        \ . '\(Blue\|Green\|Cyan\|Red\|Magenta\|Yellow\|Gray\|Grey\)\)\)$'
endfunction

" TODO I don't like how I am going about this.  I don't like how the return
" statements are.  I originally wanted to convert a list to a string (If a list
" was specified), and match like how I am below, but check for precieding
" commas, but I coudn't figure out.  I'm thinking maybe if I include in the
" match an optional comma.  I think that would be done like \#[,] or something
" along the lines of that.  The only problem is how would I have it not stop
" after the first match and continue checking the rest?
function! CmptrClr#IsAttrib(string)
  " We can't use filter() here becase we are returning 0 even if just one value
  " in a:string is not a valid attribute.
  for i in (type(a:string) == v:t_string ? split(a:string, ',') : a:string)
    if i =~# '^\(bold\|underline\|undercurl\|strikethrough\|reverse\|inverse'
          \ . '\|italic\|standout\|nocombine\|none\)$'
      continue
    endif

    return 0
  endfor

  return 1
endfunction

" XXX Make sure these can't be changed outside of the script scope.
" XXX Is there a way to make things readonly?
let s:GetAttrRef  = funcref('CmptrClr#GetAttrib')
let s:GetColorRef = funcref('CmptrClr#GetColor')
let s:opts = {
      \ 'cterm':    { _ -> s:GetAttrRef(_, 'cterm') },
      \ 'ctermfg':  { _ -> s:GetColorRef(_, 'fg', 'cterm') },
      \ 'ctermbg':  { _ -> s:GetColorRef(_, 'bg', 'cterm') },
      \ 'gui':      { _ -> s:GetAttrRef(_, 'gui') },
      \ 'font':     { _ -> s:execute("throw 'Not Implemented'") },
      \ 'guifg':    { _ -> s:GetColorRef(_, 'fg', 'gui') },
      \ 'guibg':    { _ -> s:GetColorRef(_, 'bg', 'gui') },
      \ 'guisp':    { _ -> s:GetAttrRef(_, 'sp', 'gui') },
      \ }

" If optionarl arguments are specified, and if a:options is not a v:t_dict,
" a:otpions is used as guifg, a:1 is guibg and a:2 is cterm.  All other
" arguments will be ignored.
function! CmptrClr#SetHl(group, options, ...)
  if !CmptrClr#HlExists(a:group) | return | endif

  " TODO Mayne place this in the outerscpe, then copy it.  Don't just directly
  " modify it, or the plugin wont work as expected.
  let options = {
        \ 'cterm':    '',
        \ 'ctermfg':  '',
        \ 'ctermbg':  '',
        \ 'gui':      '',
        \ 'font':     '',
        \ 'guifg':    '',
        \ 'guibg':    '',
        \ 'guisp':    ''
        \ }

  " We only use this result if a:options is not a v:t_dict, we extend a:options
  " with a:000.  a:options can't be modified, so we have to assign the result
  " to a variable.  No error is thrown if a:000 is empty.
  "
  " We If there are more more than 3 optionarl arguments given, we filter them
  " out.
  "
  " We can't do this and map/filter everything at once, because we may need the
  " length of what opts would be if a:options is not a v:t_dict
  let opts = filter(extend([a:options], a:000), 'v:key < 3')

  " If a:options is a v:t_dict, even if there are optional arguments specified,
  " we will ignore them.  We know that a:options has key-val that we need.
  "
  " If a:options is not a v:t_dict, we use the result of the previous filter when
  " defining opts.  We then filter the dictionary you see below.  We only accept
  " the key that's value is < len(opts) as we only have len(opts) - 1 arguments
  " passed to CmptrClr#SetHl()
  let opts = type(a:options) == v:t_dict
        \ ? a:options
        \ : map(
        \     filter(
        \       { 'guifg': 0, 'guibg': 1, 'cterm': 2 },
        \       'v:val < len(opts)'),
        \     'opts[v:val]')

  let options = map(
        \ filter(options, 'has_key(opts, v:key)'),
        \ { k -> s:opts[k](opts[k]) })

  for [k, v] in items(options)
    execute 'hi!' a:group k . '=' . v
  endfor
endfunction
