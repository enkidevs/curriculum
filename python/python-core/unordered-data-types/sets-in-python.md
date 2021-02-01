---
author: emmab
tags:
  - introduction
  - workout
type: normal
category: must-know
links:
  - >-
    [More About
    Sets](http://www.python-course.eu/python3_sets_frozensets.php){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Sets in Python


---

## Content

So we know about sequential data types like `strings`, `tuples` and `lists`. There are other data types where the order *doesn't matter*.

**Sets** are one of these. They have four main characteristics:

- they are an *unordered collection of items*
- *every item is unique* (no duplicates)
- *every item is immutable* (cannot be updated)
- they can *store items of different types*

> Sets are defined by values separated by commas, inside curly brackets `{}`.

```python
set = {'clubs', 'hearts', 'spades', 'diamonds'}
```

We can create a `set` by placing all items inside `{}`, separated by commas, OR by using the built-in `set()` function:

```python
my_set = {1, "Hello", (1, 2, 3)}

# OR

my_set = set([1, "Hello", (1, 2, 3)])
```


---

## Practice

Sets are an ??? data type. Items inside a set can be of any data type, but each item must be ???.

- `unordered`
- `unique`
- `ordered`
- `indexed`
- `non-unique`


---

## Revision

Sets are an ??? data type. Items inside a set cannot be ???, though the whole set is mutable.

- `unordered`
- `updated`
- `unique`
- `indexed`
