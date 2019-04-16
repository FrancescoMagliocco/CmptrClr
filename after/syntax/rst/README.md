# Info on the `rst` syntax files
- `rstDirective` Should probaly be linked to `namespace` or create a group
    dedicated for `directives`.  As of right now, there is no group for
    `namespace`, so if the outcome is to link it to `namespace`, the group
    needs to obviously be created.  Right now `rstDirective` is linked to
    `class`.
- `rstExDirective` - I am not sure as to what group to link this to.  At the
    moment it is linked to `string` as it was the default.
- I'm not exactly sure what `rstExplicitMarkup` is, but from the example I was
    going off of, it seemed appropriate to link it to `statement`.  Either that
    or it was already defaulted to that.
- For `rstSections` I am currently using `title` for the link, but I may use
    something else.  I know there are some other filetypes such as **help**
    that have something similar to *sections*, which in the **help** filetype,
    I have it linked to `statement`.  So changing this will probably be
    trivial.
