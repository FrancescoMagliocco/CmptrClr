# CHANGELOG

#### 797704
##### Added
- initial commit

#### 4e30e25
##### Changed
- Copied over initial color scheme

#### 0f6d47c
##### Added
- Created initial plugin
- Added checks for:

#### 60a53e4
##### Changed
- Moved all highlight groups for filetype Vim into its own dedicated file.

#### 71a4e19
##### Changed
- Moved all highlight groups for filetype css into its own dedicated file.

#### 57bca12
##### Changed
- Moved all highlight groups for filetype html into its own dedicated file.

#### cb79523
##### Changed
- Moved all highlight groups for filetype xml into its own dedicated file.

#### 60dbf0b
##### Changed
- Moved all highlight groups for filetype json into its own dedicated file.

#### 5a92bd4
##### Changed
- Moved all highlight groups for filetype yaml into its own dedicated file.

#### fc79847
##### Changed
- Moved all highlight groups for filetype conf into its own dedicated file.

#### b5781c3
##### Changed
- Moved all highlight groups for filetype cpp into its own dedicated file.

#### 72c53e8
##### Changed
- Moved all highlight groups for filetype c into its own dedicated file.

#### e5a2406
##### Changed
- Moved all highlight groups for filetype python into its own dedicated file.

#### 70a8343
##### Changed
- Moved all highlight groups for filetype makefile into its own dedicated file.

#### b45dd39
##### Changed
- Moved all highlight groups for filetype perl into its own dedicated file.

#### 0540538
##### Changed
- Moved all highlight groups for filetype sh into its own dedicated file.

#### d9bc36a
##### Added
- Added checks

#### 104be03
##### Added
- Added a new variable `g:CmptrClr_lang_dir`
##### Removed
- Removed comment

#### d6f1f75
##### Added
- Added checks
- Added new variables:
  - `s:CmptrClr_loaded_vim`
  - `s:CmptrClr_use_default_hl`
  - `g:CmptrClr_user_hl`
  - `g:CmptrClr_use_user_hl`
- Added new functions:
  - `s:SourceHlFile()`
  - `s:ParseHlDict()`
- Added some comments
- Added some TODO's
##### Changed
- Changed how all variables are set by default to use `get()`

#### ce4d393
##### Fixed
- Fixed a check

#### 6fa8c5d
##### Changed
- Using single quotes, rather than double quotes

#### 4fc18e2
##### Removed
- Removed checks

#### 94550a0
##### Removed
- Removed a comment

#### 1a34382
##### Removed
- Removed variable `g:CmptrClr_lang_dir`

#### 0c51e6b
##### Added
- Added `conceal` highlight group

##### Changed
- Changed `guibg` of highlight group `normal` to `NONE` from `#000000`
    commit says use single quotes, but don't see a change

##### Removed
- Removed blank line

#### 78a7108
##### Changed
- Rearranged order of checks

#### a03f53c
##### Removed
- Deleted all language files

#### 09ef9bd
##### Changed
- Reformatted code a bit

#### a832c78
##### Added
- Added initial support for `yaml`

#### 9d34647
##### Added
- Added initial support for `xml`

#### 5d4386e
##### Added
- Added initial support for `sh`

#### be6f6bc
##### Added
- Added initial support for `python`

#### 7571b00
##### Added
- Added initial support for `perl`

#### fde82a6
##### Added
- Added initial support for `make`

#### 0490ad5
##### Added
- Added initial support for `json`

#### 6d3c521
##### Added
- Added initial support for `html`

#### f244ecb
##### Added
- Added initial support for `css`

#### 78b7cb1
##### Added
- Added initial support for `cpp`

#### 5594b0e
##### Added
- Added initial support for `conf`

#### 4df4200
##### Added
- Added initial support for `c`

#### dec8d1b
##### Added
<!-- I'm not sure if I want this bold or not -->
- Added **Modeline**
##### Changed
- Changed some notes
- Reformatted code

