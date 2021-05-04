---
author: Stefan-Stojanovic
type: normal
category: how-to
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# > , >= , GT() & GTE()


---

## Content

> 💡 When comparing strings, Sheets will compare each character individually, starting from the first. 
> They're compared by their position in the alphabet, meaning that `a` is **lower than** `b`. Also, capitalization doesn't count, so `a` is the same as `A` when being compared.

### GT() & >

The greater than comparison operator is equivalent to the `GT()` function.

Both can be used to check if the first value is greater than the second value. 

If the first value is greater than the second value the result will be `TRUE`, otherwise it will be `FALSE`.

> 💡 `0` is considered to be the same as an empty cell[1].

![greater-than-gt](https://img.enkipro.com/412663ee406653b86e6b5c2177db2907.png)

Take a look here[2] for more examples on `GT()`.

### `GTE()` & `>=`

The "greater than or equal to" comparison operator is equivalent to the `GTE()` function.

Both can be used to check if the first value is greater than or equal to the second value. 

If the first value is greater than or equal to the second value the result will be `TRUE`, otherwise it will be `FALSE`.

![greater-than-gte](https://img.enkipro.com/ed4175f75413f3b4adbda16dcfeea425.png)

Take a look here[3] for more examples on `GTE()`.


---

## Revision

The `GT()` function and `>` operator are used to check if the first value is greater than the second value and output ??? if it is and ??? if it's not.

The `GTE()` function and `>=` operator are used to check if the first value is greater than or equal to the second value and output ??? if it is and ??? if it's not.

- TRUE
- FALSE
- TRUE
- FALSE


---

## Footnotes

[1:Zero & Empty Cells]
If we had this table:
| \ | A | B |
|---|---|---|
| 1 | 0 |   |

Then the formula:

```plain-text
=GT(A1, B1)

// FALSE
```

Would output `FALSE` since zero is the same as an empty cell.

[2:More Examples On GT]
![gt-more-examples](https://img.enkipro.com/33f2d1cdfbec2d450dbcfe709418ce90.png)

[3:More Examples On GTE]
In this example we compare several data types with each other:

![gte-more-examples](https://img.enkipro.com/5a56a51e1ad90c47173140a5ee9feded.png)
