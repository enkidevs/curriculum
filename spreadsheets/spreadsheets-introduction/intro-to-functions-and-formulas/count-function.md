---
author: Stefan-Stojanovic
type: normal
category: how-to
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# COUNT


---

## Content

The `COUNT` function is used to count numerical data.

Let's say we have this table where we input how much money we saved each month.

![example-image](https://img.enkipro.com/fbe1632afae52be09ec3144d0198534e.png)

Notice how a cell has `0` as a value, and two other cells contain text data.

In cell `C18`, we have entered the following formula `COUNT(C6:C17)`. You would normally expect the cell to display `12` (the total number of cells). This is not the case because the `COUNT` function only takes into account numerical data, and it excludes `0`s.


---

## Practice

Create a function that will count how many numerical values are present from the cell `C7` to `C32`.

=???

- COUNT(C7:C32)
- COUNT(C7-C32)
- COUNT[C7:C32]
- COUNT[C7-C32]
 