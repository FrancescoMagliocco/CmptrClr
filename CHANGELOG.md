# CHANGELOG

## 797704be7600ce6fb59b8de32c90ab6a093f40be
##### Added
- initial commit

## 4e30e253871727a32c40be7ef13beb2858e98e1e
##### Changed
- Copied over initial color scheme

## 0f6d47ce43c2804c17b01277e1a7ae426acb2845
##### Added
- Created initial plugin
- Added checks for:

## 60a53e4083e8c43838327e91c36673dd3bae1f2e
##### Changed
- Moved all highlight groups for filetype Vim into its own dedicated file.

## 71a4e190fbdf2a349c8af060826cc739d67ff22d
##### Changed
- Moved all highlight groups for filetype css into its own dedicated file.

## 57bca1290687a122d63b5bc0d0f9cd05093d4b6a
##### Changed
- Moved all highlight groups for filetype html into its own dedicated file.

## cb7952307d12473b2d3d78776d3f54686bb535ad
##### Changed
- Moved all highlight groups for filetype xml into its own dedicated file.

## 60dbf0b01f96ed646392f7edb3dd8020552750de
##### Changed
- Moved all highlight groups for filetype json into its own dedicated file.

## 5a92bd4ecac6eae2f2a7a2e24aaaa531a4db3797
##### Changed
- Moved all highlight groups for filetype yaml into its own dedicated file.

## fc798475ea56c2e8eaacb2106fcfff5432135afd
##### Changed
- Moved all highlight groups for filetype conf into its own dedicated file.

## b5781c3a9322bb96832b67d93854e3ea1314a30e
##### Changed
- Moved all highlight groups for filetype cpp into its own dedicated file.

## 72c53e8a36f59c6bf52ba50191d286b8e6f08d77
##### Changed
- Moved all highlight groups for filetype c into its own dedicated file.

## e5a2406e7c7a7a6987cafd217e9580d39a62a0a1
##### Changed
- Moved all highlight groups for filetype python into its own dedicated file.

## 70a8343626ff53f90ab8cce94d936160768647e7
##### Changed
- Moved all highlight groups for filetype makefile into its own dedicated file.

## b45dd398c0bdd546b245280e08acc9fd2bd0006d
##### Changed
- Moved all highlight groups for filetype perl into its own dedicated file.

## 0540538815914e13ead439352f6595c6cb215184
##### Changed
- Moved all highlight groups for filetype sh into its own dedicated file.

## d9bc36ae429a82aa963e4604bb5bca09688c9610
##### Added
- Added checks

## 104be0377783673efcdc274ae454fff69f6f51a5
##### Added
- Added a new variable `g:CmptrClr_lang_dir`
##### Removed
- Removed comment

## d6f1f75b954b5b1b210d76e4e685052fb19f73a6
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

## ce4d3933126b29446679960eeb38f23aac91be00
##### Fixed
- Fixed a check

## 6fa8c5dee758a589d97488fee8c1e2cd93b1d751
##### Changed
- Using single quotes, rather than double quotes

## 4fc18e26f247100445841be9b5fdc1fd5da693d0
##### Removed
- Removed checks

## 94550a05cd08d808a1f6bc42a17178261a5f841c
##### Removed
- Removed a comment

## 1a343820bf7e8d8c4cec1e0db885487c5eca7a72
##### Removed
- Removed variable `g:CmptrClr_lang_dir`

## 0c51e6b5cae0695fd10a86f415260e18a859c2ed
##### Added
- Added `conceal` highlight group

##### Changed
- Changed `guibg` of highlight group `normal` to `NONE` from `#000000`
    commit says use single quotes, but don't see a change

##### Removed
- Removed blank line

## 78a7108debd6db5504509eca4594e5856193eb92
##### Changed
- Rearranged order of checks

## a03f53c5ae3e751b4898284116f7d3f98aaff276
##### Removed
- Deleted all language files

## 09ef9bd4c4ea7e162fd4360a5886077f6a011e5e
##### Changed
- Reformatted code a bit

## a832c7894a2cd9b02440ea70114f3208739e8be6
##### Added
- Added initial support for `yaml`

## 9d3464760afd3b39e9dec21f63df3e8dc66be724
##### Added
- Added initial support for `xml`

## 5d4386ecc2efd085160d08120a67883f55ca88ce
##### Added
- Added initial support for `sh`

## be6f6bc1446df3653f2ef380909cc87e6cab6f57
##### Added
- Added initial support for `python`

