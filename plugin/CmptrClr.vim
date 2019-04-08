if (exists('g:loaded_CmptrClr')
            \ || (exists('g:CmptrClr_enabled') && !g:CmptrClr_enabled))
            \ | finish | endif

if !exists('g:CmptrClr_enabled') | let g:CmptrClr_enabled = 1 | endif
if !exists('g:CmptrClr_lang_dir') | let g:CmptrClr_lang_dir =
            \ expand('%:p:h') . '/CmptrClr/languages/'
            \ | endif

if &cp
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
