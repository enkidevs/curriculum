---
author: Aaron7Sun

tags:

  - introduction

levels:

  - basic

  - medium

  - beginner
aspects:
  - introduction
standards:
  python.native-types-operations.4: 10

type: normal

category: tip




---

# Simple way of swapping variables

---
## Content

In most languages, swapping two variables requires a third variable or arithmetic manipulations.

But in Python you can use tuple assignment:
```
>>> a, b = 1, 2
>>> a, b = b, a
>>> a, b
(2, 1)
```

---
## Practice

Complete the following snippet such that the variables are swapped, using tuple assignment:
```
>>> d, e = 3, 4
>>> d, e  = ???, ???
>>> d, e
(4, 3)
```


* `e`
* `d`
* `swap`
* `switch`
* `a`

---
## Revision

What is the output of the following snippet?
```
>>>  x, y = 5, 4
>>>  x, y = y, x
>>>  x, y
???
```


* `4, 5`
* `5, 4`
* `error`
