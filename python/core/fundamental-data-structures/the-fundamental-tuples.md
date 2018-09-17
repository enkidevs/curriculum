---
author: catalin

tags:

  - introduction

levels:

  - basic

type: normal

category: must-know
aspects:
  - introduction

standards:
  python.native-types-operations.4: 10

links:

  - '[docs.python.org](https://docs.python.org/3.5/tutorial/datastructures.html#tuples-and-sequences){website}'


---

# The fundamental `tuple`

---
## Content

`Tuples` are another one of the three currently implemented **sequence data types** (alongside with `lists` and `ranges`).

Tuples are used to group any number of items into a single compound value regardless of their type (including nested tuples):
```python
myTuple = ("first", 13, "random", 42)
```

Extract elements from the tuple using the index operator:
```python
print(myTuple[3])
# 42
```

The index used must be valid:
```python
print(myTuple[4])
# IndexError: tuple index out of range
```

Keep in mind that tuples cannot be modified, so trying to reassign an item raises an error:
```python
myTuple[0] = "ABC"
# TypeError: ...
```

The **tuple assignment** feature allows packing and unpacking of tuples such that a tuple left of the assignment will be assigned all values from the tuple right of the assignment:
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
print(b)
# [2, 3, 4]
```
Tuples are often used for a sequence of values of heterogeneous types (e.g. fields of a database record or columns from a CSV file), while lists are often used for homogeneous items, such as a list of only numbers, or a list of only strings. But this is not a rule; it can be the other way around too.

---
## Practice

Which of the following properly declares a new tuple called `ex_tuple`?

???

```python
# Tuple 1
new Tuple ex_tuple = ("Enki",
                     1, "Python", 2)

# Tuple 2
ex_tuple = ("Enki",
           1, "Python", 2)

# Tuple 3
ex_tuple = ["Enki",
               1, "Python", 2]
```


* `Tuple 2`
* `Tuple 3`
* `Tuple 1`

---
## Revision

Extract the element "Enki" from the tuple:

```python
ex_tuple = ("Python", 1, "Enki", 2)
???[???]
```


* `ex_tuple`
* `2`
* `ex_tuple.find`
* `ex_tuple.search`
* `3`
* `1`

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
