---
author: Stefan-Stojanovic
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone

---

# as.matrix

---

## Content

The `as.matrix` converts an object to matrix type.

```r
# Convert a vector to a matrix
v <- c(1, 2, 3, 4)
m <- as.matrix(v)
print(m)  
#      [,1]
# [1,]    1
# [2,]    2
# [3,]    3
# [4,]    4

# Convert a list to a matrix
l <- list(c(1, 2), c(3, 4))
m <- as.matrix(l)
print(m)  
#      [,1] [,2]
# [1,]    1     2
# [2,]    3     4
```

---
## Practice

Which of the following will create a 3x3 matrix from a numeric vector?

```r
# A
m <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3)

# B
m <- as.matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3)

# C
m <- as.matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 2, ncol = 4)

# D
m <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 2, ncol = 4)

# ???)
```


- `B`
- `A`
- `C`
- `D`

---
## Revision

Which of the following will create a 2x4 matrix from a character vector?

```r
# A
m <- matrix(c("a", "b", "c", "d", "e", "f", "g", "h"), nrow = 2, ncol = 4)

# B
m <- as.matrix(c("a", "b", "c", "d", "e", "f", "g", "h"), nrow = 2, ncol = 4)

# C
m <- matrix(c("a", "b", "c", "d", "e", "f", "g", "h"), nrow = 2, ncol = 4)

# D
m <- matrix(c("a", "b", "c", "d", "e", "f", "g", "h"), nrow = 4, ncol = 2)

# ???)
```


- `B`
- `A`
- `C`
- `D`
