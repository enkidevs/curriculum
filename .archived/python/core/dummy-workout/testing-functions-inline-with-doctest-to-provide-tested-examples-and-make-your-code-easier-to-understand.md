---
author: Bruno

levels:

  - medium

type: normal

category: tip

links:

  - '[PyMOTW](http://pymotw.com/2/doctest/){blog}'

  - '[python.org](https://docs.python.org/2/library/doctest.html){documentation}'

---
# Testing functions inline with `doctest` to provide (tested) examples and make your code easier to understand

---
## Content

Example:
```
def multiply(a, b):
    """
    >>> multiply(4, 3)
    12
    >>> multiply('a', 3)
    'aaa'
    """
    return a * b
```