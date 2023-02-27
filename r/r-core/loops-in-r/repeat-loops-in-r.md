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

# Basic Data Types in R

---

## Content

A `repeat` loop allows you to execute a block of code indefinitely in **R**, until a `break` statement is encountered. You can use a `repeat` loop to perform an action indefinitely, or to perform an action until a certain condition is met.

Here is the syntax for a `repeat` loop in R:
```r
repeat {
  # code to be executed
}
```

The code in the loop is executed repeatedly until a `break` statement is encountered.

Here is an example of a `repeat` loop that prints the numbers from `1` to `10`:
```r
i <- 1
repeat {
  if (i > 10) {
    break
  }
  print(i)
  i <- i + 1
}
```

Here is an example of a repeat loop that uses the `break` statement to exit the loop when the value of `i` is `5`:
```r
i <- 1
repeat {
  if (i == 5) {
    break
  }
  print(i)
  i <- i + 1
}
```

Here is an example of a `repeat` loop that uses the `next` statement to skip the iteration when the value of `i` is `even`:
```r
i <- 1
repeat {
  if (i > 10) {
    break
  }
  if (i %% 2 == 0) {
    i <- i + 1
    next
  }
  print(i)
  i <- i + 1
}
```

---
## Practice

Complete the following code snippet to print the numbers from 1 to 10:

```r
i <- 1
repeat {
  if (??? ??? 10) {
    break
  }
  print(i)
  i <- i + 1
}
```

- `i`
- `>`
- `i + 1`
- `<`
- `i - 1`

---
## Revision

What is the output of the following code?

```r
i <- 1
repeat {
  if (i > 10) {
    break
  }
  if (i %% 2 == 0) {
    i <- i + 1
    next
  }
  print(i)
  i <- i + 1
}
```

???

- `1 3 5 7 9`
- `1 2 3 4 5 6 7 8 9 10`
- `2 4 6 8 10`
- `1 2 4 6 8 10`