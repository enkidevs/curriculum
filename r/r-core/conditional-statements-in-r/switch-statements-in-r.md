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

# Switch Statements

---

## Content

The last, but not least, conditional statement in **R** is the `switch` statement.

---
### Switch

The `switch` statement is a control flow statement in **R** that allows you to choose one of several code blocks to execute based on a value. It is similar to the `if` and `ifelse` statements, but it can be more efficient and easier to read when you have many conditions to check.

Here is an example of how to use the `switch` statement in **R**:
```r
x <- "A"
switch(x,
       "A" = print("You selected A"),
       "B" = print("You selected B"),
       "C" = print("You selected C"))
```

In this example, the code block associated with the value `"A"` is executed, and the message `"You selected A"` is printed to the console.

---
## Practice

What does the `switch` statement do?

```plain-text
a) Select one of several code blocks to execute based on a value
b) Return a value based on a condition
c) Iterate over a sequence of values
d) None of the above
```

???)

- `a`
- `b`
- `c`
- `d`

---
## Revision

Which of the following is a valid way to use the switch statement in R?

A)
```r
x <- "A"
switch(x) {
  "A" = print("You selected A")
  "B" = print("You selected B")
  "C" = print("You selected C")
}
```

B)
```r
x <- "A"
switch(x)
  case "A": print("You selected A")
  case "B": print("You selected B")
  case "C": print("You selected C")
```

C)
```r
x <- "A"
switch(x) {
  "A": print("You selected A")
  "B": print("You selected B")
  "C": print("You selected C")
}
```

D)
```r
x <- "A"
switch(x)
  print("You selected A") if x == "A"
  print("You selected B") if x == "B"
  print("You selected C") if x == "C"
```

???

- `A)`
- `B)`
- `C)`
- `D)`