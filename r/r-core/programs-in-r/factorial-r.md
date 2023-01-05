---
author: Stefan-Stojanovic

tags:
  - introduction
  - discussion
type: normal
category: must-know

---

# Basic Data Types in R

---

## Content

This program calculates the factorial of a number `n`, which is the product of all positive integers from `1` to `n`.
```r
# function to calculate the factorial of a number
factorial <- function(n) {
  # initialize result to 1
  result <- 1
  
  # loop from 1 to n
  for (i in 1:n) {
    # multiply result by i
    result <- result * i
  }
  
  # return result
  return(result)
}

# test the function with different values of n
print(factorial(1))  # 1
print(factorial(5))  # 120
print(factorial(10)) # 3628800
```
