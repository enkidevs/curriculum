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

# I/O Open & Close I

---
## Content

The `io.open` function is used for opening a file in various modes. 

It takes **two arguments**: the **file name** and the **mode** used to open the file. 

The mode can be either `"r"` for reading, `"w"` for writing, or `"a"` for appending to an existing file. 

> If the mode is not specified, `"r"` is used by default.


---

## Practice

Which of these modes cannot be used as an argument to open a file? ???
```lua
-- mode r
-- mode w
-- mode a
-- mode s
```

- Mode s
- Mode r
- Mode w
- Mode a

---

## Revision

By default, if the mode is not specified for the `io.function()`, then the mode is set to ???

- Mode r
- Mode w
- Mode a
- Mode s