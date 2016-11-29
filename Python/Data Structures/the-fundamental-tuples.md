# The fundamental `tuples` 
author: catalin

levels:

  - basic

type: normal

category: must-know

links:

  - >-
    [docs.python.org](https://docs.python.org/3.5/tutorial/datastructures.html#tuples-and-sequences){website}

---
## Content

`Tuples` represent one of the three currently implemented **sequence data types** (along with `lists` and `ranges`).


Tuples are used to group any number of items into a single compound value regardless of their type (even nested tuples):
```python
>>> myTuple = ("first", 13, "random", 42)
```
You can extract elements from the tuple using the index operator:
```python
>>> myTuple[3]
42
```
The index used has to be a valid one:
```python
>>> myTuple[4]
IndexError: tuple index out of range
```
Keep in mind that tuples are **immutable** so trying to reassign an item is an error:
```python
>>> myTuple[0] = "ABC" 
TypeError: ...
```
The **tuple assignment** feature allows packing and unpacking of tuples such that a tuple left of the assignment will be assigned all values from the tuple right of the assignment:
```python
>>> flash = ("Berry", "Allen" , 27)
>>> (fname, lname, age) = flash
>>> fname
'Berry'
>>> age
27
```
Tuples are often used for a sequence of values of heterogeneous types (e.g. fields of a database record or columns from a CSV file), while lists are often used for homogeneous items, such as a list of only numbers, or a list of only strings. But this is not a rule, it can be the other way around too.

---
## Practice

Which of the following properly declares a new tuple called `ex_tuple` ? ???

```python
# Tuple 1
new Tuple ex_tuple = (“Enki”, \
                     1, “Python”, 2)

# Tuple 2
ex_tuple = (“Enki”, \
           1, “Python”, 2)

# Tuple 3
new ex_tuple = (“Enki”, \ 
               1, “Python”, 2)
``` 

*`Tuple 2` 
*`Tuple 3` 
*`Tuple 1`

---
## Revision

Extract the element “Enki” from the tuple:

```
ex_tuple = (“Python”, 1, “Enki”, 2)
???[???]
```

*`ex_tuple` 
*`2` 
*`ex_tuple.find` 
*`ex_tuple.search` 
*`3` 
*`1`