#### 9c8d9d8
##### Added
<!-- I'm not sure if I want this bold or not -->
- Added **Modeline**
##### Changed
- Changed some notes
- Reformatted code

#### 8a6a3f4
##### Fixed
- Fixed missing `endfunction`

#### 3522051
##### Removed
- Removed *underline* attribute from highlight group `title`

#### a2329aa
##### Changed
- Moved all files from the `ftplugin` directory to `after/syntax`

#### a57766a
##### Added
- Linked some groups:
  - Linked `htmlH1` to `htmlTitle`
  - Linked `htmlH2` to `htmlTitle`
  - Linked `htmlH3` to `htmlTitle`
  - Linked `htmlLink` to `underlined`
  - Linked `htmlTag` to `delimiter`
  - Linked `htmlTagName` to `tagName`
  - Linked `htmlTitle` to `title`
  - Linked `htmlSpecialChar` to `specialChar`
  - Linked `htmlSpecialTagName` to `identifier`
  - Linked `itemBlock` to `normal`
  - Linked `mkdItalic` to `special`
  - Linked `mkdHeading` to `special`

##### Changed
- Changed scope of variable `CmptrClr_loaded_X` for each language where *X* is
    the language file being changed, from *script/local* to **global**
- Reformatted some code

#### 6c99ac2
##### Changed
- Created a directory for each file in `after/syntax` and moved the
    corresponding file into newly created directory.
    moved all the following into their own directory still residing in
    after/syntax, but sufficed with after_syntax_CmptrClr.vim

#### 495fc54
##### Added
- Added initial support for `markdown`
- Added some comments
- Created some highlight groups:
  - `htmlBold`
  - `htmlBoldItalic`
  - `htmlItalic`
- Linked some groups:
  - Linked `htmlH4` to `htmlTitle`
  - Linked `htmlH5` to `htmlTitle`
  - Linked `htmlH6` to `htmlTitle`
##### Removed
- Deleted highlight groups:
  - `itemBlock`
  - `mkdItalic`
  - `mkdHeading`

#### 5b42a34
##### Added
- Added some comments
- Added `vint` suppression
- Added function `s:ReloadSyn()`
- Added command `CmptrClr#Reload()`
##### Changed
- Reformatted code a bit
##### Removed
- Removed blank line

#### 5772224
##### Added
- Added header

#### 496041f
##### Added
- Added initial support for `viminfo`

#### f35ca0d
##### Added
- Added initial support for `tags`

#### 565bd11
##### Added
- Added initial support for `ruby`

#### 2cda49c
##### Added
- Added initial support for `postscr`

#### 9d1cd74
##### Added
- Added initial support for `help`

#### 91bdd30
##### Added
- Added initial support for `debsources`
##### Changed
- Reformatted code a bit

#### 227718a
##### Added
- Added initial support for `dosbatch`

#### 66366f5
##### Added
- Added initial support for `gitconfig`

#### 5161d36
##### Added
- Added initial support for `gtkrc`

#### a6eb206
##### Added
- Added headers
##### Changed
- Reformatted `conf` syntax file a bit

#### 4db7b58
##### Added
- Added header
- Added some TODO's
- Linked some highlight groups:
  - Linked `yamlBlock` to `operator`
  - Linked `yamlConstant` to `constant`

#### 2790917
##### Added
- Added header
- Linked some groups:
  - Linked `vimCmdSep` to `vimSep`
  - Linked `vimExecute` to `special`
  - Linked `vimFgBgAttrib` to `attribute`
  - Linked `vimFuncBody` to `special`
  - Linked `vimAttrib` to `attribute`
  - Linked `vimBang` to `vimSpecial`
  - Linked `vimHiClear` to `vimComand`
  - Linked `vimHiCTerm` to `type`
  - Linked `vimHiGroup` to `constant`
  - Linked `vimGuiFgBg` to `type`
  - Linked `vimHiKeyList` to `vimOper`
  - Linked `vimSet` to `vimOper`
  - Linked `vimSetEqual` to `vimOper`
  - Linked `vimSetMod` to `speical`
  - Linked `vimSynType` to `type`
