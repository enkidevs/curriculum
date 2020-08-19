---
author: Stefan-Stojanovic

type: normal

category: how to

---

# `<`, `<=`, `LT()` & `LTE()`

---
## Content

> 💡 When comparing strings, Sheets will compare each character individually, starting from the first. 
> They're compared by their position in the alphabet, meaning that `a` is **lower than** `b`. Also, capitalization doesn't count, so `a` is the same as `A` when being compared.

### `LT()` & `<`

The less than comparison operator is equivalent to the `LT()` function.

Both can be used to check if the first value is smaller than the second value. 

If the first value is less than the second value the result will be `TRUE`, otherwise it will be `FALSE`.

![less-than-lt](https://img.enkipro.com/4398757e0ce3b8b165ba8da0a2d345cd.png)

Take a look here[1] for more examples.

### `LTE()` & `<=`

The "less than or equal to" comparison operator is equivalent to the `LTE()` function.

Both can be used to check if the first value is smaller than or equal to the second value. 

If the first value is less than or equal to the second value the result will be `TRUE`, otherwise it will be `FALSE`.

![less-than-lte](https://img.enkipro.com/8e82ab33dd7beb598eeaf7d497697c23.png)

Take a look here[2] for more examples.

---
## Revision

The `LT()` function and `<` operator are used to check if the ??? value is ??? than the ??? value and output ??? if it is and ??? if it's not.

???

The `LTE()` function and `<=` operator are used to check if the ??? value is ??? than the ??? value and output ??? if it is and ??? if it's not.

???

- first
- smaller
- second
- TRUE
- FALSE
- first
- smaller than or equal to
- second
- TRUE
- FALSE
- larger
- larger than or equal to

---
## Footnotes

[1:More Examples On LT]
![lt-more-examples](https://img.enkipro.com/3652b70fcf435dc2ed8928546903bd45.png)

[2:More Examples On LTE]
In this example we compare several data types with each other:

![lte-more-examples](https://img.enkipro.com/27772e6dc507d68d00b536321bfbb61d.png)