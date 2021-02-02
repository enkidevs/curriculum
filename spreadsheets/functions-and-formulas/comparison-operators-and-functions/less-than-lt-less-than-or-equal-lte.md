---
author: Stefan-Stojanovic
type: normal
category: how-to
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# < , <= , LT() & LTE()


---

## Content

> 💡 When comparing strings, Sheets will compare each character individually, starting from the first. 
> They're compared by their position in the alphabet, meaning that `a` is **lower than** `b`. Also, capitalization doesn't count, so `a` is the same as `A` when being compared.

### `LT()` & `<`

The less than comparison operator is equivalent to the `LT()` function.

Both can be used to check if the first value is smaller than the second value. 

If the first value is less than the second value the result will be `TRUE`, otherwise it will be `FALSE`.

> 💡 `0` is considered to be the same as an empty cell[1].

![less-than-lt](https://img.enkipro.com/4398757e0ce3b8b165ba8da0a2d345cd.png)

Take a look here[2] for more examples on `LT()`.

### `LTE()` & `<=`

The "less than or equal to" comparison operator is equivalent to the `LTE()` function.

Both can be used to check if the first value is smaller than or equal to the second value. 

If the first value is less than or equal to the second value the result will be `TRUE`, otherwise it will be `FALSE`.

![less-than-lte](https://img.enkipro.com/8e82ab33dd7beb598eeaf7d497697c23.png)

Take a look here[3] for more examples on `LTE()`.


---

## Revision

The `LT()` function and `<` operator are used to check if the first value is smaller than the second value and output ??? if it is and ??? if it's not.

The `LTE()` function and `<=` operator are used to check if the first value is smaller than or equal to the second value and output ??? if it is and ??? if it's not.

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
=LT(A1, B1)

// FALSE
```

Would output `FALSE` since zero is the same as an empty cell.

[2:More Examples On LT]
![lt-more-examples](https://img.enkipro.com/3652b70fcf435dc2ed8928546903bd45.png)

[3:More Examples On LTE]
In this example we compare several data types with each other:

![lte-more-examples](https://img.enkipro.com/27772e6dc507d68d00b536321bfbb61d.png)
