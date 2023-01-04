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

# Basic Data Types in R

---

## Content

Loops are a fundamental programming concept that allow you to repeat a block of code multiple times.

In **R**, you can use loops to perform tasks such as iterating over the elements of an array, data frame, or list, or to execute a block of code until a certain condition is met.

There are three types of loops in **R**: `for` loops, `while` loops, and `repeat` loops.

### For

A `for` loop allows you to iterate over a sequence of values or elements. You can use a for loop to execute a block of code for each value or element in the sequence. For example:
```r
# Print the numbers from 1 to 10
for (i in 1:10) {
  print(i)
}

# Print the elements of a character vector
for (word in c("apple", "banana", "cherry")) {
  print(word)
}
```

A while loop allows you to execute a block of code as long as a certain condition is TRUE. You can use a while loop to perform an action until a certain condition is met, or to perform an action indefinitely. For example:
```r
# Print the numbers from 1 to 10
i <- 1
while (i <= 10) {
  print(i)
  i <- i + 1
}

# Print "Hello, World!" indefinitely
while (TRUE) {
  print("Hello, World!")
}
```
A repeat loop is similar to a while loop, but the condition is checked at the end of the loop instead of at the beginning. You can use a repeat loop to perform an action indefinitely or until a certain condition is met. For example:
```r
# Print the numbers from 1 to 10
i <- 1
repeat {
  print(i)
  i <- i + 1
  if (i > 10) {
    break
  }
```



---
## Practice

Which of the following is a basic data type in **R**?

???

- `numeric`
- `integer`
- `matrix`
- `function`
- `data frame`

---
## Revision

What is the basic data type for a vector of categorical variables in **R**?

???

- `factor`
- `character`
- `numeric`
- `logical`
- `NULL`