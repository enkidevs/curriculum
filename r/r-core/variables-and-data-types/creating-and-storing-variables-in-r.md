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

# Creating and Storing Variables

---

## Content

Variables are a fundamental concept in programming, and **R** is no exception. A variable is a named location in memory that you can store a value in, and later retrieve and use that value. Variables are a way to store and manipulate data in a program.

In **R**, you can create variables using the `<-` operator. For example:
```r
x <- 5
y <- 10
```

To access the value of a variable, you can type the name of the variable inside a `print()`:
```r
print(x)
# 5

print(y)
# 10
```

You can also use the `assign()` function to create and store a variable:
```r
assign("z", c(x, y))
print(z)
# 5 10
```

Or you can create variables using other variables:
```r
a <- x + y
print(a)
# 15
```

---
## Practice

Which of the following is **NOT** a way to create a variable in **R**?

???

- `a <=`
- `x = 5`
- `y <- 10`
- `z = c(x, y)`

---
## Practice

Finish the code to create a new variable called `z` by summing the values of the `x` and `y` variables. Print the new variable.
```r
x <- 5
y <- 5
??? <- x ??? y

???(z)
# 10
```

- `z`
- `+`
- `print`
- `output`
- `plus`
