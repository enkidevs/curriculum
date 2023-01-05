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

A while loop allows you to execute a block of code as long as a certain condition is TRUE in R. You can use a while loop to perform an action until a certain condition is met, or to perform an action indefinitely.
Here is the syntax for a while loop in R:
```r
while (condition) {
  # code to be executed
}
```
The condition is an expression that is evaluated before each iteration of the loop. If the condition is TRUE, the code in the loop is executed. If the condition is FALSE, the loop is terminated.

Here is an example of a while loop that prints the numbers from 1 to 10:
```r
i <- 1
while (i <= 10) {
  print(i)
  i <- i + 1
}
```

You can use the break and next statements to control the flow of a while loop. The break statement breaks out of the loop and terminates it, while the next statement skips the rest of the current iteration and goes to the next one.

Here is an example of a while loop that uses the break statement to exit the loop when the value of i is 5:
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
Here is an example of a while loop that uses the next statement to skip the iteration when the value of i is even:
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

You can use the break and next statements together to create more complex loops. For example, you can use a break statement to exit the loop when a certain condition is met, and use a next statement to skip certain iterations.
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