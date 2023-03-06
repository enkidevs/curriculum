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

# as.vector

---

## Content

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

Finish the code to convert a matrix into to a vector. Then print the vector

```r
m <- ???(1:4, nrow = 2)
v <- ???.???(m)
print(???)  
# 1 3 2 4
```

???

- `matrix`
- `as`
- `vector`
- `v`
- `from`
- `to`

---
## Revision

Which of the following will create a vector called `v` from numbers?
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

???)

- `D`
- `A`
- `B`
- `C`
