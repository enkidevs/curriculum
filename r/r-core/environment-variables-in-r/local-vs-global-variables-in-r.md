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

---

# Local vs Global Variables

---

## Content


Global variables can be accessed from anywhere in your **R** session, while local variables can only be accessed within the function where they are defined.

Here is an example that illustrates the difference between global and local variables:

```r
x <- 5

add <- function(y) {
  z <- x + y
  print(z)
}

add(10)
# 15

print(z)
# Error: object 'z' not found
```

In this example, `x` is a global variable, while `z` is a local variable. The `add()` function uses both variables, but `z` is only defined within the function and is not accessible outside of it.

You can use the `<<-` operator to create a global variable within a function:
```r
add <- function(y) {
  z <<- x + y
  print(z)
}

add(10)
# 15

print(z)
# 15
```

Note that the use of the `<<-` operator is generally discouraged as it can lead to confusing and hard-to-debug code.

---
## Practice

Which of the following is **NOT** true about global and local variables in **R**?

???

- The `<<-` operator is generally recommended for creating global variables in **R**.
- The `<<-` operator can be used to create a global variable within a function.
- Local variables can only be accessed within the function where they are defined.
- Global variables can be accessed from anywhere in your **R** session.

---
## Revision

Which of the following is **NOT** a way to access the value of a global environment variable in **R**?

???

- `rm("x")`
- `print(x)`
- `get("x")`
- `x[1]`