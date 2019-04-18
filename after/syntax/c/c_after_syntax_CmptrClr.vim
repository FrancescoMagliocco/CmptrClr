" File              : c_after_syntax_CmptrClr.vim
" Author            : Francesco Magliocco
" Date              : 01/04/2019
" Last Modified Date: 17/04/2019
" vim: ai:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=vim:norl

if !exists('g:loaded_CmptrClr')
      \ || !g:CmptrClr_enabled
      \ || (exists('g:CmptrClr_loaded_c') && g:CmptrClr_loaded_c)
  finish | endif

let g:CmptrClr_loaded_c = get(g:, 'CmptrClr_loaded_c', 1)

" XXX WARNING If the the current filetype does not exist in the dict, an error
" will be thrown.
if g:CmptrClr_use_default_hl[&filetype]
  hi cCommentStart    guifg=#404040 guibg=NONE    cterm=none

  hi! link cAnsiFunction        functionName
  hi! link cBoolean             boolean

  hi! link cCharacter           character

  hi! link cComment             comment
  hi! link cCommentL            cComment
  hi! link cCppString           cString

  " TODO maybe make a group for this..  This is words like public and private..
  " I'm assuming.  The example was on the word public in a cpp (cc) file.
  hi! link cCustomAccessKey     attribute

  " FIXME This was first seen in a cpp (cc) file.  The way this is highlighed,
  " does not look correct at all.
  hi! link cCustomAngleBrackets special

  " This is '<<' in a cpp (cc) file
  hi! link cCustomBrack         delimiter

  hi! link cCustomClass         class
  hi! link cCustomClassName     cCustomClass
  hi! link cCustomDot           delimiter
  hi! link cCustomFunc          functionName

  " TODO So this is actually a member inside of a strcuture, would it be better
  " to make some type of color for a variable that is inside of the scope of the
  " strcuture?
  " FIXME Reword...
  hi! link cCustomMemVar        member

  hi! link cCustomPtr           delimiter

  " This is the '::' that separate a namespace?.. in cpp?
  hi! link cCustomScope         delimiter

  " FIXME The reason why I'm using variable, is  because I feel like it should be
  " some type of light blue, I just don't want it to be this blue, I want it to
  " be of its own.  So I need to come back and fix this.
  " this is lilke static_cast in cpp
  hi! link cCustomTemplateFunc  variable

  hi! link cDefine              define
  hi! link cFormat              format
  hi! link cInclude             include
  hi! link cIncluded            string
  hi! link cLabel               label
  hi! link cNumber              number

  " FIXME Change this, this is sizeof
  hi! link cOperator            command

  hi! link cPreCondit           preCondit
  hi! link cPreCondiMatch       cPreCondit
  hi! link cRepeat              repeat
  hi! link cSpecial             special
  hi! link cStatement           statement
  hi! link cStorageClass        storageClass
  hi! link cString              string
  hi! link cStructure           structure
  hi! link cType                type
  hi! link cUserLabel           cLabel
endif

call CmptrClr#SourceHlFile()

let g:CmptrClr_loaded_c = 1
