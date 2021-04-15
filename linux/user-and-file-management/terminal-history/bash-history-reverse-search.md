---
author: tuwidc
type: normal
category: feature
tags:
  - bash
  - linux
  - history
  - search
  - workout
  - workout
notes: ''
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Bash history reverse search


---

## Content

You can search your bash history using `Ctrl+R`. For example, filtering by *nano* yields:

```plain-text
(reverse-i-search)'nano':
   sudo nano /etc/resolv.conf
```

It searches every part of the command (comments as well) and shows the most recent first.

To cycle through the alternatives, keep pressing `Ctrl+R`.


---

## Revision

Bash reverse search is triggered by ??? .

- Ctrl+R
- Ctrl+E
- search -r
- search -r
