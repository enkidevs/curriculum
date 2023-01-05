---
author: Stefan-Stojanovic

tags:
  - introduction
  - discussion
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

# The matrix Function

---

## Content

The `matrix` function is a useful function in R that allows you to create a matrix, or a two-dimensional array, of data. Matrices are useful for storing and manipulating tabular data, and are often used for statistical and mathematical operations.

Here is the basic syntax of the `matrix` function:
```r
matrix(data, nrow, ncol, byrow = FALSE, dimnames = NULL)
```

- `data` is a vector of data that will be converted into a matrix.
- `nrow` is the number of rows in the matrix.
- `ncol` is the number of columns in the matrix.
- `byrow` is a logical argument that specifies whether the data should be filled by row (`TRUE`) or by column (`FALSE`, the default).
- `dimnames` is a list of length 2 containing the row and column names of the matrix.

Here is an example of how to use the matrix function to create a matrix of data:
```r
# Create a 3x3 matrix of data
m <- matrix(1:9, nrow = 3, ncol = 3)
print(m)
#      [,1] [,2] [,3]
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9
```


In this example, we use the `matrix` function to create a 3x3 matrix of data, using the values `1:9` as the data. The `nrow` and `ncol` arguments specify the dimensions of the matrix, and the `byrow` argument specifies that the data should be filled by row. The resulting matrix is then printed to the console.

---
## Practice

Which of the following will create a 2x3 matrix with the data in `x` filled by column?

```r
x <- c(1, 2, 3, 4, 5, 6)
```

```r
# A)
m <- matrix(x, nrow = 2, ncol = 3, byrow = FALSE)

# B)
m <- matrix(x, nrow = 3, ncol = 2, byrow = TRUE)

# C)
m <- matrix(x, nrow = 2, ncol = 3, byrow = TRUE)

# D)
m <- matrix(x, nrow = 3, ncol = 2, byrow = FALSE)
```

???

- `A)`
- `B)`
- `C)`
- `D)`



---
## Revision

True or false?

The following code will create a 3x3 matrix of characters:

```r
x <- c("a", "b", "c", "d", "e", "f", "g", "h", "i")
m <- matrix(x, nrow = 3, ncol = 3, byrow = TRUE)
```

???

- `True`
- `False`