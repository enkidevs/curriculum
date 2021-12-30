---
author: rosielowther
type: normal
category: feature
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Show history of a function


---

## Content

The line log search tool (`-L`) shows the history of a function or line of code.

For example:

```bash
git log -L :myFunction:myFile.js
```

This will show all the changes made to `myFunction` in the file `myFile.js` as a series of patches.

Then git will attempt to work out the bounds of the function.

You can also give the tool a range of lines to search.


---

## Practice

Searching for the changes made to *myFunction* can be done using:

```bash
git ??? ??? :myFunction:myFile.js
```

- `log`
- `-L`
- `-l`
- `--log`
- `--1`


---

## Revision

The history of changes made to a function can be seen using the ??? option of `git log`.

- `-L`
- `-l`
- `-history`
- `--L`
