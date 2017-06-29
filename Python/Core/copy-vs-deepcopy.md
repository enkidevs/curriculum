# `copy` vs `deepcopy`
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

---
## Content

Extending the example in the previous insight, we could end up in a situation in which we need to copy a mutable type (list, dictionary) and work on the copy, without modifying the initial object.

We've seen that the assignment only won't work:
```python
m = [1]
n = m
n.append(2)
print(m)
# [1, 2]
```
Python *3.3* introduced a new list method to achieve a **shallow copy**:
```python
m = [1]
n = m.copy()
n.append(2)
print(m)
# [1]
print(n)
# [1, 2]
```
A shallow copy is a first-layer only copy of the container: any reference to a mutable object contained is kept.
```python
m = [1, []]
n = m.copy()
n.append(2)
n[1].append(3) # access the list inside
print(n)
# [1, [3], 2]
print(m)
# [1, [3]]
```
An all levels copy is called a **deep copy**. We can use the `deepcopy()` method inside the `copy` module to do that:
```python
import copy

m = [1, []]
n = copy.deepcopy(m)
n.append(2)
n[1].append(3) # access the list inside
print(n)
# [1, [3], 2]
print(m)
# [1, []]
```
It's worth nothing the overhead time it takes to make a deep copy:
// TODO
