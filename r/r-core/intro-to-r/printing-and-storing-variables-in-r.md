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

# Printing and Storing Variables in R

---

## Content

In this lesson, you'll learn how to print messages and store variables in **R**.


### Printing Messages
---

To print a message to the console in **R**, you can use the `print()` function. For example:
```r
print("Hello, world!")
```

You can also use the `cat()` function to print a message. The `cat()` function is similar to `print()`, but it does not add a newline after the message. For example:
```r
cat("Hello, world!")
```

### Storing Variables
---

To store a value in a variable in **R**, you can use the assignment operator `<-`. For example:
```r
x <- 10
y <- 20
z <- x + y
```

You can also use the `=` operator to store a value in a variable, but it is generally recommended to use `<-` as it is more readable and less prone to errors.


> 💬 Why are you interested in **R**?
> 
> Leave a comment or view some of the other comments for inspiration before moving on.

---
## Practice

Which of the following is the correct way to store the value `5` in a variable `x`?

???

- x <- 5
- x = 5
- x < 5
- x =< 5

---
## Footnotes

[1: Printing]
Printing messages in **R** is useful for debugging and for communicating information to the user.

[2: Variables]
Variables are used to store values in a program, making it easier to reuse those values and perform operations on them.