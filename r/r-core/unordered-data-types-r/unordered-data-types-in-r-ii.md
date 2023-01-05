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
    - type-in-the-gap
  context: standalone

---

# More Unordered Data Types

---
## Content

In the previous insight we learned what **vectors** are. Now we will learn about **lists**.

---
### Lists

A list is an ordered collection of objects, which can be of different types. You can create a list using the `list()` function. For example:

```r
# list with elements of different types
w <- list(1, "a", TRUE)  
```
Just like *vectors*, you can access the elements of a list using their indices, which start at 1. For example:

```r
# 1st element of w
w[1] 
# 1

# 2nd element of w
w[2] 
# a

# 3rd element of w
w[3] 
# TRUE
```

You can also use negative indexing to access the elements of a list in reverse order.
```r
# Access the last element of a vector
w[-1]
# TRUE
```


---
## Practice

Finish the code to create a `skills` list containing three skills:
```r
??? <- ???("Pilot", "Doctor", "Programmer")
```

- `skills`
- `list`
- `people`
- `create`


---
## Revision

Finish the code to create a *numeric* list called `numbers`:
```r
??? <- ???(
  1, 2, 3, 4, 5
)

print(numbers)
# 1 2 3 4 5
```

- `numbers`
- `list`
- `numeric`
- `output`