- Added some notes

#### d2d6839
##### Added
- Added a header
- Linked a lot of groups for `sh`
- Added some comments
- Added some TODO's
##### Fixed
- Fixed typo; `shDerefSinple` to `shDerefSimple`

#### e4d8d0c
##### Added
- Added header
- Added some TODO's
- Added some FIXME's
- Linked some more groups

#### 50acf1f
##### Added
- Added header
- Linked `makeComment` to `comment`

#### 5ae59b3
##### Added
- Linked some more groups
- Added some TODO's
- Added some comments

#### e0e6ce6
##### Added
- Added initial support for `perl6`

#### 9b46f5d
##### Added
- Linked `cCharacter` to `character`
##### Removed
- Removed a TODO

#### fc76027
##### Added
- Linked `cssClassName` to `class`
##### Removed
- Removed a TODO

#### d327f36
##### Changed
- Changed link for `dosbatchCharArgument` from `identifier` to `argument`
- Realligned some lines

#### ffab05a
##### Changed
- Changed link for `gitConfigVariable` from `cTagsGlobalVariable` to `variable`

#### 1428476
##### Changed
- Changed the link of some groups
- Realligned some lines

#### 394c446
##### Changed
- Changed link for `jsonQuote` from `special` to `specialChar`

#### 8a08802
##### Changed
- Change the link of some groups
##### Removed
- Removed some TODO's

#### 15db106
##### Changed
- Changed link for `p6Escape` from `speical` to `specialChar`

#### c1a19c5
##### Changed
- Changed link for `postscrFloat` from `number` to `float`
##### Removed
- Removed a TODO

#### 6404f20
##### Changed
- Changed link for `pythonByteEscape` from `speical` to `specialChar`
##### Removed
- Removed some TODO's
- Removed a blank line
- Removed a FIXME

#### d28d1ca
##### Added
- Added a header
- Added some TODO's
- Added some comments
- Create a few new groups

#### dc54ec2
##### Added
- Linked `cFormat` to `format`
- Created some new highlight groups
- Added some TODO's
- Added some FIXME's
- Added some comments
##### Removed
- Delete highlight group `cFormat` (See Added)

#### e19af84
##### Added
- Added some highlight groups
    cpp uses c

#### 1f407cf
##### Added
- Added a `README` for `C`

#### 7172ca5
##### Added
- Updated information on the `C` syntax file

#### bcddb2e
##### Removed
- Removed some TODO's
- Removed a blank line
- Removed a comment

#### 37bf2b3
##### Added
- Added initial support for `abap`
- Created `README` for `abap`

#### 174a42a
##### Added
- Added initial support for `ada`
- Created `README` for `ada`

#### 7963e59
##### Added
- Added initial support for `dosini`
- Created `README` for `dosini`

#### 220be22
##### Changed
- Sorted dictionary

#### 2393842
##### Added
- Added initial support for `fortran`
- Created `README` for `fortran`

#### 01648cd
##### Added
- Added initial support for `Go`
- Created `README` for `Go`

#### 2833051
##### Added
- Added initial support for `haskell`
- Created `README` for `haskell`

#### aff2cae
##### Added
- Added initial support for `m4`
- Created `README` for `m4`

#### 684c610
##### Added
- Added initial support for `java`
- Created `README` for `java`

#### 69dac5e
##### Added
- Added initial support for `rst`
- Created `README` for `rst`

#### 2be186d
##### Added
- Added initial support for `scala`
- Created `README` for `scala`

#### b4a8eda
##### Added
- Added some comments
- Added some TODO's
- Added some highlight groups
##### Changed
- Reordered some highlight groups
- Fixed some alignments
- Renamed highlight group `error` to `errorMsg`

#### 9be56fb
##### Added
- Created `README` for colorscheme `cmptrclr`

