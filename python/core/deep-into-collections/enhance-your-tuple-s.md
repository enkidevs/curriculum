---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

aspects:
  - introduction
  - workout
  - deep

links:

  - '[docs.python.org](https://docs.python.org/3.5/library/collections.html#chainmap-examples-and-recipes){website}'

parent: get-more-with-collections
notes: >+
  Issues found:


  This line early in the code:


  point = namedtuple('3DPoint', 'x y z')


  gives a syntax error because of 3Dpoint:


  ValueError: Type names and field names must be valid identifiers: '3DPoint'


  Fix it.


  Should also mention the benefits of named tuples and common / important uses,

  such as for dealing with rows in CSV files or from database tables.

  The attribute lookup feature and the helpful ways of printing named tuple

  values, should be mentioned (the docstring and the __repr__ method), either in
  the same insight, or in another

  insight if this one becomes too long.


  See:


  https://docs.python.org/3.6/library/collections.html#collections.namedtuple


  Can also mention in brief that Named tuple instances do not have per-instance
  dictionaries, so they are lightweight and require no more memory than regular
  tuples.

standards:
  python.native-types-operations.6: 10


---

# Enhance your `tuple`s

---
## Content

Standard Python `tuples` are lightweight sequences of immutable objects, yet their implementation may prove inconvenient in some scenarios.

Instead, the `collections` module provides an enhanced version of a tuple, `namedtuple`, that makes member access more natural (rather than using integer indexes).

Import `namedtuple`:
```python
from collections import namedtuple
```

Create a `namedtuple` object:
```python
point = namedtuple('point', 'x y z')
A = point(x=3, y=5, z=6)
print(A)
# point(x=3, y=5, z=6)
```

Access a specific member:
```python
print(A.x)
# 3
```
Because `namedtuple`s are **backwards compatible** with normal `tuple`s, member access can be also done with indexes:
```python
print(A[0])
# 3
```

To convert a `namedtuple` to a `dict` (Actually a `OrderedDict`):
```python
print(A._asdict())
#OrderedDict([('x', 3), ('y', 5), ('z', 6)])
```

---
## Practice

Convert the `namedtuple` into an `OrderedDict` :

```python
question = ???('Practice', \
               'a b c')
p = question(a = 10, b = 5, c = 2)
print(p.???())
# OrderedDict([('a', 10), \
#             ('b', 5), ('c', 2)])
```


* `namedtuple`
* `_asdict`
* `named_tuple`
* `tuple_instance`
* `new`
* `asOrderedDict`
* `asDict`

---
## Revision

Create a named tuple object:

```python
question = ???('Revision', \
               'a b c')
q = ???(a = 10, b = 5, c = 2)
print(q)
# Revision(a=10, b=5, c=2)
```


* `namedtuple`
* `question`
* `Revision`
* `print`
* `named_tuple`
* `new_named_tuple`
* `tuple_instance`
