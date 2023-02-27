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
    - type-in-the-gap
  context: standalone

---

# Function Methods

---

## Content

In **R**, you can use function methods to manipulate functions.

The `formals()` function returns a list of the arguments of a function:
```r
add <- function(x, y) {
  x + y
}

formals(add)
# $x
# $y
```

The `body()` function returns the body of a function as an expression:
```r
add <- function(x, y) {
  x + y
}

body(add)
# x + y
```

The `environment()` function returns the environment in which a function was defined:
```r
add <- function(x, y) {
  x + y
}

environment(add)
# <environment: R_GlobalEnv>
```

You can use the `call()` function to call a function with a list of arguments:
```r
add <- function(x, y) {
  x + y
}

args <- list(5, 10)
call(add, args)
# 15
```

---
## Practice

Which function can be used to return the body of a function as an expression in **R**?

???

- `body()`
- `formals()`
- `environment()`
- `call()`

---
## Revision

Which function can be used to call a function with a list of arguments in **R**?

???

- `call()`
- `formals()`
- `body()`