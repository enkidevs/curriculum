# `Dictionary` - standard mapping type
author: catalin

levels:

  - basic

type: normal

category: must-know

links:

  - >-
    [docs.python.org](https://docs.python.org/3.5/library/stdtypes.html#mapping-types-dict){website}

---
## Content

The **dictionary** (dict) is Python's main mapping type. It maps **hashable** values to arbitrary objects. Dicts are like hashes in Ruby and Perl, and hash tables in C.

You can create a *dictionary* using the `{key: value}` syntax, using the `dict` constructor or even with the help of the `zip` method that returns *tuples* :
```python
d1 ={'first':1, 'second':2}
d2 = dict(first=1, second=2)
d3 = dict(zip(['first','second'], [1,2]))
d4 = dict({'second':2, 'first':1})
```
Get and use an iterator over the keys of a `dictionary`: 
```python
it = iter(d1)
type(it)
<class 'dict_keyiterator' at
0x000000005801A420>
for k in it: print(k)
...
first
second

```
Update a dict with another dict:
```python

prefs = {"fruit": "apple", "car": "Ford"}
prefs
{'car': 'Ford', 'fruit': 'apple'}
prefs2 = {"fruit": "orange"}
prefs.update(prefs2)
prefs
{'car': 'Ford', 'fruit': 'orange'}
```

You can create a **new** dictionary with the same keys as the original (`seq`)  one:
```python
seq = ('one', 'two')
dict = dict.fromkeys(seq)
# dict is {'one': None, 'two': None }
dict = dict.fromkeys(seq,10)
# dict is  {'one: 10, 'two': 10 }

```

---
## Revision

aaa