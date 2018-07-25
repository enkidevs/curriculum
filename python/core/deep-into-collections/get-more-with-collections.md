---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature
aspects:
  - introduction
  - workout
  - deep
standards:
  python.native-types-operations.6: 10

links:

  - '[pymbook.readthedocs.org](http://pymbook.readthedocs.org/en/latest/collections.html){website}'
  - '[docs.python.org](https://docs.python.org/3.5/library/collections.html){website}'


---

# Get more with `collections`!

---
## Content

In addition to Python's built-in data structures (such as tuples, dicts, and lists), a library module called `collections` provides data structures with additional features, some of which are specializations of the built-in ones.

Import the module:
```python
import collections
```

Specialized container datatypes are usually `dict` subclasses or wrappers around other classes like lists, tuples, etc.

Notable implementations are :
- the `Counter` class used for counting hashable objects.
-  `defaultdict` class used as a faster implementation of a specialized dictionary.
- `namedtuple` class used for defining a meaning for every position in a tuple, often useful with databases or CSV files.

---
## Practice

Which collections class is used as a faster implementation of a specialized dictionary?

???


* `defaultdict`
* `specialdict`
* `implementdict`

---
## Revision

Which collections class is used for defining a meaning for every position in a tuple?

???


* `namedtuple`
* `definetuple`
* `definitiontuple`
