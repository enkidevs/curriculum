---
author: Stefan-Stojanovic
type: normal
category: how-to
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# = & EQ()


---

## Content

The equal comparison operator is the same as the `EQ()` function.

Both can be used to check if two values are equal to each other and return `TRUE` if they do and `FALSE` if they don't.

> 💡 `0` is considered to be the same as an empty cell[1].

![equals-and-eq](https://img.enkipro.com/1ec10a0d6172e2c11921995170d8d54d.png)

> 💡 You can also compare different data types, but the result will always be `FALSE`. Take a look here[2] for some examples.


---

## Revision

The `EQ()` function and `=` operator are used to compare ??? values and output ??? if they are equal and ??? if they are not.

- two
- TRUE
- FALSE
- two or more 
- two or less


---

## Footnotes

[1: Zero & Empty Cells]
If we had this table:
| \ | A | B |
|---|---|---|
| 1 | 0 |   |

Then the formula:

```plain-text
=EQ(A1, B1)

// TRUE
```

Would output `TRUE` since zero is considered to be an empty cell.

[2:More Examples]
In this example we compare several data types with each other:

![not-equal-and-ne](https://img.enkipro.com/5582298d31568b41b6a4c05147d9f345.png)
