# Parallel sorting of lists
author: Aaron7Sun

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

---
## Content

To sort multiple lists of the same length:

```python
l1 = [3,1,2]
l2 = ['three','one','two']

data = zip(l1, l2)
data = sorted(data)
l1, l2 = map(lambda t: list(t), zip(*data))
```
The `zip` function returns a list of *tuples*. To convert the result of the last `zip` back to lists, it is possible to use the `map` command along with the `lambda` function.

```python
print(l1)
# [1, 2, 3]
print(l2)
# ['one', 'two', 'three']
```
