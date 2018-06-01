---

author: Aaron7Sun

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

links:

  - >-
    [docs.python.org](https://docs.python.org/2/library/functions.html#zip){website}

---
# Two ways to compute a dot product

---
## Content

Method 1:
```
sum(map(operator.mul, vec1, vec2))
```
Here, `operator.mul` is the multiplication operator (as a binary function).

Method 2:
```
sum(x*y for x, y in zip(vec1, vec2))
```
Here, `zip` returns a list of tuples. In this list, tuple *i* contains element *i* from each of the argument sequences or iterables.