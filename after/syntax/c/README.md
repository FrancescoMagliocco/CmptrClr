- The `cCustomAccessKey` group is linked to `attribute`, maybe make a group for
    it and atleast have it linked to `attribute` if not be its own color.
    `cCustomAccessKey` is used to highlight *modifiers* for `cpp` files.
    Example:  `private`, `public`
- `cCustomAngleBrackets` is kind of really strange.  
  ```cpp
  namespace {
  typedef std::unique_ptr<TF_Function, decltype(&TF_DeleteFunction)>
      UniqueFuncPtr;
  }
  ```
