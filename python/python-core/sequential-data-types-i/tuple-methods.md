---
author: emmab
tags:
  - introduction
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Tuple methods


---

## Content

The `index()` method can be used on a `tuple` to *search for an item and return its index*.

For example:

```python
vowels = ('a', 'e', 'i', 'o', 'u')

vowels.index('e')
# 1
```

> Remember that indexes in Python start from 0 and not 1!

Note, if the same element is present more than once, the first/smallest position is returned.

```python
vowels = ('a', 'e', 'i', 'i', 'o', 'u')

vowels.index('i')
# 2
```

The `count()` method returns the number of occurrences of an item in a tuple.

```python
vowels.count('i')
# 2
```


---

## Practice

How could you find the index for `'George'` in the following `tuple`:

```python
beatles = ('John', 'Ringo', 'George', 'Paul')

beatles.???('???')
# 2
```

- `index`
- `George`
- `find`
- `2`
- `John`
- `count`


---

## Revision

How could you count the number of dogs in the following tuple:

```python
animals = ('dog', 'cat', 'rabbit', 'dog', 'horse')

animals.???('???')
# 2
```

- `count`
- `dog`
- `Dog`
- `index`
- `'0'`
- `2`
