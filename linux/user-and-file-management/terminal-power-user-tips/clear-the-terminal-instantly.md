---
author: tuwi.dc

levels:

  - basic

  - beginner

type: normal

category: feature

tags:

  - linux

  - terminal

  - reset

  - clear

  - clenup

  - workout



notes: ''

---

# Clear the terminal instantly

---

## Content

We can clear the terminal instantly by pressing `ctrl + L` . This will achieve the same as issuing `clear` command.

To reinitialize the terminal and clear the previous outputs, it's possible to run:

```
$ reset
```

This won't, however, reinstantiate the shell, meaning you will still be logged as sudo.

---

## Revision

To _reload_ the terminal and _clear_ the previous output you would run

??? .

- reset
- clear
- clr
- sudo --reload
