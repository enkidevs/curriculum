---
author: Stefan-Stojanovic
type: normal
category: how-to
---

# Always Check Function Names


---

## Content

Google Sheets have numerous functions you can use. Some of these functions have similar usage but different names and vice versa.

For instance, let's say we wanted to use the `COUNT` function to count how many numerical values are in a selected range of cells.

When we type `=COUNT` in a cell, we get multiple functions to choose from.

![multiple-functions](https://img.enkipro.com/040955b7b36ef7fc3d7901f5bc37ccc2.png)

The `=COUNT()` function checks the number of numeric values. 

However, if we accidentally chose the `=COUNTA()` function, it would also count any non-numerical values.

![count-all-values](https://img.enkipro.com/56052cb217d50c9a3344a4af504fcf2b.png)

Make sure you review which function you want before selecting it.

Luckily, each function has a small description of what it does under its name. So, all we have to do is check that and we're good to go.

Example of `=COUNT()` vs `=COUNTA()`:

![count-vs-counta](https://img.enkipro.com/9739a8a9b55ab0f71d4e7f7274b24e15.png)

As you can see in the example above, not checking your function names can give incorrect outputs which could yield problems.
 
