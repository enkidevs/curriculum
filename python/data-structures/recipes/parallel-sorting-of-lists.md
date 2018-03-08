---
author: Aaron7Sun

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip



{}

---
## Content
# Parallel sorting of lists

To sort multiple lists of the same length:

```python
data = zip(l1, l2)
data.sort()
l1, l2 = map(lambda t: list(t), zip(*data))
```
The `zip` function returns a list of *tuples*. To convert the result of the last `zip` back to lists, it is possible to use the `map` command along with the `lambda` function.

