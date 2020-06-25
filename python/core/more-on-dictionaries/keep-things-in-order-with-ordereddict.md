---
author: catalin

levels:

  - advanced

  - medium

type: normal

category: feature
aspects:
  - introduction
  - workout
  - obscura
standards:
  python.native-types-operations.6: 10

links:
  - '[pymotw.com](https://pymotw.com/2/collections/ordereddict.html){website}'
  - '[docs.python.org](https://docs.python.org/3.5/library/collections.html#ordereddict-objects){website}'


notes: >
  Notes by Vasudev:


  This line:


  Another subclass of the `collections` module is the `OrderedDict`.


  uses incorrect terms - OrderedDict is not a subclass of collections module but
  a class in that module. And it is a subclass of dict.

---

# Keep things in order with `OrderedDict`

---
## Content

Another class of the `collections` module is the `OrderedDict`, a subclass of `dict`. This class works just like the normal dictionary, but it remembers the order in which elements are added to it.

Import `OrderedDict`:
```python
from collections import OrderedDict
```
While iteration over a regular `dict` produces the values in arbitrary order,
```python
a = dict()
a['e'] = 'E'
a['n'] = 'N'
a['k'] = 'K'
a['i'] = 'I'
for k, v in a.items():
    print(k, v)
# i I / e E / k K / n N

```
the `OrderedDict` will keep track of the order:
```python
b = OrderedDict()
b['e'] = 'E'
b['n'] = 'N'
b['k'] = 'K'
b['i'] = 'I'
for k, v in b.items():
    print(k, v)
# e E / n N / k K / i I

```

**Equality checks** between two ordered dictionaries are **order-sensitive**.

---
## Practice

In what order would an iteration over a regular dict produce its values? ???


* Arbitrary
* Ordered
* Ascending
* Descending

---
## Revision

Complete the code snippet to get the below output:

```python
e = ???()  
e['e'] = 'E'
e['n'] = 'N'
e['k'] = 'K'
e['i'] = 'I'
for k, v in e.???():
    print(k, v)

# e E / n N / k K / i I
```

* `OrderedDict`
* `items`
* `dict`
* `print`
* `odict`
* `dictionary`
* `holds`
