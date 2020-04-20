---
author: kapnobatai136

tags:
  - introduction

type: normal

category: must-know

aspects:
  - introduction

links:
  - '[Tuples and Sequences](https://docs.python.org/3.5/tutorial/datastructures.html#tuples-and-sequences){website}'

---

# Tuple Assignment

---
## Content

The **tuple assignment** feature allows packing and unpacking such that a tuple left of the assignment will be assigned all values from the tuple right of the assignment:
```python
flash = ("Berry", "Allen" , 27)
(fname, lname, age) = flash
print(fname)
# 'Berry'
print(age)
# 27
```

In case of tuples with multiple fields, use the `*` unpacking syntax:
```python
a, *b, c = (1, 2, 3, 4, 5)
print(a)
# 1
print(b)
# [2, 3, 4]
print(c)
# 5
```

> Note: only one starred expression (`*`) is allowed per assignment[1].

In this example, we assign the first element of the tuple to `a`, the last element of the tuple to `c`, and everything in-between to `b`.

Tuples are often used for a sequence of values of heterogeneous types[2] (e.g. fields of a database record or columns from a CSV file), while lists are often used for homogeneous items[3]. This is not a rule; it can be the other way around too.

Some advantages of tuples include:
- faster than lists (due to them being immutable)
- makes your code *safer* (expecially when working with constant data)
- could be used as dictionary keys

---
## Practice

What will the following `print` statements output?

```py
myTup = ('a', 1, 'd', 13)
a, *b, c = myTup

print(a)
# ???

print(b)
# ???

print(c)
# ???
```

* 'a'
* [1, 'd']
* 13
* a
* (1, 'd')
* '13'

---
## Quiz
### how does unpacking work?

```python
# What will be the value printed by the following code block?
a, *b, c = (1, 2, 3, 4, 5)
print(b)
```

 ???

* 2,3,4
* 2
* 2,3,4,5
* 1,2,3,4,5

---
## Footnotes

[1:Star Assignment]
If you try to use two starred expressions in assignment, Python will throw an error:
```py
mytup = (1, 2, 3, 4, 5)
a, *b, c, *d = mytup
# SyntaxError: two starred expressions in assignment
```

[2:Heterogeneous]
Meaning that you can use multiple data types (e.g. a tuple that contains integers and strings).

[3:Homogenous]
Meaning that you should use one data type (e.g. a list made up of integers).