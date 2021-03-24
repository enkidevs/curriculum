---
author: Stefan-Stojanovic
type: normal
category: how-to
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# OR


---

## Content

The `OR` function returns `TRUE` if any of its arguments are logically true and `FALSE` if all of them are not logically true.

Example:

![one-true-all-true](https://img.enkipro.com/89ced1a955b7a4f13fde86183b7b4aee.png)

As you can see in the first image above, our `OR` function has 2 arguments and since one or more of them evaluate to `TRUE` the function evaluates to `TRUE`. 

In the second image, we changed the signs of the highlighted arguments and because all of them are `FALSE` the function evaluated to `FALSE`.

**Note:[1]**

Negative number:

![negative](https://img.enkipro.com/7ccd404f00e8a47124974fa911aff8fd.png)

Zero:

![zero](https://img.enkipro.com/60f5057e8f216957394f5ab531da640f.png)

An empty cell creates an error:

![empty](https://img.enkipro.com/e277a5fe735d0238146f76aa8b25bcdd.png)

The `OR` function also works with strings, however, you can't compare numbers and strings.

Example with strings:

![or-strings](https://img.enkipro.com/4858549698f027543a0122bc1deb96f3.png)

In the first image, we have compared to a user inputted string and it evaluated to `TRUE`.

In the second image, the green highlighted argument evaluates to `TRUE` so the whole function evaluates to `TRUE`. 


---

## Practice

`OR` is a ??? function that evaluates to ??? if one of its arguments is ??? and ??? if all of its arguments evaluate ???.

- logical
- TRUE
- true
- FALSE
- false
- statistical


---

## Footnotes

[1:0 is false]
All positive and negative numbers except 0 logically evaluate to `TRUE`, 0 evaluates to `FALSE`.
