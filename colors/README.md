# Information on **CmptrClr**
- May use a *deeper* orange for `exception` and `warningMsg`
- Make sure everything that is *bold* is linked to `bold`.
  - Also maybe change the `guifg` and `guibg` to `NONE` as that way the
      previous colors may be kept when linking to `bold`?...
  - Do the same `italic`
- For groups that are *plugin* specific, maybe either do a check to see if that
    plugin is installed, or move those groups to another file and have them
    sourced if the plugin is installed.
  - Would the **autoload** folder work correctly for something like this.
      making sure to have each file in a directory under the name of
      **CmptrClr**?
- For `gitGutterChangeDelete` I want the color to incorporate both the colors
    of `gitGutterChange` and `gitGutterDelete`..  Somehow..
- I haven't been able to see the appearance of what `menu` does
- I also haven't been able to figure out what group corresponds to the
    *tabMenu* for when you press <kbd>Tab</kbd> and above when you're in
    **Command Mode** you're shown a list of choices.  I want to change the
    background color of it.
- The groups `noise` and `operator` are of the same, except  they aren't
    linked.
- The groups `format` and `specialChar` are of the same, except they aren't
    linked.
- Not 100% sure if satisfied with the results of `pMenu`
- `pMenuSel` *might* look better with a bit of a lighter red.
- `pMenuSBar` is the *scrollbar* in the little window that pop's up for
    completion.
  - Not sure how I'm liking it right now.  I don't ever use it..
- `pMenuThumb` should probably be looked at..
- I really liked the previous color I had for `preCondit` which was a blue
    `#004868`.  I'm not sure if I want to change it back to that color, as it
    would match other groups and would help distinguish from regular
    conditionals.
- Not sure if I want `question` to be bold or not..
- The following is randomly colored because I'm not sure what is being
    highlighted:
  - `quickFixLine`
  - `specialKey`
- `signColumn` is set to be `#000000` for the `guibg`, but it seems to be
    getting overridden somehwere.  ~~A fix may be to place the colorscheme in
    `after/colors`~~  That did not work.
- The last time I checked in **java**, `true` and `false` were being
    highlighted with the group `cTagsField`..  Double check this.  When first
    making the syntax file for **java** it was really *wonky* until I restarted
    **vim**
- A **method** is kind of like a **function** but I feel like if I link
    `method` to `functionName` that there will be to much green..
  - For the group `method` I just incremented *G* and *B* by 2.  Lets see how
      that looks.
- A `namepsace` is *kindof* like a `class`, so I'm using the same color for
    `namespace` as I did for `class` except that for `namespace` I have it
    `bold`.  Definitily check the appearnce of this.
- Check appearance of the following:
  - `spellCap` - Does it only highlight the first letter to indicate that it
      needs to be capitalized?
  - `spellLocal`
  - `spellRare`
  - `namespace`
- The folowing groups I don't know what they highlight:
  - `foldColumn`
  - `quickFixLine`
  - `specialKey`
- Need to lighten up the blue for `statement` just a little bit, as it is hard
    to see.
- The following still need to be implemented:
  - `visualNOS`
  - `scrollBar`
  - `toolTip`
- The following is not set because I believe they are color with **Airline**
  - `statusLine`
  - `statusLineNC`
  - `statusLineTerm`
  - `statusLineTermNC`
  - `tabLine`
  - `tabLineFill`
  - `tabLineSel`
- Get the groups used by **AirLine** and implement them
- I'm considering a *module* to be like a *class* kind of, so I have linked
    `cTagsModule` to `class`
  - Maybe I should use something else for `cTagsModule` as there is a group
      called `cTagsClass`and I'm sure if it wasn't meant to be differnt from
      `cTagsModule`, there would only be one of those groups.
- `cTagsSubroutine` is being linked to `functionName` as a *routine* is kind of
    a function..  I think..
