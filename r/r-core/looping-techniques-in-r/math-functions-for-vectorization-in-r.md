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
  context: standalone

---

# Mathematical Functions that Support Vectorization

---

## Content

R has many built-in mathematical functions. Here are some that support vectorization in R:
```r
vector <- 10
abs(vector)
sqrt(vector)
log(vector)
exp(vector)
```

`abs`: Returns the absolute value of a number or array.
```r
abs(-1)
# 1
abs(-1:10)
# 1 2 3 4 5 6 7 8 9 10
```

`sqrt`: Returns the square root of a number or array.
```r
sqrt(4)
# 2
sqrt(1:5)
# 1 1.4142136 1.7320508 2 2.236068
```

`log`: Returns the natural logarithm (base e) of a number or array.
```r
log(2.71828)
# 1
log(1:5)
# 0 0.69314718 1.0986123 1.3862944 1.6094379 
```

`exp`: Returns the exponent (e^x) of a number or array.


```r
exp(1)
# 2.71828
exp(1:9)
# 2.7182818 7.389056 20.085537 54.59815 148.4132 403.4287 1096.6332 2980.958 8103.084
```

You can use these mathematical functions to perform mathematical operations on arrays or vectors, rather than looping through the elements one at a time. This can be faster, especially when working with large data sets, because it allows the computer to perform the operations in parallel, rather than sequentially.

However, you should be careful when using vectorization, because it can result in code that is less readable and more difficult to debug.

---
## Practice

Complete the following code snippet to double the elements of the `vector` variable:

```r
vector <- 1:10
vector <- ??? ??? 2
```

- `vector`
- `*`
- `matrix`
- `/`

---
## Revision

What is the output of the following code?

```r
vector <- 1:10
vector <- vector * 2 + 1
```

???

- `3 5 7 9 11 13 15 17 19 21`
- `1 3 5 7 9 11 13 15 17 19`
- `2 4 6 8 10 12 14 16 18 20`
- `1 2 3 4 5 6 7 8 9 10`

---
## Footnotes

[1: Parallel Processing]
Parallel processing is the ability of a computer to perform multiple operations at the same time, using multiple processors or cores. Vectorization allows you to take advantage of parallel processing, because it allows the computer to perform the operations in parallel, rather than sequentially. This can significantly reduce the processing time, especially when working with large data sets.

[2: Sequential Processing]
Sequential processing is the ability of a computer to perform one operation at a time, in a specified order. Looping through elements one at a time is an example of sequential processing, because the computer processes each element one at a time, in the order that they appear. Vectorization allows you to perform operations on arrays or vectors, rather than looping through the elements one at a time, which can be faster because it allows the computer to perform the operations in parallel.