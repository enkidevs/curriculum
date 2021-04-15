---
author: rosielowther
type: normal
category: feature
links:
  - >-
    [Interactive
    Staging](http://git-scm.com/book/en/v2/Git-Tools-Interactive-Staging){documentation}
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Interactively stage patches


---

## Content

To partially stage a file:

```bash
git add -p
# or
git add --patch
```

Alternatively, when performing an interactive stage, you can type `5` (patch) in the interactive shell.

Once you have selected a file, git will display hunks of the file diff and then ask:

```plain-text
Stage this hunk [y,n,a,d,/,j,J,g,e,?]? >
```

You can then choose yes `y`, no `n` or other options such as skipping a hunk.


---

## Revision

Complete the following code snippet to partially stage a file:

```bash
??? ??? ???
```

- git
- add
- -p
- -patch
- stage
