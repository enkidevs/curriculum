---
author: Stefan-Stojanovic
type: normal
category: how-to
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# AND


---

## Content

The `AND` function returns `TRUE` if all of its arguments are logically true and `FALSE` if only a single one is not logically true.

Example:

![one-false-all-false](https://img.enkipro.com/525000b0f6922364f5e34796c9895ff9.png)

As you can see in the first image above, our `AND` function has 3 arguments and they all evaluate to `TRUE`. 

In the second image, we changed the sign of the highlighted argument, and because one of the arguments was `FALSE` the function evaluated to `FALSE`.

**Notes[1]:**

Negative number:

![negative](https://img.enkipro.com/c6373ec7efff4e868085c3004dd40dd9.png)

Zero:

![zero](https://img.enkipro.com/6641255330144fe76603b63037d3da9c.png)

An empty cell creates an error:

![empty](https://img.enkipro.com/d04df4cd51daff02f85ff4e2849008ef.png)

The `AND` function also works with strings, however, you can't compare numbers and strings.

Example with strings:

![and-strings](https://img.enkipro.com/4897d587292f0947b0e3fdf6a5f53f48.png)

In the first image, we have compared to a user inputted string and it evaluated to `TRUE`.

In the second image, the red highlighted argument evaluates to `FALSE` so the whole function evaluates to `FALSE`. 


---

## Practice

`AND` is a ??? function that evaluates to ??? if all of its arguments are ??? and ??? if only one of its arguments is ???.

- logical
- TRUE
- true
- FALSE
- false
- statistical


---

## Footnotes

[1:AND notes]

- All positive and negative numbers except 0 logically evaluate to `TRUE`, 0 evaluates to `FALSE`.
- You do not have to only compare cells, you can also input anything you want in the formula.
