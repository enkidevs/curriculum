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

# Introduction to Dictionaries in R

---

## Content

In `R`, dictionaries are known as lists. A list is an ordered collection of elements, where each element can be of a different data type. Lists are created using the `list()` function.

Here is an example of a list:
```r
fruits <- list(apple = "red", orange = "orange", banana = "yellow")
```

The elements in a list are called components, and each component has a name and a value. The names are called keys, and the values are called the elements of the list.

To access an element in a list, you can use either the `[[]]`, `[]` or the `$` operator. 

For example:
```r
fruits[[1]]
# "red"

fruits[1]
# "red"

fruits$apple
# "red"
```

You can also use the `names()` function to get a character vector of the names of the elements in a list:
```r
names(fruits)
# "apple" "orange" "banana"
```

And the `length()` function to get the number of elements in a list:
```r
length(fruits)
# 3
```


---
## Practice

Which of the following is **NOT** a way to access an element in a list in **R**?

- `list.key`
- `list[[1]]`
- `list$key`
- `list[1]`

---
## Revision

What function can be used to get the number of elements in a list in R?

???

- `length()`
- `size()`
- `count()`
- `lengths()`