---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

notes: >+
  Insight is too brief for the subtopic covered.  Should explain how in a

  for loop over an iterable, next() is called repeated to return each next

  item, and the loop stops when StopIteration is raised by the iterator.


  Also important, the insight should show, with an example, how to create

  and use custom iterators, and how they fit smoothly into the other parts

  of the Python language that make use of iterators, such as for loops,

  with no difference between the way custom iterators are used in loops

  and comprehensions, and the way built-in iterators are used in the

  same. This is the main reason why iterators/iterables are considered so
  important 

  and pervasive in Python - they unify the language and provide a common 

  idiom for dealing with many situations involving iteration over a sequence.


links:

  - >-
    [docs.python.org](https://docs.python.org/3.5/library/stdtypes.html#iterator-types){website}

---
# Iterables vs iterators

---
## Content

The concept of **Iteration** over sequences, and hence of iterators, pervades Python (`for` loops,  `maps` , or comprehensions, ...). Most container data types (list, tuples, strings, dicts, etc.) support iteration.

An **ITERABLE** object must define either an  `__iter__` function (that returns an **ITERATOR**) or a `__getitem__` function (suitable for index lookup).

An **ITERATOR** object must define a `__next__` method (called `next` before Python 3.0) that will return the next value of the iteration.

```python
>>> a = (1, 2, 3) # a is ITERABLE
>>> i = iter(a) # is an ITERATOR
>>> next(i) # returns and advances
1
>>> next(i)
2
>>> next(i)
3
>>> next(i)
# error StopIteration


```