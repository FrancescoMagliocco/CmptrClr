<!-- vim: spell:si:et:fenc=utf-8:sw=2:ts=2:sts=2:tw=79:ft=markdown:norl:cole=0
-->

# CmptrClr
CmptrClr is a Vim 'colorscheme' focused on offering a consistent look across
multiple programming languages all while being simple yet sophisticated.
Simple in means of changing a Global Highlight Group to keep consistency, and
sophisticated such that every single highlight group could be unique with no
two groups being identical.  Every aspect is customizable with no limitations.

### Global Highlight Groups
Global Highlight Groups are defined in the [color scheme][cmptrclr.vim].  These
groups are ubiquitous, so defining them in a location where there is
unrestricted access is ideal.

Some groups are prefixed with cTags which may lead to some misconception as
ones intuition could infer the conventional location be that of the syntax for
C.  The placement was done consciously, knowing that despite the name cTags,
these groups are used ambiguously.

Highlight groups that are language dependent, are **not** to be placed inside
the color scheme. The reasoning behind this is to improve efficiency, use less
memory and better organization.  Crowding the color scheme with configurations
for each language, uses more resources than what is initially needed.  With
that being said, highlight groups will be defined and linked even though they
aren't being utilized.  That is wasting memory that an older machine may not be
able to spare.  Instead of establishing highlight links in the color scheme for
each language, they are to be broken up into individual language specific
syntax files.  This avoids cluttering the color scheme making it easier to read
and saves memory in the end as the syntax files are only sourced once they are
needed.

### Customization
Customization is rather simple, and only requires one setting per language.

#### Customizing languages
If you would like to customize a specific language or even all of them, you can
easily do so.
1. In your .vimrc, you first need to initialize a dictionary:  
   <sup><b>NOTE: Yes this is required.</b></sup>
   ```vim
   if !exists('g:CmptrClr_user_hl')
     let g:CmptrClr_user_hl = {}
   endif
   ```
2. Next you need to specify what language you want to customize, and where the
   syntax file is located.  An example will be given below showing you also how
   you can customize multiple languages:
   ```vim
   let g:CmptrClr_user_hl['c']    = '/home/john/c.vim'
   let g:CmptrClr_user_hl['vim']  = '/home/john/my_syntax/my_vim.vim'
   ```
   <sup><b>It is highly recommended to use this form for customizing
   languages</b></sup>  
   There is no special location or name the syntax file needs to follow.  The
   syntax file will be sourced after the default one (If applicable) is
   sourced.

   If the specified syntax file exists, that same `key` <sup><i>(`'c'` and
   `'vim'` are examples of `keys`)</i></sup> will be added *(If not present)*
   to `g:CmptrClr_use_user_hl`.  If the `key` is already present in
   `g:CmptrClr_use_user_hl`, it will not be modified.  So if the value for that
   `key` was `0`, even though you specified a location and syntax file, it will
   not he used.  In order to use it you, you will have to manually enable it by
   either removing where you initially disabled it, or change the value from
   `0` to `1`, thus enabling it.

   If the file does not exists, you will be warned, and CmptrClr will pretend
   you didn't try to specify your own syntax.  The entry will also be deleted
   from `g:CmptrClr_user_hl`, and if that `key` exists in
   `g:CmptrClr_use_user_hl`, the entry will be removed from there as well. 

#### Disabling languages
There are a few ways you can disable certain languages, each resulting in a
different effect. 

##### Disable user syntax
If you want to disable your specified syntax file, but don't want to delete the
location from the `g:CmptrClr_user_hl`, you can instead just disable it as
follows.
1. In your .vimrc, you first need to initialize a dictionary:  
   **<sup>NOTE: Yes this is required.</sup>**
   ```vim
   if !exists('g:CmptrClr_use_user_hl')
     let g:CmptrClr_use_user_hl = {}
   endif
   ```
2. Next you need to specify what language you're wanting to disable.  An
   example for C is as follows:
   ```vim
   let g:CmptrClr_use_ser_hl['c'] = 0
   ```

##### Disable default syntax, use user syntax
If you would like to just disable what CmptrClr offers as default for a
particular language, and just use your own, you can do that as well.
1. In your .vimrc, you first need to initialize a dictionary:  
   <sup><b>NOTE: Yes this is required.</b></sup>
   ```vim
   if !exists('g:CmptrClr_use_default_hl')
     let g:CmptrClr_use_default_hl = {}
   endif
   ```
2. The next step is pretty much the exact same as disabling a user specified
   syntax, but with a different dictionary.
   ```vim
   let g:CmptrClr_use_default_hl['c'] = 0
   ```

##### Disable a whole language supported by CmptrClr
To disable a whole language that is supported by CmptrClr, just follow both
[Disable user specified syntax](#disable-user-syntax) and [Disable default
syntax...](#disable-default-syntax-use-user-syntax "Disable default syntax, use
user syntax")

## TODO
- [ ] Add an option in the form of a dictionary so languages that aren't
    supported can be added.
- [ ] Add a FAQ
  - One being that why you shouldn't update a dictionary in the form of
      `dict={key:vale}`
- [ ] Finish README

[cmptrclr.vim]: /colors/cmptrclr.vim "CmptrClr"
