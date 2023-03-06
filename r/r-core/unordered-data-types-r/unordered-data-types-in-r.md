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

# Unordered Data Types in R

---
## Content

In **R**, there are two types of unordered data structures: **vectors** and **lists**.

---
### Vectors

A vector is a one-dimensional array of data elements of the same type, such as *numeric*, *character*, or *logical*. You can create a vector using the `c()` function, which stands for "concatenate." For example:

```r
# Create a numeric vector
numeric_vector <- c(1, 2, 3, 4, 5)

# Create a character vector
character_vector <- c("a", "b", "c", "d", "e")

# Create a logical vector
logical_vector <- c(TRUE, FALSE, TRUE, TRUE, FALSE)
```
You can access the elements of a vector using indexing, which starts at 1 for the first element.

```r
# Access the second element of a vector
numeric_vector[2]
# 2

character_vector[2]
# "b"

logical_vector[2]
# FALSE
```

You can also use negative indexing to access the elements of a vector in reverse order.
```r
# Access the last element of a vector
numeric_vector[-1]
# 5

character_vector[-1]
# "e"

logical_vector[-1]
# FALSE
```


---
## Practice

A ??? is a ??? array of data elements of ??? data type.

???

- `vector`
- `one-dimensional`
- `the same`
- `different`
- `list`
- `two-dimensional`

---
## Revision

Finish the code to create a *character* vector called `numers`:
```r
??? <- ???(
  "1", "2", "3", "4", "5"
)

print(numbers)
# "1" "2" "3" "4" "5"
```

- `numbers`
- `c`
- `numeric`
- `output`