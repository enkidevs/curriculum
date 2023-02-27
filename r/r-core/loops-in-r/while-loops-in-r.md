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
  context: standalone

---

# while Loops

---

## Content

A `while` loop allows you to execute a block of code as long as a certain condition is `TRUE`. You can use a `while` loop to perform an action until a certain condition is met, or to perform an action indefinitely.

Here is the syntax for a `while` loop:
```r
while (condition) {
  # code to be executed
}
```

The condition is an expression that is evaluated before each iteration of the loop. If the condition is `TRUE`, the code in the loop is executed. If the condition is `FALSE`, the loop is terminated.

Here is an example of a `while` loop that prints the numbers from 1 to 10:
```r
i <- 1
while (i <= 10) {
  print(i)
  i <- i + 1
}
```

---
## Practice

Complete the following code snippet to print the numbers from 1 to 10:

```r
i <- 1
while (??? <= 10) {
  print(i)
  i <- i + 1
}
```

- `i`
- `integer`
- `I`
- `for`

---
## Revision

What is the output of the following code?

```r
i <- 1
while (i <= 10) {
  print(i)
  i <- i + 2
}

# ???
```

- `1 3 5 7 9`
- `1 2 3 4 5 6 7 8 9 10`
- `2 4 6 8 10`
- `1 2 4 6 8 10`