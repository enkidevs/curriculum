---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - new
  - workout

type: normal

category: how to

---

# The Count function

---
## Content

The `COUNT` function is used to count numerical data. This function ignores any text in the cell range.

Let's say we have this table where we input how much money we saved each month.

![example-image](https://img.enkipro.com/fbe1632afae52be09ec3144d0198534e.png)

The `COUNT` function will only count numerical values as well as ignore any zeroes. Since our table has a 0 and 2 words, the result is 9 numerical values.

---
## Practice

Create a function that will count how many numerical values are present from the cell C7 to C32.

???

* `=COUNT(C7:C32)`
* `=COUNT(C7-C32)`
* `COUNT(C7:C32)`
* `COUNT(C7-C32)`
