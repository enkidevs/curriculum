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

# Local Variables in R

---

## Content

In **R**, a local environment is a place where the objects you create within a function are stored. When you define a function, a local environment is created automatically.

To create a local variable within a function, you can use the `<-` operator. For example:

```r
add <- function(x, y) {
  z <- x + y
  print(z)
}

add(5, 10)
# 15
```

You can also use the `assign()` function to create a local variable and store it in the local environment:

```r
add <- function(x, y) {
  assign("z", x + y)
  print(z)
}

add(5, 10)
# 15
```

To access the value of a local variable, you can type the name of the variable:

```r
add <- function(x, y) {
  z <- x + y
  print(z)
}

add(5, 10)
# 15
```

You can also use the `get()` function to access the value of a local variable:
```r
add <- function(x, y) {
  assign("z", x + y)
  print(get("z"))
}

add(5, 10)
# 15
```

To remove a local variable, you can use the `rm()` function:
```r
add <- function(x, y) {
  z <- x + y
  rm(z)
  print(z)
}

add(5, 10)
# Error: object 'z' not found
```

---
## Practice

Which of the following is **NOT** a way to create a local variable in a function in **R**?

???

- `z <- x + y`
- `assign("z", x + y)`
- `get("z") <- x + y`
- `rm("z", x + y)`

---
## Revision

What function can be used to remove a local variable in a function in **R**?

???

- `delete()`
- `remove()`
- `erase()`
- `rm()`