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

# Local Variables

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

---
## Practice

Which of the following is **NOT** a way to create a local variable in a function in **R**?

???

- `rm("z", x + y)`
- `z <- x + y`
- `assign("z", x + y)`

---
## Revision

**Without** using `assign()`, create a local variable called `z` that sums up the two arguments. Also print the variable.

```r
add <- function(x, y) {
  z ??? ???
  print(???)
}

add(5, 10)
```

- `<-`
- `x + y`
- `z`
- `"z"`
- `assign()`
- `x - y`