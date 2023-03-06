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

# The lapply and sapply Functions

---

## Content

The `lapply` and `sapply` functions are two closely related functions in R that allow you to apply a function to a list or vector, and return a list or vector with the results. These functions are faster than looping through the elements one at a time, because they allow the computer to perform the operations in parallel, rather than sequentially.

Here are the basic syntaxes of the `lapply` and `sapply` functions:
```r
lapply(X, FUN, ...)
sapply(X, FUN, ...)
```

- `X` is the list or vector that you want to apply the function to.
- `FUN` is the function that you want to apply to the list or vector.
- `...` are any additional arguments that you want to pass to the function.


Here is an example of how to use the `lapply` function to apply a function to a list:
```r
my_list <- list(1:3, 4:6, 7:9)
lapply(my_list, sum)
# 6 15 24
```

The `lapply` function returns a list with the results of the function applied to each element of the input list.

The `sapply` function is similar to the `lapply` function, but it returns a vector with the results, rather than a list. This can be useful when you want to simplify the output of the function, or when you want to store the results in a variable for further processing.

Here is and example of the `sapply` function:
```r
vector <- 1:9
sapply(vector, sqrt)
# 1 1.4142136 1.7320508 2 2.236068 2.4494898 2.6457513 2.8284271 3
```

---
## Practice

Complete the following code snippet to apply the mean function to each element of the scores list:
```r
scores <- list(c(100, 90, 80), c(70, 60, 50))
lapply(??? , mean)
```

- `scores`
- `c(100, 90, 80)`
- `c(70, 60, 50)`
- `c(100, 90, 80, 70, 60, 50)`

---
## Revision

What is the output of the following code?

```r
scores <- list(c(100, 90, 80), c(70, 60, 50))
sapply(scores, mean)
```

???

- `[90 60]`
- `[6, 15, 24]`
- `[85, 55]`
- `[1, 4, 7]`