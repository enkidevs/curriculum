---
author: Stefan-Stojanovic
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

# What Are Flow Control Statements?

---

## Content

The first conditional statement we will learn is `if`.

---
### if Statements

`if` statements are used to execute a code block if a condition is `TRUE`. The basic syntax of an `if` statement is as follows:
```r
if (condition) {
  # Code to execute if condition is TRUE
}
```

Here's an example where we check if a number is bigger than 3:
```r
x <- 5
if (x > 3) {
  print('it is greater!')
}

# "it is greater!"
```

---
## Practice

Add the missing pieces of code for the `if` statement:
```r
x <- 5
y <- 3
if (???) {
  print('x is greater than y')
}
```

- `x > y`
- `x < y`
- `x`
- `y`

---
## Revision

What will the following code output?

```r
x <- 10
y <- 20
if (x > y) {
  print('x is greater than y')
}
```

???

- Nothing as the condition wasn't TRUE
- x is greater than y
- it will error