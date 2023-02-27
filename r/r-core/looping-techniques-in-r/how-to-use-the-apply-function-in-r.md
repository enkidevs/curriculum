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

# Using the apply Function

---

## Content

Here is an example of how to use the `apply` function to apply a `sum` function to each column of a matrix:
```r
matrix <- matrix(1:9, 3, 3)
print(matrix)
#      [,1] [,2] [,3]
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9

apply(matrix, 2, sum)
# 6 15 24
```

Here is an example of how to use the `apply` function to apply a `sum` function to all elements of a matrix:
```r
matrix <- matrix(1:9, 3, 3)
print(matrix)
#      [,1] [,2] [,3]
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9


apply(matrix, c(1, 2), sum)
# 45
```

**Note**: you should be careful when using the `apply` function, because it can result in code that is less readable and more difficult to debug. 

You should consider using the `apply` function only when it is significantly faster than alternative approaches, such as looping through the elements one at a time.

---
## Practice

Apply the `sum` function to all elements of a matrix:

```r
matrix <- matrix(1:9, 3, 3)
print(matrix)
#      [,1] [,2] [,3]
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9

???(???, ???, ???)
# 45
```

- `apply`
- `matrix`
- `c(1, 2)`
- `sum`
- `1`
- `2`

---
## Revision

Apply the `sum` function to each column of a matrix:

```r
matrix <- matrix(1:9, 3, 3)
print(matrix)
#      [,1] [,2] [,3]
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9

???(???, ???, ???)
# 6 15 24
```

- `apply`
- `matrix`
- `2`
- `sum`
- `c(1, 2)`