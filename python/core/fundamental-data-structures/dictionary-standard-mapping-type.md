---
author: catalin

levels:

  - basic

type: normal

category: must-know


links:

  - '[docs.python.org](https://docs.python.org/3.5/library/stdtypes.html#mapping-types-dict){website}'


---

# `Dictionary` - standard mapping type

---
## Content

The **dictionary** (dict) is Python's main mapping type. It maps **hashable** values to arbitrary objects, as long as they provide key integrity (their value cannot be changed after being initialized, e.g. lists will throw an error). Dictionaries are equivalent to Java's HashMap or C's hash tables.

You can create a *dictionary* using the `{key: value}` syntax, using the `dict` constructor:
```python
d1 = {'first':1, 'second':2}
d2 = dict(first=1, second=2)
d3 = dict({'first':1, 'second':2})
```
And access the pairs with:
```python
print(d1['first'])
# 1
print(d2)
# {'second': 2, 'first': 1}
```

To concatenate two dictionaries, use `update`:
```python
prefs = {"fruit": "apple", "car": "Tesla"}
prefs2 = {"fruit": "orange"}
prefs.update(prefs2)
print(prefs)
# {'car': 'Tesla', 'fruit': 'orange'}
```
Be careful when using `update`, as a dictionary cannot have multiple entries with the same key.

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

