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

# Basic Data Types in R

---

## Content

```r
# Function to perform arithmetic operations
calculator <- function(x, y, op) {
  if (op == "+") {
    return(x + y)
  } else if (op == "-") {
    return(x - y)
  } else if (op == "*") {
    return(x * y)
  } else if (op == "/") {
    return(x / y)
  } else {
    return("Invalid operator")
  }
}

# Test the calculator function
print(calculator(2, 3, "+"))  # 5
print(calculator(2, 3, "-"))  # -1
print(calculator(2, 3, "*"))  # 6
print(calculator(2, 3, "/"))  # 0.6666666666666666
print(calculator(2, 3, "^"))  # Invalid operator
```


This program defines a calculator function that takes three arguments: `x` and `y` are the operands, and `op` is the operator. The function uses an `if-else` statement to check the value of `op` and perform the appropriate arithmetic operation on `x` and `y`. If the operator is invalid, the function returns the string `"Invalid operator"`.

To test the calculator function, we call it with different values of `x`, `y`, and `op` and print the results.


---
## Practice

Complete the code to finish the program:

```r
calculate_area <- function(length, width) {
  return(length * width)
}

length <- 8
width <- 5

area <- calculate_area(length, width)

print(paste("The area of the rectangle is", area))
```



---
## Revision

What is the basic data type for a vector of categorical variables in R?

???

- `factor`
- `character`
- `numeric`
- `logical`
- `NULL`