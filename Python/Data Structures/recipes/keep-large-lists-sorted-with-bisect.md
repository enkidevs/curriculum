# Keep large lists sorted with `bisect`
author: catalin

levels:

  - advanced

  - medium

type: normal

category: best practice

links:

  - '[docs.python.org](https://docs.python.org/3.5/library/bisect.html){website}'

---
## Content

Using the basic **bisection algorithm**, Python's `bisect` module provides a more efficient way of inserting elements into a list while keeping it **sorted**.

Import the module:
```python
import bisect
```

Suppose we have the list:
```python
a = [3, 4, 5, 6, 10, 20, 30]

```

We can now add elements with the `insort` method:
```python
bisect.insort(a, 8)
bisect.insort(a, 9)
bisect.insort(a, 35)

```
Now to see the result:
```python
print(a)
# [3, 4, 5, 6, 8, 9, 10, 20, 30, 35]

```

To find the **insertion point** of an element without inserting it use `bisect`:
```python
print(bisect.bisect(a, 11))
# 7
```