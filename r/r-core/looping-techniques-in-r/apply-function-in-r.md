---
author: Stefan-Stojanovic
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
  
---

# apply Function

---

## Content

The `apply` function is a powerful and flexible function in R that allows you to apply a function to a matrix or array, and return a vector, matrix, or array with the results. This can be faster than looping through the elements one at a time, because it allows the computer to perform the operations in parallel.

Here is the basic syntax of the `apply` function:
```r
apply(X, MARGIN, FUN, ...)
```

- `X` is the matrix or array that you want to apply the function to.
- `MARGIN` is an integer that specifies which dimension of the matrix or array you want to apply the function to. If `MARGIN` is `1`, the function is applied to each row of the matrix or array. If `MARGIN` is `2`, the function is applied to each column of the matrix or array. If `MARGIN` is `c(1, 2)`, the function is applied to all elements of the matrix or array.
- `FUN` is the function that you want to apply to the matrix or array.
- `...` are any additional arguments that you want to pass to the function.

Here is an example of how to use the `apply` function to apply a `sum` function to each row of a matrix:
```r
matrix <- matrix(1:9, 3, 3)
print(matrix)
#      [,1] [,2] [,3]
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9


apply(matrix, 1, sum)
# 12 15 18
```

---
## Practice

Which of the following is the correct syntax for the apply function?

???

- `apply(X, MARGIN, FUN, ...)`
- `apply(X, FUN, MARGIN, ...)`
- `apply(MARGIN, X, FUN, ...)`
- `apply(X, MARGIN, ..., FUN)`

---
## Revision

Which of the following will apply the `sum` function to each row of the matrix matrix?

???

- `apply(matrix, 1, sum)`
- `apply(matrix, 2, sum)`
- `apply(matrix, c(1, 2), sum)`
- `apply(matrix, c(2, 1), sum)`