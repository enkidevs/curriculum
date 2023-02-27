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

# break & next In while Loops

---

## Content

You can use the `break` and `next` statements to control the flow of a `while` loop. The `break` statement breaks out of the loop and terminates it, while the `next` statement skips the rest of the current iteration and goes to the next one.

Here is an example of a `while` loop that uses the `break` statement to exit the loop when the value of `i` is 5:
```r
i <- 1
while (TRUE) {
  if (i == 5) {
    break
  }
  print(i)
  i <- i + 1
}
```

Here is an example of a `while` loop that uses the `next` statement to skip the iteration when the value of `i` is even:
```r
i <- 1
while (i <= 10) {
  if (i %% 2 == 0) {
    i <- i + 1
    next
  }
  print(i)
  i <- i + 1
}
```

You can use the `break` and `next` statements together to create more complex loops. For example, you can use a `break` statement to exit the loop when a certain condition is met, and use a `next` statement to skip certain iterations.
```r
i <- 1
while (i <= 10) {
  if (i == 5) {
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

Complete the following code snippet to stop when `i` reached 7:

```r
i <- 1
while (TRUE) {
  if (??? == ???) {
    ???
  }
  print(i)
  i <- i + 1
}
```

- `i`
- `7`
- `break`
- `next`
- `j`
- `< 7`

---
## Revision

What is the output of the following code?

```r
i <- 1
while (i <= 10) {
  if (i == 5) {
    break
  }
  if (i %% 2 == 0) {
    i <- i + 1
    next
  }
  print(i)
  i <- i + 1
}

# ???
```

- `1 3`
- `1 2 3 4 5 6 7 8 9 10`
- `2 4 6 8 10`
- `1 2 4 6 8 10`