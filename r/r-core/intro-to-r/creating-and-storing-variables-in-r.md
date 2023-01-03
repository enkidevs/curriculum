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

# Creating and Storing Variables in R

---

## Content

In **R**, you can create variables using the `<-` operator. For example:
```r
x <- 5
y <- 10
```

You can also use the `=` operator, but it is generally recommended to use `<-` as it is easier to read and less prone to errors.

To access the value of a variable, you can type the name of the variable inside a `print()`:
```r
print(x)
# 5

print(y)
# 10
```

You can also use the `assign()` function to create a variable and store it in the global environment:
```r
assign("z", c(x, y))
print(z)
# 5 10
```



---
## Practice

Which of the following is **NOT** a way to create a variable in **R**?

???

-``a <=`
-`x = 5`
-`y <- 10`
-`z = c(x, y)`