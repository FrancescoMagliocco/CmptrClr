<!-- vim: spell:si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=markdown:norl:cole=0
-->

# Information on CmptrClr in autoload
## TODO
- Finish implementing the rest of the function `CmptrClr#SetHl`.
- The `opts` dictionary is to be defined outside the scope of function
    `CmptrClr#SetHl`.

## FIXME
- In function `CmptrClr#ReloadSyn`, if a color is changed in the `cmptrclr.vim`
    colorscheme, when executing `:CmptrClrReloadSyn`, the changes may not be
    taken into affect.
- If one of the values of `a:options` in function `CmptrClr#SetHl` are of a
    color and not a group, the function will return nothing be done.

## NOTES
- For function `CmptrClr#GetAttrib`, if the *mode* is not given in the optional
    `...` arguments and `termguicolors` is set, instead of retrieving the
    attributes for `cterm`, the attributes for `gui` will be retrieved.  With
    that being said, I am uncertain if attributes set to `gui` are applicable
    outside of the gui version of vim.  Attributes set to `cterm` may only be
    valid for when running vim in the terminal.

    The returned value is a string created from a list of the set attributes
    for the given *group* and specified *mode*.  The format the returned value
    is in the approprieate form to be used straight away setting the attributes
    of another group.

    The last optional `...` argument provided will be used as the mode.
