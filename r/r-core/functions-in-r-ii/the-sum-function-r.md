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
    - type-in-the-gap
  context: standalone

---

# The sum Function

---

## Content

The `sum` function is a basic function in **R** that calculates the `sum` of a vector or array of numbers. It is often used in conjunction with other functions, such as `apply`, to perform operations on matrices or arrays.

Here is the basic syntax of the `sum` function:
```r
sum(x, na.rm = FALSE, ...)
```

- `x` is the vector or array of numbers that you want to sum.
- `na.rm` is an optional argument that specifies whether to remove missing values (NA) from the calculation. If `na.rm` is `TRUE`, missing values are removed. If `na.rm` is `FALSE`, missing values are treated as zero.
- `...` are any additional arguments that you want to pass to the function.

Here is an example of how to use the sum function to calculate the sum of a vector:
```r
vector <- c(1, 2, 3, 4, 5)
print(sum(vector))
# 15
```

Here is an example of how to use the sum function to calculate the sum of a matrix:
```r
matrix <- matrix(1:9, 3, 3)
print(matrix)
#      [,1] [,2] [,3]
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9

print(sum(matrix))
# 45
```

Note: the `sum` function is not vectorized, which means that it cannot operate on multiple vectors or arrays at the same time. If you want to calculate the `sum` of multiple vectors or arrays, you should use the Reduce function or loop through the elements one at a time.


---
## Practice

Which of the following statements is true about the `sum` function in **R**?

???

- All of the above.
- The sum function returns the sum of all elements in an input vector.
- The sum function only works on vectors of numeric data.
- The sum function ignores NA values in the input vector.

---
## Revision

What is the output of the following code?
```r
vec1 <- c(1, 2, 3)
vec2 <- c(4, 5, 6)
vec3 <- c(7, 8, 9)

print(sum(vec1, vec2, vec3))
# ???
```

- `45`
- `21`
- `15`
- `Error: invalid 'type' (list) of argument`