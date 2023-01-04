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


In **R**, a dictionary is a collection of key-value pairs, similar to a **map** or **hash** table in other programming languages. You can use dictionaries to store data that you want to access by a unique identifier (the key) rather than an index.

In `R`, you can create dictionaries similarly to lists.

Here is an example of a dictionary:
```r
fruits <- c(apple = "red", orange = "orange", banana = "yellow")
```

Difference between a dictionary and a list in R is that elements in a Dictionary have a name (key). 

To access an element in a dictionary, you can use either the `[[]]` or `[]` operator for indices or the key. 

For example:
```r
fruits[[1]]
# "red"

fruits[1]
# apple 
# "red"

fruits["apple"]
# apple 
# "red" 

fruits[["apple"]]
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
- `list[["pear"]]`
- `list[1]`

---
## Revision

What function can be used to get the number of elements in a list in **R**?

???

- `length()`
- `size()`
- `count()`
- `lengths()`