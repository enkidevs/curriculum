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

# Functions in R

---

## Content

In **R**, a function is a reusable block of code that performs a specific task. Functions can take in arguments and return values.

You can define a function using the `function` keyword, followed by the function `name` and a pair of parentheses `()`. The arguments go inside the parentheses, separated by commas. The function body goes inside curly braces `{}`.

Here is an example of a function that adds two numbers:
```r
add <- function(x, y) {
  x + y
}

result <- add(5, 10)
print(result)
# 15
```

You can use the `return()` function to specify the value that the function should return:
```r
add <- function(x, y) {
  return(x + y)
}

result <- add(5, 10)
print(result)
# 15
```

You can also specify default values for the arguments using the `=` operator:
```r
add <- function(x = 1, y = 2) {
  return(x + y)
}

result <- add()
print(result)
# 3

result <- add(5)
print(result)
# 7

result <- add(y = 10)
print(result)
# 11
```

---
## Practice

Which of the following is **NOT** a way to define a function in **R**?

???

- `add <- function(x, y) {x + y}`
- `add(x, y) => {x + y}`
- `function add(x, y) {x + y}`
- `def add(x, y): return x + y`

---
## Revision

Which function can be used to specify the value that a function should return in **R**?

???

- `return()`
- `result()`
- `output()`
- `value()`