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

# For loops

---

## Content

A `for` loop in **R** allows you to iterate over a sequence of values or elements. You can use a `for` loop to execute a block of code for each value or element in the sequence.

Here is the basic syntax of a for loop in **R**:
```r
for (variable in sequence) {
  # code to be executed
}
```

The `variable` is a placeholder for the current value or element in the sequence. The sequence can be any object that can be iterated over, such as a vector, list, or data frame.

Here is an example of a `for` loop that prints the numbers from 1 to 10:
```r
for (i in 1:10) {
  print(i)
}
```

You can also use a `for` loop to iterate over the elements of a character vector:
```r
for (word in c("apple", "banana", "cherry")) {
  print(word)
}
```

---
## Practice

Finish the code to create a `for` loop that itterates over a `vegetables` sequence using `veg` as a variable:

```r
for (??? in ???) {
  # code to be executed
}
```

- `veg`
- `vegetables`

---
## Revision

What is the output of the following code?


```r
for (word in c("apple", "banana", "cherry")) {
  print(word)
}

# ???
# ???
# ???
```

???

- `"apple"`
- `"banana"`
- `"cherry"`
