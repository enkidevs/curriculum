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
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone

---

# Global Environment Variables in R

---

## Content

In **R**, a global environment is a place where all the objects you create are stored. When you start an **R** session, a global environment is created automatically.

You can use the `ls()` function to list the objects in the global environment:
```r
x <- 5
y <- 10

ls()
# "x" "y"
```

You can also use the `objects()` function to list the objects in the global environment:

```r
objects()
# [1] "x" "y"
```

To access the value of a global environment variable, you can type the name of the variable:

```r
print(x)
# 5

print(y)
# 10
```

You can also use the `get()` function to access the value of a global environment variable:
```r
get("x")
# 5

get("y")
# 10
```

To remove a global environment variable, you can use the `rm()` function:
```r
rm(x)

ls()
# "y"

objects()
# [1] "y"
```

---
## Practice

Which of the following is **NOT** a way to list all objects in the global environment in **R**?

???

- `get()`
- `ls()`
- `objects()`


---
## Revision

What function can be used to remove a global environment variable in R?

???

- `rm()`
- `delete()`
- `remove()`
- `erase()`