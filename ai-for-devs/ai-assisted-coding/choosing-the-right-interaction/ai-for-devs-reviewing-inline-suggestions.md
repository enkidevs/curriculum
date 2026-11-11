---
author: enki-ai

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    // Welcome to the JavaScript coding playground.
    // Avatar uploads are allowed up to and including 5 MB.

    const MAX_UPLOAD_BYTES = 5 * 1024 * 1024;

    function isWithinUploadLimit(file) {
      return file.size < MAX_UPLOAD_BYTES;
    }

    // Print the result for a size below, at, and above the limit:
---

# Inline Suggestion Review

---
## Content

> 👩‍💻 Your task is to: **test the completed upload guard at its boundary, then fix the wrong comparison**.

The comment says uploads are allowed up to and including 5 MB. The completed guard uses `<`.

Call the function with a size one byte below the limit, exactly at the limit, and one byte above it. The expected results are `true`, `true`, and `false`.

Print each size and result so the mismatch is visible:

```plain-text
5242879 bytes: true
5242880 bytes: false
5242881 bytes: false
```

To solve this, try using:

- comparison operators (`<`, `<=`)
- three calls at the boundary
- template literals (`` `${size} bytes: ${result}` ``)

Change only the comparison, then rerun the three checks. This is inline review in practice: **pause, test the completed behavior, and reject the part that misses your intent**.

Give it an honest try, and feel free to share your solution!

If you're stuck, you can always read this footnote[1] or review the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---
## Footnotes

[1: Hints]

`5 * 1024 * 1024` is 5,242,880. Use that number, one below it, and one above it.

Only two results match the comment. The wrong one is the size exactly on the limit.

`<` means "under the limit." The comment says "up to and including."
