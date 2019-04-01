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

" conf
hi! link confComment                        comment
hi! link confString                         string

" cpp
hi! link cppConstant                        constant
hi! link cppNumber                          number

" c
hi cCommentStart        guifg=#404040   guibg=NONE      cterm=none
hi cFormat              guifg=#800000   guibg=NONE      cterm=underline
hi cTagsDefinedName     guifg=#c000c0   guibg=NONE      cterm=none
hi! link cAnsiFunction                      functionName
hi! link cBoolean                           boolean
" TODO: Make a default group for character
hi! link cCharacter                         constant
hi! link cComment                           comment
hi! link cCommentL                          cComment
hi! link cCppString                         cString
hi! link cCustomFunc                        functionName
hi! link cDefine                            define
hi! link cInclude                           include
hi! link cIncluded                          string
hi! link cLabel                             label
hi! link cNumber                            number
" Change this, this is sizeof
hi! link cOperator                          command
hi! link cPreCondit                         preCondit
hi! link cPreCondiMatch                     cPreCondit
hi! link cRepeat                            repeat
hi! link cSpecial                           special
hi! link cStatement                         statement
hi! link cString                            string
hi! link cStructure                         structure
hi! link cTagsGlobalVariable                globalVariable
hi! link cTagsFunction                      functionName
hi! link cTagsMember                        member
hi! link cTagsType                          cType
hi! link cType                              type
hi! link cUserLabel                         cLabel

" Python
hi! link pythonBoolean                      boolean
hi! link pythonBuiltinFunc                  functionName

" NOTE: Not sure if I want to use 'cTagsDefinedName' or 'constant' as I'm
" pretty sure 'pythonBuiltIn' would be considered constants?...  But then again
" aren't constants constant values?  In C defined names are technically
" constant, no?
" NOTE: pythonNone was colored as a constant
hi! link pythonBuiltinObj                   cTagsDefinedName
hi! link pythonBuiltinType                  type
" TODO Maybe use somethingelse other than speical to differenteiate it from
" 'pythonStrForat' depending on what that group ends up being.
hi! link pythonBytesEscape                  special
hi! link pythonClass                        class
hi! link pythonComment                      comment
hi! link pythonConditional                  conditional
hi! link pythonDot                          delimiter
" NOTE: This is the word try:
hi! link pythonException                    statement
" TODO: Create a group for this
hi! link pythonExClass                      structure
hi! link pythonFunction                     functionName
hi! link pythonImport                       include
hi! link pythonNone                         constant
hi! link pythonNumber                       number

" FIXME: The 'not' in 'if not' is considered an operator..
hi! link pythonOperator                     operator
hi! link pythonRepeat                       repeat
hi! link pythonRun                          special
hi! link pythonStatement                    statement
hi! link pythonString                       string

" TODO Figure out if this should be related to string format
hi! link pythonStrFormat                    special
hi! link pythonTodo                         todo


" Makefile
hi! link makeCmdNextLine                    makeNextLine
hi! link makeCommands                       command
hi! link makeDefine                         define
hi! link makeDString                        string
hi! link makeIdent                          identifier
hi! link makeInclude                        include
hi! link makeNextLine                       special
hi! link makePreCondit                      preCondit
hi! link makeSpecial                        special
" TODO This may make sence to be something else
hi! link makeSpecTarget                     include
hi! link makeStatement                      statement
" NOTE: It is kind of a label..
hi! link makeTarget                         label

" perl
hi! link perlComment                        comment
hi! link perlConditional                    conditional
" NOTE: Despite the name, it's more like a keyword from the example that was
" given.
hi! link perlFunction                       statement
" TODO It would probably be best to use somethig different so this doesn't
" clash with strings.
hi! link perlMatch                          perlString
" TODO Might use different
hi! link perlMatchStartEnd                  special
hi! link perlNumber                         number
hi! link perlOperator                       operator
hi! link perlRepeat                         repeat
" TODO make sure this matches up with the pythonRun group
hi! link perlSharpBang                      special
hi! link perlSpecialMatch                   special
hi! link perlSpecialString                  special
hi! link perlStatementControl               statement
" FIXME This is a hard one because the example that was given was print, so
" that makes me think of functions.
" TODO Learn more about perl so more accurate choices can be made
hi! link perlStatementFiledesc              functionName
hi! link perlStatementFlow                  statement
hi! link perlStatementHash                  statement
hi! link perlStatementInclude               include
hi! link perlStatementList                  statement
hi! link perlStatementStorage               storageClass
hi! link perlString                         string
" TODO Know more about perl to see if this is something that is important that
" is of a string quote.
hi! link perlStringStartEnd                 perlString
hi! link perlSubName                        functionName
hi! link perlVarPlain                       localVariable
" TODO Might have this one of the other variable colors or of its own.
hi! link perlVarPlain2                      perlVarPlain

" sh
hi! link shCommandSubBQ                     command
hi! link shComment                          comment
hi! link shConditional                      conditional
hi! link shDerefSiple                       preProc
hi! link shDoubleQuote                      string
hi! link shNumber                           number
hi! link shOperator                         operator
hi! link shOption                           option
" FIXME I want this to be something else
hi! link shRange                            shOperator
hi! link shStatement                        statement
" TODO The previous blue that was used for preCondit, I think would match this
" adequetly.
hi! link shTestOpr                          preCondit
" TODO Possibly something else
hi! link shVarAssign                        shOperator
" TODO Does global make sence?
hi! link shVariable                         globalVariable
" TODO May make this something else
hi! link shQuote                            noise
