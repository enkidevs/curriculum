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

# Combining Variables in R

---

## Content

In **R**, you can use the `c()` function to combine variables into a vector. Here is a function that takes in a sequence of values and returns a vector:
```r
x <- 5
y <- 10

z <- c(x, y)
print(z)
# 5 10
```

You can also use the `cbind()` function to combine variables horizontally (i.e., side by side) into a matrix. For example:
```r
x <- 5
y <- 10
z <- 10

matrix1 <- cbind(x, y)
print(matrix1)
#      x  y
# [1,] 5 10

matrix2 <- cbind(z, y)
print(matrix2)
#      z  y
# [1,] 5 10
# [2,]10 10
```

Alternatively, you can use the `rbind()` function to combine variables vertically (i.e., one on top of the other) into a matrix. For example:
```r
x <- 5
y <- 10
z <- 5

matrix3 <- rbind(x, y)
print(matrix3)
#      [,1]
# x    5
# y   10

matrix4 <- rbind(z, y)
print(matrix4)
#      [,1]
# z    5
# y   10
```


---
## Practice

Which of the following is **NOT** a way to combine variables in **R**?

???

- `vector = merge(x, y)`
- `z = c(x, y)`
- `matrix1 = bind(x, y)`
- `matrix2 = rbind(z, y)`

---
## Revision

Which function can be used to combine variables vertically into a matrix in **R**?

???

- `rbind()`
- `cbind()`
- `combine()`
- `merge()`