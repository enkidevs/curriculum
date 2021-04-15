---
author: tuwidc
type: normal
category: hack
tags:
  - bash
  - terminal
  - linux
  - hide
  - bash history
  - workout
notes: ''
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Execute a command without saving it in history


---

## Content

Adding one or more spaces before your command will result in `history` not recording it.

This is useful for passwords (those long mysql connections) on the command-line.

For example:

```bash
echo 1
1
echo 2
2
echo 3
3
history
  ...
  501  echo 1
  502  echo 3
  503  history
```

This might not work *by default* on some shell setups.


---

## Revision

Depending on your setup, adding ???

at the beginning of a command will make `history` not record it.

- space
- @
- !
- ?
