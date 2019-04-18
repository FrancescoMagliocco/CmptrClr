# Info on the `fortran` syntax files
- `fortranStructure` is highlghting the word *PRIVATE* which to me is
    considered as *access modifier*, but then again, I'm not familiar with
    fortran at all.
- `fortranIO` is being linked to `identifier` even though the word *NAME* is what
    was highlighted, but maybe that is because it is being used to specify what
    *IO*?
  - When I think of the word *IO*, for some reason I think of *enumerators*, so
      maybe create or when a group is created for *enumerators*, make sure
      `fortranIO` is linked to it.  In the meantime..  It will be linked to
      `identifier`as it is *identifiing* something.  I was going to link it to
      `special`.
- Maybe create custom syntax groups that actually make sence because why in the
    world would the word `IMPORT` be considered as a `type`?
- No idea what a `fortranIntrinsic` is, but it was linked to `identifier` by
    default, so I left it at that.  It was highlighting the word *size*
- `fortranCall` was linked to `identifier` by default, and it does make sence a
    bit, but if it is just specifying *calling* something, which is what it
    looks like, I'm going to link it to `command` (Which I am linking to)
