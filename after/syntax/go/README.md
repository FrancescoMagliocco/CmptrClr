# Info on the `go` syntax files
- `goDeclaration` highlights some keywords such as `func` which declares a
    function so to speak, I'm not sure if I could relate it to possibly a
    `modifier` such as `private` etc..  Or if I should just link it to `type`
    as it is right before the name of a function.  
    But I suppose you could also link it to `define` as it could be considered
    making a definition for a function, but in that case, would the functions
    for `go` make more sense to be linked to `cTagsDefinedName`?..
- `goDeclType` highlights a keyword `interface` and when I think of *interface*
    I think `interfaces` for other languages such as `C#`.  Because of so it
    makes me want to link it to the `storageClass` group.  Would that however
    be accurate?
- For `goPackage`, I guess you could considier it as a `namespace` and with
    that being said, I want to create a group for `namespaces` and link
    `goPackage` to it rather than use what I'm using now which is `include`.
- `goVar` I'm thinking could either be linked to `type` as it *defining* a
    variable.  But then again it could be a `statement` as it could be
    considered an *object*.
