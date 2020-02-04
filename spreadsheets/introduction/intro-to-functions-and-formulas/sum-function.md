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

# The Sum function

---
## Content

The `SUM` function is used to add all values/cells specified in its argument.

Let's say we have a table where we input money saved for each month every year:

![example-table](https://img.enkipro.com/614fb05bcbcf3cd5fd082b3b607c5b79.png)

We can input `=SUM(C6:C17)` or `=SUM()` and while the cursor is in the `SUM` parentheses click on C6 and shift-click on C18 to select that.

After inputting `=SUM(C6:C17)` and hitting enter, our cell will display the result of the `SUM` function.

![sum-function](https://img.enkipro.com/d1698476840a7f87883efd299617d0e7.png)

As you can see in the image above, the highlighted C18 cell displays the result.
And Excel makes it easy to see which function is inputted into that field by looking at the top left side of the picture.

---
## Practice

Create a function that will sum up all the values from the cell K63 to K88.

???

* `=SUM(K63:K88)`
* `=SUM(K63-K88)`
* `SUM(K63:K88)`
* `SUM(K63-K88)`
