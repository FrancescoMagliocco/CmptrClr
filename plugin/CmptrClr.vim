" Version 8 and higher has the option 'termguicolors'
if v:version < 800
    echohl error | echomsg
                \ "This plugin requires Vim to be of version '8' or higher" .
                \ '  Current version: ' . v:version
                \ | echohl None
    finish
endif

if (exists('g:loaded_CmptrClr')
            \ || (exists('g:CmptrClr_enabled') && !g:CmptrClr_enabled))
            \ | finish | endif

" TODO When commiting, be sure to delete this as this is part of another
" feature that is being worked on.  First commit the comments and new version
" check, then add this again.
let g:CmptrClr_enabled  = get(g:, 'CmptrClr_enabled', 1)

let g:CmptrClr_lang_dir = get(
            \ g:,
            \ 'CmptrClr_lang_dir',
            \ expand('%:p:h') . '/CmptrClr/languages/')

let g:CmptrClr_use_default_hl = get(g:, 'CmptrClr_use_default_hl', {})

" TODO Create a variable for each language.  I have tested this using 'execute'
" and it does work.  The only problem is that I'm not able to figure out how I
" could have the variable itself be the same as what it would be in the dict.
" Yes I can use the variable in the dict (I think), but what if the dict is
" modified, leaving the variable unmodified?
"
" NOTE: These languages are currently supported by default
let s:CmptrClr_use_default_hl = {
            \ 'c'       : 1,
            \ 'conf'    : 1,
            \ 'cpp'     : 1,
            \ 'css'     : 1,
            \ 'html'    : 1,
            \ 'json'    : 1,
            \ 'make'    : 1,
            \ 'perl'    : 1,
            \ 'python'  : 1,
            \ 'sh'      : 1,
            \ 'vim'     : 1,
            \ 'xml'     : 1,
            \ 'yaml'    : 1,
            \ }

" This make sure that the default kes are present in the dictinary.
for [k, v] in items(s:CmptrClr_use_default_hl)
    let g:CmptrClr_use_default_hl[k] = get(g:CmptrClr_use_default_hl, k, v)
endfor

let g:CmptrClr_use_user_hl = get(g:, 'CmptrClr_use_user_hl', {})

let g:CmptrClr_user_hl = get(g:, 'CmptrClr_user_hl', {})
if !empty(g:CmptrClr_user_hl) | call s:ParseHlDict() | endif

" TODO Only supports specifiying one file for each languagee.  
function! s:ParseHlDict()
    for [k, v] in items(g:CmptrClr_user_hl)
        if !filereadable(v)
            echohl warningMsg | echomsg v . ' does not exists.' | echohl None
            " Removing instead of updating to 0 to save space in memory.
            unlet g:CmptrClr_user_hl[k]
            continue
        endif

        " TODO Maybe implement this in with the filereadable
        g:CmptrClr_use_user_hl[k] = 1
    endfor
endfunction

" TODO I want to implement the option to specify directories for user created
" highlight groups.  They will be sourced after the main highlight group files
" so it will override the defaults.

" TODO I want to implement autocmds so that only the languages that have been
" opened, have their corresponding highlight groups files sourced.  This may
" save a little bit of memory, and also be less cpu intensive.

if &compatible
    echohl warningMsg | echomsg
                \ "This plugin requires 'nocompatible' to be set."
                \ | echohl None
    finish
endif

if !has('termguicolors')
    echohl error | echomsg
                \ "This plugin requires the feature 'termguicolors'."
                \ | echohl None
    finish
endif

if !(&termguicolors)
    echohl error | echomsg
                \ "This plugin requires 'termguicolors' to be set."
                \ | echohl None
    finish
endif

let g:loaded_CmptrClr   = 1
