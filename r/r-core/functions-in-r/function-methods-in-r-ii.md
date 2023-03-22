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

# More Function Methods

---

## Content

In **R**, there are many more function methods that you can use to manipulate functions.

The `args()` function returns a list of the formal arguments of a function:
```r
add <- function(x, y) {
  x + y
}

args(add)
# x, y
```

The `source()` function reads the source code from a file and evaluates it in the current **R** environment, allowing functions, variables, and other code defined in the file to be used in the current session:
```r
# If you have this code saved in a file called addFunction.R:
add <- function(x, y) {
  x + y
}

# You can load it:
source("addFunction.R")

# Then the add() f unction becomes available in your R session:

result <- add(2, 3)
print(result)
# [1] 5
```

The `deparse()` function returns a character string representation of an object:
```r
add <- function(x, y) {
  x + y
}

deparse(add)
# "function (x, y) " "{"
#   "x + y"
# "}"
```

The `is.primitive()` function returns `TRUE` if an object is a primitive function and `FALSE` otherwise:
```r
is.primitive(mean)
# TRUE

is.primitive(add)
# FALSE
```

---
## Practice

Which function can be used to return a character string representation of an object in **R**?

???

- `deparse()`
- `args()`
- `source()`
- `is.primitive()`

---
## Revision

Which function returns `TRUE` if an object is a primitive function and FALSE otherwise in **R**?

???

- `is.primitive()`
- `args()`
- `source()`
- `deparse()`
