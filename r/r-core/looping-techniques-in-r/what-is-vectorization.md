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

# Vectorization in R

---

## Content

Vectorization is a technique for performing operations on **arrays** or **vectors**, rather than looping through the elements one at a time. Vectorization can be faster than looping, because it allows the computer to perform the operations in parallel[1], rather than sequentially[2].

Here is an example of a loop that adds 1 to each element of a vector:
```r
vector <- 1:10
for (i in 1:length(vector)) {
  vector[i] <- vector[i] + 1
}
```

You can achieve the same result using vectorization:
```r
vector <- 1:10
vector <- vector + 1
```

Vectorization can be especially useful when working with large data sets, because it can significantly reduce the processing time.

`+`, `-`, `*`, `/`, `^`: These arithmetic operators support vectorization, allowing you to perform arithmetic operations on arrays or vectors.
```r
vector <- 1:10
vector + 1
vector - 1
vector * 2
vector / 2
vector ^ 2
```


You can use vectorization to improve the performance of your **R** code, especially when working with large data sets. However, you should be careful when using vectorization, because it can result in code that is less readable and more difficult to debug.


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