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

# as.logical

---

## Content

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

---
## Practice

Which of the following will create a logical vector from a character vector?

```r
# A
v <- as.vector(c(TRUE, FALSE, TRUE))

# B
v <- as.logical(c(TRUE, FALSE, TRUE))

# C
v <- as.vector(c("True", "False", "True"))

# D
v <- as.logical(c("True", "False", "True"))

# ???
```


- `D`
- `A`
- `B`
- `C`

---
## Revision

Finish the code to create a logical vector from a character vector.

```r
v <- ???.???(c("True", "False", "True"))
print(v)
# TRUE FALSE  TRUE
```

- `as`
- `logical`
- `to`
- `character`
- `from`
