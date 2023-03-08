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
  context: standalone
---

# Basic Data Types in R

---

## Content

**R** has several basic data types, including:

`character`: characters, such as "hello" or "goodbye"
```r
greeting <- "hello"
print(greeting)
# "hello"
```

`numeric`: numbers, either integers or decimals

```r
numbers <- c(1, 2, 3, 4, 5)
print(numbers)
# 1 2 3 4 5

decimals <- c(1.1, 2.2, 3.3)
print(decimals)
# 1.1 2.2 3.3
```

`logical`: boolean values, either `TRUE` or `FALSE`:

```r
booleans <- c(TRUE, FALSE, TRUE, FALSE)
print(booleans)
# TRUE FALSE TRUE FALSE
```

`factor`: categorical variables
```r
cities <- factor(c("New York", "Chicago", "San Francisco", "New York"))
print(cities)
# New York Chicago San Francisco New York
# Levels: Chicago New York San Francisco
```

`NULL`: represents an empty object
```r
empty <- NULL
print(empty)
# NULL
```

---
## Practice

Which of the following is a basic data type in R?

???

- `numeric`
- `matrix`
- `function`
- `data frame`

---
## Revision

What is the basic data type for a vector of categorical variables in R?

???

- `factor`
- `character`
- `numeric`
- `logical`
- `NULL`