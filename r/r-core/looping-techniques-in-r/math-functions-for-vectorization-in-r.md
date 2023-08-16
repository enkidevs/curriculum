---
author: Stefan-Stojanovic
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

Complete the following code snippet to take the square root of each element of the `vector` variable:

```r
vector <- 1:9

print(vector)
# 1 2 3 4 5 6 7 8 9

print(???(vector))

#  1.000000 1.414214 1.732051 2.000000 2.236068 2.449490 2.645751 2.828427 3.000000

```

- `sqrt`
- `square`
- `double`
- `root`

---
## Revision

What is the output of the following code?

```r
numbers <- -6:-1

print(numbers)
# -6 -5 -4 -3 -2 -1

print(abs(numbers))
#  ???
```

- `6 5 4 3 2 1`
- `1 2 3 4 5 6`
- `-6 -5 -4 -3 -2 -1`
- `-1 -2 -3 -4 -5 -6`
