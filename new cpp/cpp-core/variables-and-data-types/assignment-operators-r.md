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

# Assignment Operators in R

---

## Content

In R, you can use assignment operators to assign values to variables.

The most common assignment operator is the `<-` operator, which is used to assign a value to a variable:
```r
x <- 5
y <- 10

print(x)
# 5

print(y)
# 10
```

You can also use the `=` operator:

```r
x = 5
y = 10

print(x)
# 5

print(y)
# 10
```

However, the `<-` operator is the recommended way to assign values to variables, while the `=` operator is generally used for argument passing in function calls.
```r
multiply <- function(a, b){
  a * b
}

# pass 5 for a and 10 for b in the multiply function
result = multiply(a = 5, b = 10)

print(result)
# Output: [1] 50
```

---
## Practice

The most common assignment operator in R is ???.

- `<-`
- `->`
- `==`
- `is`

---
## Revision

Which of these variables uses the recommended way of assigning values in **R**?

```r
x <- 5
y = 10
```

???

- x
- y
