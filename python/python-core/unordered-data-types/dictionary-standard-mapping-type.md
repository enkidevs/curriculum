---
author: emmab
tags:
  - introduction
  - workout
type: normal
category: must-know
links:
  - >-
    [Mapping
    Types](https://docs.python.org/3.5/library/stdtypes.html#mapping-types-dict){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# The Dictionary


---

## Content

The **dictionary**, `dict`, is Python's main *mapping type*. Mapping objects are ones that contain *key-value pairs*. 

Here's how you can create an empty dictionary:
```python
usingBrackets = {}

usingDict = dict()
```

Here is an example of a populated dictionary:

```python
my_dict = {
    'name': 'Jack', 
    'age': 26
}
```

In the example above, `'name'` and `'Jack'` are a *key-value pair*. `'name'` acts as the *key*, and `'Jack'` as the *value*.

Dictionaries are similar to lists because they are easily mutable - *we can add and remove items*.

Two important differences are:

- items can only be accessed *using their key* rather than their index.

- each key can only point to a *single value*. Keys must be unique.

To access items from a `dict` using keys:

```python
my_dict['name']
# Jack
my_dict['age']
# 26
```

The `update()` method merges the keys and values from one dictionary into another and overwrites values if the same key exists:

```python
preferences = {
    'fruit': 'apple', 
    'car': 'Tesla'
}
more_preferences = {
    'fruit': 'pear',
    'animal': 'dog'
}

preferences.update(more_preferences)

print(preferences)
# {
#   'fruit': 'pear', 
#   'car': 'Tesla', 
#   'animal': 'dog'
# }
```

> Remember - be careful when using `update()`, as a dictionary can't have multiple entries with the same key.


---

## Practice

Fill in the following snippet so that it will return the value of `dog`:

```python
animals = {
    'cat': 'persian', 
    'dog': 'pug'
}

animals???
# pug
```

- `['dog']`
- `['pug']`
- `('dog')`
- `{'pug'}`


---

## Revision

How would you access the value of `maths`?

```python
grades = {
    'biology': 82.1,
    'maths': 79.8,
    'economics': 65.4
}
```

???

- `grades['maths']`
- `grades[79.8]`
- `grades('maths')`
- `grades(79.8)`
