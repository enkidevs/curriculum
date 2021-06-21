---
author: Stefan-Stojanovic
type: normal
category: how-to
links:
  - >-
    [Excel Function
    List](https://support.office.com/en-us/article/excel-functions-alphabetical-b3944572-255d-4efb-bb96-c6d90033e188){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---
 
# What Are Functions?


---

## Content

Functions are nothing more than **predefined formulas**.

Most spreadsheet tools come with many built-in functions that you can use from the get-go. For this reason, you usually don't need to come up with formulas for applications. You'll most likely find a built-in one.

These functions can be used to calculate the sum, average, min and max values, perform a count, calculate logarithms and much more. If you want to find out more you can always check the [list of functions](https://support.office.com/en-us/article/excel-functions-alphabetical-b3944572-255d-4efb-bb96-c6d90033e188) that Excel has.

Just like formulas, functions start with an equals sign. The difference is that the `=` sign is followed by a function name (e.g. `COUNT()`) that takes in zero or more arguments[1].

All functions are written in UPPERCASE letters.

For instance, `=SUM(B2:B3)` would sum all values from cell `B2` to `B3`.

Functions can also input multiple arguments. Here is an example:

```plain-text
= MAX(A1:A3,B2:B3,E7)
```


---

## Practice

What are functions?

???

- Functions are predefined formulas.
- Functions are user made formulas.
- Functions are a type of grouping system.
- Functions are predefined ranges used for transferring data.


---

## Footnotes

[1:Arguments]
An argument is just a cell or a series of cells that you would pass a function. For example, if you had the following function:

```plain-text
= COUNT(A1:A25)
```

In this case, `COUNT()` is the function and `A1:A25` is the argument. Basically, everything between the parentheses is the argument.
