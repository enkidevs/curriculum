# `Dictionary` view objects
author: catalin

levels:

  - basic

type: normal

category: must-know

parent: dictionary-standard-mapping-type

standards:
  py.native-types-operations.6: 10

links:

  - >-
    [docs.python.org](https://docs.python.org/3.5/library/stdtypes.html#dictionary-view-objects){website}

---
## Content

Dictionaries provide the following methods:
```python
dict.keys()
# returns a new view of dictionary's keys
dict.values()
# returns a new view of dictionary's values
dict.items()
# returns a new view of dictionary's items
# items are (key, value) pairs
```

Being **view objects**, they are tied dynamically to the dictionary's entries. When the dictionary is changed, the changes are visible in the view.

The `len(dictview)` method will return the number of entries in the dictionary:
```python
>>> a = {'one':1, 'two':2}
>>> keys = a.keys()
>>> len(keys)
2
```
Dictionary's `iter()` method works on dictionary views, returning an iterator over keys, values, or items:
```python
iter(keys)
# iterator over keys is returned
```
In the same fashion, `in` keyword for testing collection membership, can be used both on dictionaries and dictionary views:
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
>>> ???(???)
```

*`len`
*`d`
*`entries`
*`length`
*`size`
*`keys`

---
## Revision

Which keyword is used for testing collection memberships?

```
d = {'python':1}
Enki = d.keys()
'python' ??? Enki
```

*`in`
*`has`
*`holds`
*`consists`
*`belongs`