#### 7ef88a4
##### Changed
- Reorganized some things
- Fixed alignment
##### Removed
- Removed some TODO's

#### 72d3ec9
##### Added
- Created `README` for `markdown`

#### 3b76fac
##### Added
- Added missing header title

#### 3fb55a8
##### Added
- Created some `README`'s

#### 5cc2f82
##### Added
- Created `autoload/cmptrclr.vim`
- Created function `CmptrClr#SourceHlFile()`
- Added some notes
##### Changed
- Moved function `s:ReloadSyn()` from `plugin/CmptrClr.vim` to
    `autoload/cmptrclr.vim` and renamed to `CmptrClr#ReloadSyn()`
##### Fixed
- Fixed support for using user specified syntax files
    plugin/CmptrClr.vim
##### Removed
- Took out some notes

#### eaa6c58
##### Removed
- Removed last modified date in comment headers

#### baf8f06
    c.vim
    colors/cmptrclr.vim
##### Changed
- Moved all highlight groups prefixed with `cTags` to `colors/cmptrclr.vim`

#### 372a73a
##### Added
- Updated some details about `fortran`
- Added some highlight groups

#### 0c1c4c5
##### Changed
- Changed link for `cCustomTemplateFunc` from `variable` to `command`
##### Removed
- Removed some notes
- Removed some FIXME's

#### 58402cd
##### Added
- Added highlight group `goTodo`

#### 51450c9
##### Added
- Added some notes

#### b222c4b
##### Added
- Initially started the repo `README`

#### eb4dec6
##### Fixed
- Changed link for `mkdInlineUrl` and `mkdLink` from `underline` to
    `underlined`
##### Removed
- Removed some useless code

#### 45f14e0
##### Added
- Added variable `g:CmptrClr_debug`
- Added functions:
  - `CmptrClr#HlExists()`
  - `CmptrClr#GetAttrib()`
  - `CmptrClr#GetColor()`
  - `CmptrClr#SetHl()`
- Added some notes
- Added some TODO's
- Added some FIXME's
- Created `README` for the `autoload` directory
##### Removed
- Removed `vint` comment

#### 8cdcf2d
##### Added
- Added functions:
  - `CmptrClr#IsColor()`
  - `CmptrClr#IsAttrib()`
- Added some notes

##### Changed
- Removed trailing white space

#### 62cbb5f
##### Added
- Added some notes
- Added some TODO's
##### Changed
- Reduced some code by using `lambda`
##### Removed
- Deleted unneccessary code

#### 7e9c18a
##### Added
- Added some improvements
- Using an `assert` message
- Code is more efficient
##### Removed
- Removed uneccassary code
- Removed some comments

#### d71e7ff
##### Fixed
- Fixed type; `nocomine` to `nocombine`

#### 85bf88d
##### Changed
- Moved some `variables` to outer scope

#### 59c6f02
##### Changed
- Changed the `guifg` of `warningMsg` to a darker orange.

#### c0c5566
##### Added
- Created a CHANGELOG

#### 83961ec
##### Added
- Finished implementing `CmptrClr#SetHl()`
##### Fixed
- Fixed missing missing function `GetAttrRef()` and `GetColorRef()`; added
    *script/local* access modifier.

#### 29707b1
##### Added
- Added some comments
- Added some TODO's
##### Changed
- If a highlight group doesn't, rather than returning `0`, `NONE` or `none` is
    returned.
- `CmptrClr#SetHl()` *should* be more efficient.
##### Fixed
- The attribute `none` can now be used.
- If a specific area of a group is not set, `NONE` or `none` is returned rather
    than an empty string.
##### Removed
- Removed some comments

#### f9aa3a8
##### Added
- Added some TODO's
##### Changed
- Reformatted a bit
- Using `string` instead of `lambda` where appropriate.

#### Current
##### Changed
- Changed option `ai` to `si` in modelines.
- Truncated commit ids to 7 characters
- Changed header size from H1 to H4 for commit ids
##### Fixed
- Fixed some commit ids
