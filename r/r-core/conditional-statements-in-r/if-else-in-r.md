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
    - type-in-the-gap
  context: standalone

---

# ifelse Statements

---

## Content

Previously we learned about the `if` statement; now let's learn about the `ifelse` statement.

---
### ifelse Statement

`ifelse` statements are similar to `if` statements, but they allow you to specify a value to return based on whether a condition is `TRUE` or `FALSE`. 

Here's the syntax for the `ifelse`:
```r
result <- ifelse(condition, value_if_true, value_if_false)
```

Here's how you would use it to check if one number is bigger than another:
```r
x <- 5
y <- 3

result <- ifelse(x > y, "x is larger", "y is larger")
print(result)
# "x is larger"
```

Another way to use `if-else` statements is via blocks of code; like most other languages:
```r
x <- 10

if (x > 0) {
  print("x is positive")
} else {
  print("x is not positive")
}

# "x is positive
```


---
## Practice

Add the missing pieces of code for the `ifelse` statement:

```r
x <- 5
y <- 3

result <- ???(??? > y, "True", "False")
print(result)
# "True"
```

- `ifelse`
- `if`
- `else`
- `x`

---
## Revision

Complete the gaps for the code to work.

```r
x <- 10

??? (x > 0) {
  print("x is positive")
} ??? {
  print("x is not positive")
}

# "x is positive
```

???

- `if`
- `else`
- `ifelse`
- `elseif`