## 7571b000b97ca1d82fe3879dafd77995ac49ef64
##### Added
- Added initial support for `perl`

## fde82a6b951ed3ae9e6c9d534e1457cd473cdece
##### Added
- Added initial support for `make`

## 0490ad596a7337e38a36a9d421bf57f75092063a
##### Added
- Added initial support for `json`

## 6d3c5211c6704b8020a896cfc031bdc2c546e4f7
##### Added
- Added initial support for `html`

## f244ecb322e9e4076cae4eec6e1e633d8b4d3018
##### Added
- Added initial support for `css`

## 78b7cb1b39c97c3d5ed18a2686ca05b82e80feac
##### Added
- Added initial support for `cpp`

## 5594b0e6b0da9945ba5cf6e3efc239de3714feb9
##### Added
- Added initial support for `conf`

## 4df4200195b70777bbfc36f1df104799476b2181
##### Added
- Added initial support for `c`

## dec8d1b40f341134573d6625ecb9263e9e5dc09a
##### Added
<!-- I'm not sure if I want this bold or not -->
- Added **Modeline**
##### Changed
- Changed some notes
- Reformatted code

## 9c8d9d8cc4f148bc413d18c83e05600aeb2f532b
##### Added
<!-- I'm not sure if I want this bold or not -->
- Added **Modeline**
##### Changed
- Changed some notes
- Reformatted code

## 8a6a3f48bb532517b17573a40c48a8a22675d86e
##### Fixed
- Fixed missing `endfunction`

## 3522051c367d6d181d27d6c96325ce439b58cb2c
##### Removed
- Removed *underline* attribute from highlight group `title`

## a2329aa786c9588a58d2d76bf5be41f6de21b830
##### Changed
- Moved all files from the `ftplugin` directory to `after/syntax`

## a57766ad3a672fe20a2a47768803ec710c6fb884
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

## 6c99ac27cef64df063ea7dbb5f1e5ea5aad54210
##### Changed
- Created a directory for each file in `after/syntax` and moved the
    corresponding file into newly created directory.
    moved all the following into their own directory still residing in
    after/syntax, but sufficed with after_syntax_CmptrClr.vim

## 495fc547b47078ea5fa48f5b64ef5b9698304581
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

## 5b42a34070cb278f44d5a4c61a08d1554860ad08
##### Added
- Added some comments
- Added `vint` suppression
- Added function `s:ReloadSyn()`
- Added command `CmptrClr#Reload()`
##### Changed
- Reformatted code a bit
##### Removed
- Removed blank line

## 57722242851e1ce1c7c13cc98f9cc353033b7731
##### Added
- Added header

## 496041f257a4337d6f328f62bfabf84429b64d07
##### Added
- Added initial support for `viminfo`

## f35ca0d7279d1cc891becd311f7481b7ea824388
##### Added
- Added initial support for `tags`

## 565bd11a1884d98573305794ccd11c10b09a40b8
##### Added
- Added initial support for `ruby`

## 2cda49cdaa06b408129e34fe4646787a44f5bf32
##### Added
- Added initial support for `postscr`

## 9d1cd74b12de35d6b56e88df02c2d8b5782ec414
##### Added
- Added initial support for `help`

## 91bdd30a53d152ec6aab5ec3aed4c824aa578185
##### Added
- Added initial support for `debsources`
##### Changed
- Reformatted code a bit

## 227718aa06e58de6c0f6a723df16c5a61d7a431c
##### Added
- Added initial support for `dosbatch`

## 66366f56b2df24874501360d941a38e9b545b64f
##### Added
- Added initial support for `gitconfig`

## 5161d364efdc331ca4a05ff04555c784baaa96e3
##### Added
- Added initial support for `gtkrc`

## a6eb206c3e1b1871804edf1e5de23518a1a030f8
##### Added
- Added headers
##### Changed
- Reformatted `conf` syntax file a bit

## 4db7b588be6b5421c64d107153d3dda8eb52b480
##### Added
- Added header
- Added some TODO's
- Linked some highlight groups:
  - Linked `yamlBlock` to `operator`
  - Linked `yamlConstant` to `constant`

## 27909170c8e8a0dc679d7456c4eedb973b91bde9
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

## d2d683902024a902d5c85cbb0adbe7956b7ef9a5
##### Added
- Added a header
- Linked a lot of groups for `sh`
- Added some comments
- Added some TODO's
##### Fixed
- Fixed typo; `shDerefSinple` to `shDerefSimple`

