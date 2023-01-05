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
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# as.logical & as.vector

---

## Content


### as.logical

The `as.logical` converts an object to logical (TRUE/FALSE) type.

```r
# Convert a string to a logical value
x <- "TRUE"
x <- as.logical(x)
print(x)  
# TRUE

# Convert a vector of strings to a vector of logical values
v <- c("TRUE", "FALSE", "TRUE")
v <- as.logical(v)
print(v)  
# TRUE FALSE TRUE

# Convert a matrix of characters to a matrix of logical values
m <- matrix(c("TRUE", "FALSE", "TRUE", "FALSE"), nrow = 2)
m <- as.logical(m)
print(m)  
# TRUE FALSE TRUE FALSE
```


### as.vector

The `as.vector` converts an object to vector type.

```r
# Convert a number to a vector
x <- 123
x <- as.vector(x)
print(x)  
# 123

# Convert a matrix to a vector
m <- matrix(1:4, nrow = 2)
v <- as.vector(m)
print(v)  
# 1 3 2 4
```


---
## Practice

Which of the following will create a logical vector from a character vector?

```r
# A)
v <- as.vector(c(TRUE, FALSE, TRUE))

# B)
v <- as.logical(c(TRUE, FALSE, TRUE))

# C)
v <- as.vector(c("True", "False", "True"))

# D)
v <- as.logical(c("True", "False", "True"))
```

???

- `D)`
- `A)`
- `B)`
- `C)`

---
## Revision

Which of the following will create a character vector from a logical vector?

```r
# A) 
v <- as.character(c(TRUE, FALSE, TRUE))

# B) 
v <- as.vector(c("True", "False", "True"))

# C) 
v <- as.character(c(1, 0, 1))

# D) 
v <- as.vector(c(1, 0, 1))
```

???

- `A)`
- `D)`
- `B)`
- `C)`
