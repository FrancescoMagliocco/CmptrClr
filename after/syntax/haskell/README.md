# Info on the `haskell` syntax files
- `haskellBrackets` highlights the contents that are inside of '[]'
- `haskellParens` is almost like `haskellBrackets` except that it highlights
    the contents inside of '()'
-  `haswellDeclKeyword` was linked to `structure` by default, the keyword that
    is being highlighted is `in`..  So I guess `statement` would be the best
    way to go about and linking to?..
- `haskellLet` reminds me of the `let` command in **Vim**, so I'm linking it to
    `command` but I'm not 100% satisified with my choice.  It was previously
    linked to `structure` which kind of does make sense..
- `haskellWhere` was linked to `structure` by default, and like `haskellLet` it
    kind of makes sense, I'm just not sure if I'm happy with it staying that
    way.  For now I will have it linked to `command`.  It may though make sense
    to link both `haskellWhere` and `haskellLet` to `storageClass`..  I'm not
    sure..
- For the following: 
  ```haskell
  type Name = String
  ```
  Is `Name` the *name* of a variable?  Is `String` the *type* of variable
  `Name` is?  And does `type` just specify that some *type* is being defined?
  ~~If these are the cases, `type` could be linked to either `strucutre` or
  `storageClass` (I haven't contemplated what the differences *exactly* are
  between the two), `Name` could be simply linked to some **Varable** group and
  `String` could be linked to `type`.~~  `Name` and `String` are consdered to
  be highlighted under the same group.
- In the previous bullet, `type` is highlighted by group `haskellDecl` which is
    linked to `structure` by default.  I had it linked to `statement`..  But
    I'm thinking it is best.. (For now) to be linked to `structure` until I can
    figure out more about it.
