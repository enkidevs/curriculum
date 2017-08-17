# Immutable sets with `frozenset`
author: catalin

levels:

  - advanced

type: normal

category: must-know

parent: working-with-set-s

notes: >
  By Vasudev:


  Added this:


  Frozensets can be used when you know that the elements you are going to put
  into a set, will stay constant, that is, no elements will be added later. E.g.
  a set of lowercase English vowels will only ever contain 'a', 'e', 'i', 'o'
  and 'u'. 

links:

  - >-
    [docs.python.org](https://docs.python.org/3.5/library/stdtypes.html#set-types-set-frozenset){website}

---
## Content

Even though a `set` can't contain mutable objects, a set itself is in fact **mutable**.

This can be seen from the existence of methods such as `add` which mutates the `set`:
```python
>>> s = set("Enk")
>>> s.add('i')
>>> s
{'n', 'E', 'k', 'i'}
```
Python provides a way of creating an **immutable** set - the type is called `frozenset`:
```python
>>> s = frozenset("Enk")
>>> s.add('i')
# Traceback (most recent call last):
#   File "<input>", line 1, in <module>
#   AttributeError: 'frozenset' object
#   has no attribute 'add'

```
Frozensets can be used when you know that the elements you are going to put into a set, will stay constant, that is, no elements will be added later. E.g. a set of lowercase English vowels will only ever contain 'a', 'e', 'i', 'o' and 'u'.

---
## Revision

When are `frozenset` s used in Python? ???

*When no further elements will be added to the set.
*When there will be lots of added elements in the set.
*When the set will contain no elements.
