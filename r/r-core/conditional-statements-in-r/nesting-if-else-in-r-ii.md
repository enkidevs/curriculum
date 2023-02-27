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

---

# Nesting ifelse Statements

---

## Content

To nest `ifelse` statements, you place one `ifelse` statement inside the `then` clause of another `ifelse` statement. Here is an example of how to do this:

Here is an example of a nested `ifelse` statement:
```r
# Initialize variable x
x <- 3

# Nest ifelse statements
result <- ifelse(x > 0, ifelse(x > 2, "x is greater than 2", "x is 1 or 2"), "x is 0 or negative")

# Print the result
print(result)
```

In this example, we use an `ifelse` statement to check if `x` is greater than `0`.
```r
ifelse(x > 0
```

If it is, then we use another `ifelse` statement to check if `x` is greater than 2:
```r
ifelse(x > 0, ifelse(x > 2,
```

If it is, then we print "x is greater than 2".
```r
ifelse(x > 0, ifelse(x > 2, "x is greater than 2"
```

If it is not, then we print "x is 1 or 2":
```r
ifelse(x > 0, ifelse(x > 2, "x is greater than 2", "x is 1 or 2"), 
```

Finally, If `x` is not greater than `0`, then we print "x is 0 or negative":
```r
ifelse(x > 0, ifelse(x > 2, "x is greater than 2", "x is 1 or 2"), "x is 0 or negative")
```

As a result of this code, the output will be "x is greater than 2".

---
## Practice

What is the result of the following nested `ifelse`?

```r
# Initialize variable x
x <- 5

# Nest ifelse statements
result <- ifelse(x > 0, ifelse(x > 10, "x is greater than 10", "x is between 1 and 10"), "x is 0 or negative")

# Print the result
print(result)
# "???"
```

- `x is between 1 and 10`
- `x is greater than 10`
- `x is 0 or negative`
- `Error`