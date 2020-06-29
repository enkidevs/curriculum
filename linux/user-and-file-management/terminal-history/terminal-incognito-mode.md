---
author: tuwidc
type: normal
category: feature
tags:
  - terminal
  - bash
  - linux
  - history
  - commands
  - incognito
  - workout
---

# Terminal incognito mode


---

## Content

To temporarily disable command logging in the terminal, use:

```plain-text
set +o history 
```

Or, alternatively:

```plain-text
shopt -uo history 
```

To enable command logging once more, run:

```plain-text
set -o history 
```

Alternatively:

```plain-text
shopt -so history 
```

There are no noticeable differences between the two commands, both being used to modify the same optional shell behavior.


---

## Practice

Complete the snippet to disable command tracking:

```plain-text
??? ??? ???
```

- `set`
- `+o`
- `history`
- `-o`
- `shopt`


---

## Revision

```plain-text
set -o history
```

??? command tracking.

- enables
- disables
