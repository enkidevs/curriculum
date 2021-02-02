---
author: emmab
tags:
  - introduction
type: normal
category: must-know
links:
  - >-
    [Tuples](https://docs.python.org/3.5/tutorial/datastructures.html#tuples-and-sequences){website}
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

# The tuple


---

## Content

Tuples are another **sequential** and **immutable** data type.

They're used to *group any number of items*, regardless of their type, into a *single value*.

> A tuple is created by separating items with commas, and are often wrapped in optional parentheses `()` to make them stand out.

```python
my_first_tuple = ('first', 1, '1', 1.0)
```

Again, we can extract elements from tuples using the index operator, and items cannot be reassigned:

```python
print(my_first_tuple[3])
# 1.0

my_first_tuple[0] = 'First'
# TypeError: 'tuple' object does not support item assignment
```

Tuples are mostly used when we need to store values of multiple different types, such as for database fields or CSV column names.


---

## Practice

Extract the element `'pie'` from the tuple:

```python
pie_tuple = ('pie', 3.14, 'pi', 3)

print(???[???])
```

- `pie_tuple`
- `0`
- `'pie'`
- `1`
- `'tuple'`


---

## Revision

Extract the element `'Enki'` from the tuple:

```python
my_tuple = ('Python', 1, 'Enki', 2)

print(???[???])
```

- `my_tuple`
- `2`
- `my_tuple.find`
- `my_tuple.search`
- `3`
- `1`
