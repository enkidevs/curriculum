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

The **dictionary** (dict) is Python's main mapping type. It maps **hashable** values to arbitrary objects. Dictionaries are like hashes in Ruby and Perl, and hash tables in C.

You can create a *dictionary* using the `{key: value}` syntax, using the `dict` constructor or even with the help of the `zip` method that returns *tuples* :
```python
d1 ={'first':1, 'second':2}
d2 = dict(first=1, second=2)
d3 = dict(zip(['first','second'], [1,2]))
d4 = dict({'first':1, 'second':2})
```
You can use the `iter` function to get an iterator over the keys in the `dictionary`:
```python
it = iter(d1)
type(it)
# type should output:
<class 'dict_keyiterator'>

for k in it: print(k)
...
# for output the output:
first
second

```
You could also concatenate two dictionaries using `update`:
```python

prefs = {"fruit": "apple", "car": "Tesla"}
prefs2 = {"fruit": "orange"}
prefs.update(prefs2)
print(prefs)
# output:
{'car': 'Tesla', 'fruit': 'orange'}
```
Be careful when using `update`, as a dictionary cannot have multiple entries with the same key.

You can create a **new** dictionary using the elements in a sequence (`seq` below) as keys:
```python
seq = ('one', 'two')
newDict = dict.fromkeys(seq)
# newDict is {'one': None, 'two': None }
newDict = dict.fromkeys(seq,10)
# newDict is  {'one: 10, 'two': 10 }

```

---
## Revision

Which of the following is __not__ a valid syntax for creating a Python dictionary?
```
???
```
* `['first':1, 'second':2]`
* `dict(first=1, second=2)`
* `dict({'first':1, 'second':2})`
* `dict.fromkeys(('first', 'second'))`
