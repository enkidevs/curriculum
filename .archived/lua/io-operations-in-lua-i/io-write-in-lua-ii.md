---
author: Stefan-Stojanovic
category: must-know
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# IO Write Default Settings

---
## Content

By default, `io.write()` writes to the standard output (often the console or terminal). However, it can be used to write to a file by passing a file object as the first argument, obtained using `io.open()` or another file I/O function.

> `io.write()` does not automatically add a newline character at the end of the output. It must be added explicitly with the `"\n"` escape sequence.

---

## Practice

By default, where does `io.write()` write statements to? ???

- Often the console or terminal
- Only the console
- A folder
- A file on your desktop
- Only the terminal

---

## Revision

What is one important thing to keep in mind when using `io.write()`? ???

- It does not add a newline character automatically
- It requires a password to use
- Only some IDEs can use this function
- This function must be indented