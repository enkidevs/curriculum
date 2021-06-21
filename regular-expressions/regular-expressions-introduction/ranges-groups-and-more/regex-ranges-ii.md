---
author: emmab
tags:
  - introduction
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Ranges II


---

## Content

As with most patterns in regex, we can write the opposite of what we want in a very simple way.

Say we want all letters and numbers outside of the ranges 'a-c' and '1-3' then we can use the hat/caret character, `^`, inside the square brackets to exclude these characters.

```plain-text
/[^a-c1-3]/
```

abc123 ❌
`def5678` ✅

This means that the following is true:

`[^a-zA-Z0-9_]` is equivalent to `\W`

`[^0-9]` is equivalent to `\D`

Most patterns can be written using the technique from the previous insight as they are really *two sides of the same coin*.

By having both choices, you can decide which one is easier to write and understand when creating your own patterns.


---

## Practice

Using the '^' character, which regex pattern matches `hog` and `dog`, but not `bog`.

???

- /[^b]og/
- /[b]og/
- /[hd]og/
- /[^hd]og/


---

## Revision

*Using the hat character*, which regex pattern matches `fun`, `pun`, but not `bun`.

???

- /[^b]un/
- /[fp]un/
- /[b]un/
- /[^fp]un/
