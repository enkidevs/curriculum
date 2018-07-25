---
author: catalin

levels:

  - basic

type: normal

category: must-know
aspects:
  - introduction
  - workout

standards:
  python.native-types-operations.6: 10

links:

  - '[docs.python.org](https://docs.python.org/3.5/library/stdtypes.html#dictionary-view-objects){website}'

parent: dictionary-standard-mapping-type

---

# `Dictionary` view objects

---
## Content

An interesting feature python provides for dictionaries are *view objects*  which can be generated using any of the following methods:
```python
dict.keys()
# returns a new view of dictionary's keys
dict.values()
# returns a new view of dictionary's values
dict.items()
# returns a new view of dictionary's items
# items are (key, value) pairs
```
The *view objects* are dynamically tied to the parent dictionary. When the parent dictionary is changed this changes are visible in the view objects too.


The number of entries in a dictionary can be easily obtained using `len(dictview)` method:
```python
>>> a = {'one':1, 'two':2}
>>> keys = a.keys()
>>> len(keys)
2
```

One reason for using *view objects* is that iteration over a dictionary is more efficient then using lists for this purpose.
Dictionary's `iter()` method works on dictionary views, returning an iterator over keys, values or items:
```python
iter(keys)
# iterator over keys is returned
```

Also *view objects* provide efficient ways to perform containment tests and set-like operations ( eg. Intersections, Differences, etc. )
The `in` keyword for testing collection membership, can be used both on dictionaries and dictionary views:
```python
>>> 'one' in keys
True
>>> 'three' in keys
False

```

---
## Practice

Complete the code snippet to return the number of entries in the dictionary:

```
>>> d = {'one':1, 'two':2, 'three':3}
>>> ??? = ???.???
>>> len(keys)
```

* keys
* d
* keys()
* length
* size
* keys

---
## Revision

Which keyword is used for testing collection memberships?

```
d = {'python':1}
Enki = d.keys()
'python' ??? Enki
>>> true
```

* in
* has
* holds
* consists
* belongs
