---
author: Stefan-Stojanovic

type: normal

category: how to

---

# `>`, `>=`, `GT()` & `GTE()`

---
## Content

> 💡 When comparing strings, Sheets will compare each character individually, starting from the first. 
> They're compared by their position in the alphabet, meaning that `a` is **lower than** `b`. Also, capitalization doesn't count, so `a` is the same as `A` when being compared.

### `GT()` & `>`

The greater than comparison operator is equivalent to the `GT()` function.

Both can be used to check if the first value is greater than the second value. 

If the first value is greater than the second value the result will be `TRUE`, otherwise it will be `FALSE`.

> 💡 `0` is the same as an empty cell.

![greater-than-gt](https://img.enkipro.com/412663ee406653b86e6b5c2177db2907.png)

### `GTE()` & `>=`

The "greater than or equal to" comparison operator is equivalent to the `GTE()` function.

Both can be used to check if the first value is greater than or equal to the second value. 

If the first value is greater than or equal to the second value the result will be `TRUE`, otherwise it will be `FALSE`.

![greater-than-gte](https://img.enkipro.com/ed4175f75413f3b4adbda16dcfeea425.png)


---
## Revision

The `GT()` function and `>` operator are used to check if the ??? value is ??? than the ??? value and output ??? if it is and ??? if it's not.

???

The `GTE()` function and `>=` operator are used to check if the ??? value is ??? than the ??? value and output ??? if it is and ??? if it's not.

???

- first
- second 
- larger
- TRUE
- FALSE
- second
- larger than or equal to
- first
- TRUE
- FALSE
- smaller
- smaller than or equal to

---
## Footnotes

[1:More Examples On GT]
![gt-more-examples](https://img.enkipro.com/33f2d1cdfbec2d450dbcfe709418ce90.png)

[2:More Examples On GTE]
In this example we compare several data types with each other:

![gte-more-examples](https://img.enkipro.com/5a56a51e1ad90c47173140a5ee9feded.png)