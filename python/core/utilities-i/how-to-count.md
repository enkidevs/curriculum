---
author: catalin

levels:

  - advanced

  - medium

type: normal

category: how to

aspects:
  - introduction
  - workout
links:

  - '[pymotw.com](https://pymotw.com/2/collections/counter.html){website}'

notes: >-
  Insight is correct, But should give a few examples of common counter methods
  like most_common(), elements(), etc.

standards:
  python.store-manipulate-data.5: 10
  python.modules.0: 10

---

# How to count

---
## Content

Python's `collection` module provides the `Counter` class - a container used for keeping track of the frequencies or counts of values in some data. It's a dict subclass with more features.

Import `Counter`:
```python
from collections import Counter
```
The constructor has no mandatory argument, but can take any sequence, dictionary  or even keyword arguments:
```python
b = Counter(a=5, b=2)
a = Counter()

```

A counter can be updated with the `update` method:
```python
a.update("abaaaba")
# note that a and b are equal now
print(b)
print(a)
# Counter({'a': 5, 'b': 2})
# Counter({'a': 5, 'b': 2})

```

You can get the occurrences of a value in the counter:
```python
print(a['a'])
# output: 5
```

You can also add or subtract two `Counters`:
```python
print(a + b)
# Counter({'a': 10, 'b': 4})
print(a - b)
# Counter()

```
Set operations as union (`a | b`) or intersection (`a & b`) are also supported.

In addition, using the `most_common(n)` method will print the `n` most common occurrences in a `Counter`.

Using the `elements()` method, you get an **iterator** producing all values known to the `Counter`.

---
## Practice

Which method is used to find the most common occurrence in a counter?

???


* `most_common(n)`
* `most-common(n)`
* `common(n)`
* `common-item(n)`

---
## Revision

Declare and update the counter e:

```
e = ???()
e.???(“enki”)
```


* `Counter`
* `update`
* `new-counter`
* `new_counter`
* `add`
* `add_counter`
