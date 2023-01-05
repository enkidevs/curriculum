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

# as.character & as.double

---

## Content


### as.double
---

The `as.double` converts an object to double (floating point) type.
```r
# Convert a number to a double
x <- 123
x <- as.double(x)
print(x)  
# 123.0

# Convert a vector of numbers to a vector of doubles
v <- c(1, 2, 3)
v <- as.double(v)
print(v)  
# 1.0 2.0 3.0
```


### as.character
---

The `as.character` converts an object to character (string) type.

```r
# Convert a number to a string
x <- 123
x <- as.character(x)
print(x)  
# "123"

# Convert a vector of numbers to a vector of strings
v <- c(1, 2, 3)
v <- as.character(v)
print(v)  
# "1" "2" "3"
```


---
## Practice

Convert the following logical vector to a character vector using the `as.character` function:

```r
x <- c(TRUE, FALSE, TRUE, TRUE)

x <- as.???(???)
print(x) 
# "TRUE" "FALSE" "TRUE" "TRUE
```

- `character`
- `x`
- `y`
- `number`

---
## Revision

Convert the following character vector to a double type using the `as.double` function:

```r
x <- c(1,2, 345)

x <- ???
print(x) 
# 1.0 2.0 345.0
```

- `as.double(x)`
- `as a double`
- `x.as.double`
