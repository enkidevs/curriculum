# Sets
author: catalin

levels:

  - beginner

type: normal

category: must-know

links:

  - >-
    [www.python-course.eu](http://www.python-course.eu/sets_frozensets.php){website}

  - >-
    [docs.python.org](https://docs.python.org/3.5/library/stdtypes.html#set-types-set-frozenset){website}

---
## Content

Python's `sets` work like mathematical sets. Unlike `tuples` or `lists`, a `set` contains **unique**, **unordered** items.

One way of creating a set is by calling the `set` constructor function and passing an `iterable` as argument:
```python
enki = "Enki"
s = set(enki)
print(s)
# {'i', 'n', 'k', 'E'}
```

Another way is by using the default `{ } ` constructor :
```python
>>> s = {'E', 'n', 'k', 'i'}
>>> s
{'k', 'E', 'i', 'n'}
```

`Sets` support union, intersection, difference, symmetric difference and membership test operations, of which we'll talk in a later workout.

One useful application of them is to extract unique items from another iterable data structure.

---
## Practice

Which character(s) is used when finding the symmetric difference between two sets? ???

*`^`
*`s`
*`s+`
*`s-`
*`s^`

---
## Revision

What is the following code snippet doing with the two sets?

 ???

```
s1 = set([‘a’, ‘b’])
s2 = set([‘b’, ‘c’])
print(s1 | s2)
```

*Printing the union of s1 and s2.
*Printing s1 and s2.
*Printing the intersection of s1 and s2.
