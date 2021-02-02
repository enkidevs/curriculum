---
author: Stefan-Stojanovic
type: normal
category: how-to
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# <> & NE()


---

## Content

The not equal comparison operator is the same as the `NE()` function.

Both can be used to check if two values are NOT equal to each other and return `FALSE` if they do and `TRUE` if they don't.

> 💡 `0` is considered to be the same as an empty cell[1].

![not-equal-and-ne](https://img.enkipro.com/3f0ddaa33095153e18d65ef25a82406a.png)

> 💡 You can also compare different data types, but the result will always be `TRUE`. Take a look here[2] for some examples.


---

## Revision

The `NE()` function and `<>` operator are used to compare ??? values and output ??? if they are equal and ??? if they are not.

- two
- FALSE
- TRUE
- two or less
- two or more


---

## Footnotes

[1:Zero & Empty Cells]
If we had this table:
| \ | A | B |
|---|---|---|
| 1 | 0 |   |

Then the formula:

```plain-text
=NE(A1, B1)

// FALSE
```

Would output `FALSE` since zero is the same as an empty cell.

[2:More Examples]
In this example we compare several data types with each other:

![not-equal-and-ne](https://img.enkipro.com/b964b6369c94c0891cb1652a5a802f39.png)
