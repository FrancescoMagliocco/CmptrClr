hi clear Normal
set bg&

hi clear
if exists("syntax_on")
    syn reset
endif
" TODO Create a highlight group for exceptions.  By default the
" 'pythonExClass' group is linked to 'structure' which is orange.  So possibly
" use some type of orange.
" TODO Use a different color for 'statement'.  The current blue is to hard to
" see.
"
" NOTE: The underlinen in title is a bit distracting.
" NOTE: The colon is only needed for title in comments.

"08
"10
"18
"20
"28
"30
"38
"40
"48
"50
"58
"60
"68
"70
"78
"80
"88
"90
"98
"A0
"A8
"B0
"B8
"C0
"C8
"D0
"D8
"E0
"E8
"F0
"F8
let g:colors_name = "cmptrclr"

hi argument             guifg=#8000A8   guibg=NONE      cterm=none
hi attribute            guifg=#00B0F0   guibg=NONE      cterm=none
hi class                guifg=#00F800   guibg=NONE      cterm=none
hi conditional          guifg=#8000A8   guibg=NONE      cterm=none
hi comment              guifg=#505050   guibg=NONE      cterm=none
hi command              guifg=#0080F8   guibg=NONE      cterm=none
hi constant             guifg=#F8D000   guibg=NONE      cterm=none
" FIXME I feel like a dark purpilsh, redish would be better suited for this.
" The purplish color is used too much elsewhere.  I believe I have used a good
" color in the dev script.
hi define               guifg=#800080   guibg=NONE      cterm=none
hi delimiter            guifg=#A80000   guibg=NONE      cterm=bold
hi error                guifg=#800000   guibg=#F00000   cterm=none
hi event                guifg=#00F800   guibg=NONE      cterm=none
hi functionName         guifg=#008048   guibg=NONE      cterm=none
hi functionVariable     guifg=#F8F800   guibg=NONE      cterm=none
hi globalVariable       guifg=#00F8F8   guibg=NONE      cterm=none
hi identifier           guifg=#008000   guibg=NONE      cterm=none
hi include              guifg=#e800a0   guibg=NONE      cterm=none
hi label                guifg=#a88000   guibg=NONE      cterm=none
hi localVariable        guifg=#F8F800   guibg=NONE      cterm=none
hi member               guifg=#F8B800   guibg=NONE      cterm=none
" This is the same as operator
hi noise                guifg=#F8F8F8   guibg=NONE      cterm=bold
hi normal               guifg=#E8E8E8   guibg=#000000   cterm=none
hi notation             guifg=#F8A800   guibg=NONE      cterm=none
hi number               guifg=#F80000   guibg=NONE      cterm=none
" This is the same as noise
hi operator             guifg=#F8F8F8   guibg=NONE      cterm=bold
hi option               guifg=#A80080   guibg=NONE      cterm=none
" TODO I'm starting to like the blue that I had previously.  It would match
" other places that this is used for, and it would help distinguish from
" regular conditionals.
hi preCondit            guifg=#8000c0   guibg=NONE      cterm=none
"hi preCondit            guifg=#004868   guibg=NONE      cterm=none
hi preProc              guifg=#F800F8   guibg=NONE      cterm=none
hi repeat               guifg=#8060A8   guibg=NONE      cterm=none
hi special              guifg=#800000   guibg=NONE      cterm=none
hi specialChar          guifg=#800000   guibg=NONE      cterm=bold
hi statement            guifg=#0000F8   guibg=NONE      cterm=none
hi string               guifg=#A048A0   guibg=NONE      cterm=none
hi structure            guifg=#f88000   guibg=NONE      cterm=none
hi title                guifg=#00F800   guibg=NONE      cterm=underline
hi todo                 guifg=#F84800   guibg=NONE      cterm=none
hi type                 guifg=#F86800   guibg=NONE      cterm=none
hi underlined           guifg=#0080F8   guibg=NONE      cterm=underline

hi cursorLine           guifg=NONE      guibg=#181818   cterm=none
hi cursorColumn         guifg=NONE      guibg=#181818   cterm=none
hi colorColumn          guifg=NONE      guibg=#202020   cterm=none
hi lineNR               guifg=#F80000   guibg=#202020   cterm=none
hi vertSplit            guifg=#000000   guibg=#202020   cterm=none
hi folded               guifg=#505050   guibg=#202020   cterm=none

hi signColumn           guifg=NONE      guibg=#000000   cterm=none

hi! link tagName                            notation

" Make a color for this
hi! link storageClass                       type

" Linking to cTagsDefined name as that's what c uses.
hi! link boolean                            cTagsDefinedName

" Think of a group this could be part of?
