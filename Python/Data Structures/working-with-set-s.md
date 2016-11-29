# Working with `set`s
author: catalin

levels:

  - advanced

type: normal

category: must-know

links:

  - >-
    [www.python-course.eu](http://www.python-course.eu/sets_frozensets.php){website}

  - >-
    [docs.python.org](https://docs.python.org/3.5/library/stdtypes.html#set-types-set-frozenset){website}

---
## Content

Python's `sets` work like mathematical sets. Unlike `tuples` or `lists`, a `set` can't contain **duplicate** items. Its items are **unordered**.

Create a set with the `set` keyword; pass an `iterable` as argument:
```python
>>> enki = "Enki"
>>> s = set(enki)
>>> s
{'i', 'n', 'k', 'E'}
```

Create a set with `{ } ` constructor :
```python
>>> s = {'E', 'n', 'k', 'i'}
>>> s
{'k', 'E', 'i', 'n'}
```

`Sets` support union, intersection, difference, symmetric difference and membership test operations:

```python
>>> s1 = set([1,2])
>>> s2 = set([2,3])
>>> s1 | s2     #union
{1, 2, 3}
>>> s1 & s2     #intersection
{2}
>>> s1 - s2     #difference
{1}
>>> s1 ^ s2     #symmetric difference
{1, 3}
>>> 1 in s1     #membership test
True
>>> 4 in s1     #membership test
False
```
Since sets remove duplicates, they can be used to find the unique items in an iterable.

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