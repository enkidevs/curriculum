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

# Local Variable Methods

---

## Content

To access the value of a local variable, you can type the name of the variable inside a `print`:

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

Which of the following is a way to remove the local variable called `z` in a function in **R**?

???

- `rm(z)`
- `assign("z")`
- `get("z") `

---
## Revision

Using `get()` access and print the local variable `z`:
```r
add <- function(x, y) {
  assign("z", x + y)
  ???(???(???))
}

add(5, 10)
# 15
```

- `print`
- `get`
- `"z"`
- `z`
- `"get"`