## e4d8d0c08f2abdaae35c3840393471bc41226869
##### Added
- Added header
- Added some TODO's
- Added some FIXME's
- Linked some more groups

## 50acf1f4487c7009748a7ab6ddb42e11a0e5630d
##### Added
- Added header
- Linked `makeComment` to `comment`

## 5ae59b31a36e2497c772bfb8942105f6d93cd0b0
##### Added
- Linked some more groups
- Added some TODO's
- Added some comments

## e0e6ce6a0db02546f6bb0255961f7ef0201f004b
##### Added
- Added initial support for `perl6`

## 9b46f5dd13c1c78f8ecfbe21741296a59d14a600
##### Added
- Linked `cCharacter` to `character`
##### Removed
- Removed a TODO

## fc76027541f5b12947ad8a45104381667f052bcc
##### Added
- Linked `cssClassName` to `class`
##### Removed
- Removed a TODO

## d327f36326c86340920137ac88c6dac832925e86
##### Changed
- Changed link for `dosbatchCharArgument` from `identifier` to `argument`
- Realligned some lines

## ffab05a533b2f9403d80b9d21147014a05267b9d
##### Changed
- Changed link for `gitConfigVariable` from `cTagsGlobalVariable` to `variable`

## 14284761189d3e419d47c5947e4b1e7c4cbc27aa
##### Changed
- Changed the link of some groups
- Realligned some lines

## 394c446790a485bd6c9712303422d59041b8d6e4
##### Changed
- Changed link for `jsonQuote` from `special` to `specialChar`

## 8a088025a7b4066aba0f4a92b9fe087c6d4a9f5c
##### Changed
- Change the link of some groups
##### Removed
- Removed some TODO's

## 15db106b3ba358cc2fac33a2baab4e4db626cf9b
##### Changed
- Changed link for `p6Escape` from `speical` to `specialChar`

## c1a19c5a5cc0b6fd1abb5e3552e78340c81a6bef
##### Changed
- Changed link for `postscrFloat` from `number` to `float`
##### Removed
- Removed a TODO

## 6404f2057a800fef051794e1e9edd24559c548f0
##### Changed
- Changed link for `pythonByteEscape` from `speical` to `specialChar`
##### Removed
- Removed some TODO's
- Removed a blank line
- Removed a FIXME

## d28d1caa31cca5f97514e0b7c87e6919bf1b34f4
##### Added
- Added a header
- Added some TODO's
- Added some comments
- Create a few new groups

## dc54ec28ccc4ed41c3f3d0f5c56992d4e750c7f5
##### Added
- Linked `cFormat` to `format`
- Created some new highlight groups
- Added some TODO's
- Added some FIXME's
- Added some comments
##### Removed
- Delete highlight group `cFormat` (See Added)

## e19af84b9bb30c52c735d7a9d20203b550930da7
##### Added
- Added some highlight groups
    cpp uses c

## 1f407cf8476121ef14a097e1cfe9025ab52978bd
##### Added
- Added a `README` for `C`

## 7172ca5d9622ac390b370ad2781971afcca590cd
##### Added
- Updated information on the `C` syntax file

## bcddb2eefd89cc0431e7aa1962b62f4edab22846
##### Removed
- Removed some TODO's
- Removed a blank line
- Removed a comment

## 37bf2b31c94520cd115c7c4e1f7ff8bdc7724d36
##### Added
- Added initial support for `abap`
- Created `README` for `abap`

## 174a42a4986c004fd21f531a61099a06f0a234d6
##### Added
- Added initial support for `ada`
- Created `README` for `ada`

## 7963e59d593b52c77dbe885a151a78c7bc14b4a6
##### Added
- Added initial support for `dosini`
- Created `README` for `dosini`

## 220be22a091b5f97b076107744bbaa8ced5f2254
##### Changed
- Sorted dictionary

## 2393842c6e6826d91444aad9cc7b0d989fffaa8d
##### Added
- Added initial support for `fortran`
- Created `README` for `fortran`

## 01648cd1f3e92aed45ad05c3a33304e16af48c0c
##### Added
- Added initial support for `Go`
- Created `README` for `Go`

## 283305100fc7b2d77370affe0b7be56d5595dae0
##### Added
- Added initial support for `haskell`
- Created `README` for `haskell`

