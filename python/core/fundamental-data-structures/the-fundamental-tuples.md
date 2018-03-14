---
author: catalin

levels:

  - basic

type: normal

category: must-know


links:

  - '[docs.python.org](https://docs.python.org/3.5/tutorial/datastructures.html#tuples-and-sequences){website}'


---

# The fundamental `tuple`

---
## Content

`Tuples` are one of the currently implemented **sequence data types** (alongside with `lists`, `ranges` and `dictionaries`).

Tuples are used to group any number of items into a single compound value regardless of their type (even nested tuples):
```python
myTuple = ("first", 13, "random", 42)
```

You can extract elements from the tuple using the index operator:
```python
print(myTuple[3])
# 42
```

Similar to lists, the index starts at value `0`. If we try to access an index that does not exist in the tuple we will encounter the following error:
```python
print(myTuple[4])
# IndexError: tuple index out of range
```

Keep in mind that tuples cannot be modified, so trying to reassign an item raises an error:
```python
myTuple[0] = "ABC"
# TypeError: ...
```

The **tuple assignment** feature allows packing and unpacking of tuples:
```python
flash = ("Barry", "Allen" , 27)
fname, lname, age = flash
print(fname)
# 'Barry'
print(age)
# 27
```

When we would like to store more values form the tuple on a single variable we can use `*` ( the spread operator ). Check out the following example:
```python
a, *b, c = (1, 2, 3, 4, 5)
print(b)
# [2, 3, 4]
print a
# [1]
print c
# [5]
```
Tuples are often used for to store a sequence of heterogeneous values (e.g. fields of a database record or columns from a CSV file). However, it's they are used for other purposes too.

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
### How does unpacking work?
```
# What will be the value printed by the following code block?
a, \*b, c = (1, 2, 3, 4, 5)
print(b)
```

???

* 2,3,4
* 2
* 3,4,5
* 1,2,3,4,5

