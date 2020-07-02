---
author: Stefan-Stojanovic

aspects:
  - workout

type: normal

category: how to

---

# UNIQUE

---
## Content

The `UNIQUE()` function is used to return only unique rows of a given array or range of values.

The first unique row is determined from top to bottom, any row that equals the first unique row is ignored.

Syntax:
```plain-text
UNIQUE(range)
```

The `range` can be an array or range of data.

`UNIQUE(A1:C10)`

![unique-range](https://img.enkipro.com/2b3403e142620d932627f8673a49b354.gif)

`UNIQUE({1, 2; 3, 4; 1, 2; 3, 4})`

![unique-array](https://img.enkipro.com/2563add9963c85070f207d329f0f7e1f.gif)

> 💡 If you get a row that seems like its a duplicate, check for any extra spaces in the cells as well as formatting. If one row has 25% and another has 0.25 percent, they are both unique since one is formatted as a percent and one just says "percent".


---
## Practice

The `UNIQUE()` function ???

- only returns unique rows of a given array or range of values.
- only returns non-unique rows of a given array or range of values.