## aff2cae89602b121c68f118a2757dde9fef77367
##### Added
- Added initial support for `m4`
- Created `README` for `m4`

## 684c610e61551c6a4329669d251db191968ac332
##### Added
- Added initial support for `java`
- Created `README` for `java`

## 69dac5eac75a39128bf92e192ae9b0bcdf7e85ab
##### Added
- Added initial support for `rst`
- Created `README` for `rst`

## 2be186d67102d0d69ce1826f61b448ded609f808
##### Added
- Added initial support for `scala`
- Created `README` for `scala`

## b4a8edabcd5352dd54769e90eb78eea462cd3da4
##### Added
- Added some comments
- Added some TODO's
- Added some highlight groups
##### Changed
- Reordered some highlight groups
- Fixed some alignments
- Renamed highlight group `error` to `errorMsg`

## 9be56fba026dfe29e66c41b7b57b739bbac04082
##### Added
- Created `README` for colorscheme `cmptrclr`

## 7ef88a4872dd5531a2d65ec5402d71d3b3b7a54c
##### Changed
- Reorganized some things
- Fixed alignment
##### Removed
- Removed some TODO's

## 72d3ec90ea5e234ea0024e2a46adf5325cd4ef59
##### Added
- Created `README` for `markdown`

## 3b76faca3541e2ba400e98616eea49b29f8e69f1
##### Added
- Added missing header title

## 3fb55a88d3456ba7ba949423c5fd5130dc0a17bf
##### Added
- Created some `README`'s

## 5cc2f8253db3b0170128611dd673644a29212a6c
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

## eaa6c58aed8bb7ab9ce40fda7281093f98c8d33e
##### Removed
- Removed last modified date in comment headers

## baf8f060c435d0d9b7ddbef86a5ee07ebd558b22
    c.vim
    colors/cmptrclr.vim
##### Changed
- Moved all highlight groups prefixed with `cTags` to `colors/cmptrclr.vim`

## 372a73ae64c65e4c3843d50c969848c68121a9bb
##### Added
- Updated some details about `fortran`
- Added some highlight groups

## 0c1c4c557f278811eef248968e5b1eaf0dd09473
##### Changed
- Changed link for `cCustomTemplateFunc` from `variable` to `command`
##### Removed
- Removed some notes
- Removed some FIXME's

## 58402cd9e69a07afa8cb1c246d49d0a62c99b9a1
##### Added
- Added highlight group `goTodo`

## 51450c96645c7a6bda3545366723af3a8a308654
##### Added
- Added some notes

## b222c4be505c001e35db6285d31be075d54eef0b
##### Added
- Initially started the repo `README`

## eb4dec63cf62b326603a78834f73f948290913bc
##### Fixed
- Changed link for `mkdInlineUrl` and `mkdLink` from `underline` to
    `underlined`
##### Removed
- Removed some useless code

## 45f14e01d8238d1ad7d941ad07bc3ab2f91e5baa
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

## 8cdcf2dc052d6e8ede342c788f7f8385a97b1b5a
##### Added
- Added functions:
  - `CmptrClr#IsColor()`
  - `CmptrClr#IsAttrib()`
- Added some notes

##### Changed
- Removed trailing white space

## 62cbb5f2e2918d9edaf214558a287c4ef0199739
##### Added
- Added some notes
- Added some TODO's
##### Changed
- Reduced some code by using `lambda`
##### Removed
- Deleted unneccessary code

## 7e9c18adb4307ca33b6ba7a524e724fcf0ffc4e3
##### Added
- Added some improvements
- Using an `assert` message
- Code is more efficient
##### Removed
- Removed uneccassary code
- Removed some comments

## d71e7ff636efa5836703116c623a464bd9c8fb22
##### Fixed
- Fixed type; `nocomine` to `nocombine`

## 85bf88dd0fc961bf7f120a5af92cc4b35d722988
##### Changed
- Moved some `variables` to outer scope

## 59c6f02d19201ad962495663220ede0c3d4bc60c
##### Changed
- Changed the `guifg` of `warningMsg` to a darker orange.

## c0c55660c53dd454e533f5825cccc24ec378fdb7
##### Added
- Created a CHANGELOG

## 83961ec44c6db4c1c3cf78519b615849f626b01a
##### Added
- Finished implementing `CmptrClr#SetHl()`
##### Fixed
- Fixed missing missing function `GetAttrRef()` and `GetColorRef()`; added
    *script/local* access modifier.

## Current
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
