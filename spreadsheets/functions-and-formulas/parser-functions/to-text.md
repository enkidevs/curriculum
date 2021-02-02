---
author: Stefan-Stojanovic
type: normal
category: how-to
links:
  - '[TO_TEXT](https://support.google.com/docs/answer/3094285){documentation}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# TO_TEXT


---

## Content

The `TO_TEXT` function is used to convert numerical values to text values.

The syntax is:

```plain-text
TO_TEXT(value)
```

The function retains any formatting the `value` has had before. 

The values will still look the same, but their data type will be changed to text:

![to-text](https://img.enkipro.com/4016a209f3f15c9f15ac2da1c277d622.png)

This function is useful when importing data. By adding `TO_TEXT` within the import function, you guarantee that all formatting of each cell is preserved.


---

## Practice

When converting numerical values with `TO_TEXT` the value's formatting is retained after the conversion?

???

- True 
- False


---

## Revision

Let's say we have this table:

| \  | A          | B  | C   |
| -- | ---------- | -- | --- |
| 1  | 12/01/2001 | 3$ | 25% |

What would the outputs of these functions be?

```plain-text
TO_TEXT(A1) = ???
TO_TEXT(B2) = ???
TO_TEXT(C3) = ???
```

- 12/01/2001
- 3$
- 25%
- 0.25
- 01/12/2001
- 3
