---
author: catalin

levels:

  - basic

type: normal

category: must-know

standards:
  python.native-types-operations.6: 10

links:

  - '[docs.python.org](https://docs.python.org/3.5/library/stdtypes.html#mapping-types-dict){website}'


---

# `Dictionary` - standard mapping type

---

## Content

The **dictionary** (dict) is Python's main mapping type. It maps **hashable** values to arbitrary objects.
They behave similar to _lists_, being easily grown or shrunk by adding or removing elements. The two important differences are that items stored in **dictionaries** can only be accessed using their key, and each key can only point to a single value. We call this **key integrity**. Python dictionaries's corespondent in Java is the _HashMap_, in C they are called _hash tables_, and in JavaScript they are called _objects_..

There are several ways to create a _dictionary_:

- using the `{key: value}` syntax
- also we can use the `dict` constructor
- and finally we can use both the above syntax and constructor together

```python
d1 = {'first':1, 'second':2}
d2 = dict(first=1, second=2)
d3 = dict({'first':1, 'second':2})
```

This is how we access elements:

```python
print(d1['first'])
# 1
print(d2)
# {'second': 2, 'first': 1}
```

One interesting feature _dictionaries_ have is the `update()` method. It behaves similar to a concatenation of two lists, but with a few differences. Basically it merges the keys and values from one dictionary into another and overwrites values of the same key:

```python
prefs = {"fruit": "apple", "car": "Tesla"}
prefs2 = {"fruit": "pear","animal": "dog"}
prefs.update(prefs2)
print(prefs)
# {'car': 'Tesla', 'fruit': 'orange',
# "animal": "dog"}
```

Be careful when using `update`, as a dictionary can not have multiple entries with the same key.

---

## Practice

Fill in the following snippet, such that it will output the value of key "dog":

```python
dict = {"cat": "persan", "dog": "pug"}
???(dict???)
```

- print
- [dog]
- [cat]
- (dog)

---

## Revision

Which of the following is **not** a valid syntax for creating a Python dictionary?

```
???
```

- `['first':1, 'second':2]`
- `dict(first=1, second=2)`
- `dict({'first':1, 'second':2})`
- `dict.fromkeys(('first', 'second'))`
