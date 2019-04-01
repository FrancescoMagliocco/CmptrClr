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
