---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

standards:
  python.store-manipulate-data.0: 10
  python.store-manipulate-data.1: 10

aspects:
  - workout
  - deep
---

# `copy` vs `deepcopy`


---
## Content

Extending the example in the previous insight, we could end up in a situation in which we need to copy a mutable type (list, dictionary) and work on the copy, without modifying the initial object.

We've seen that the assignment only won't work:
```python
m = [1 ]
n = m
n.append(2)
print(m)
# [1, 2]
```
Python *3.3* introduced a new list method to achieve a **shallow copy**:
```python
m = [1 ]
n = m.copy()
n.append(2)
print(m)
# [1 ]
print(n)
# [1, 2]
```
A shallow copy is a first-layer only copy of the container: any reference to a mutable object contained is kept.
```python
m = [1, []]
n = m.copy()
n.append(2)
n[1 ].append(3) # access the list inside
print(n)
# [1, [3 ], 2]
print(m)
# [1, [3 ]]
```
An all levels copy is called a **deep copy**. We can use the `deepcopy()` method inside the `copy` module to do that:
```python
import copy

m = [1, []]
n = copy.deepcopy(m)
n.append(2)
n[1].append(3) # access the list inside
print(n)
# [1, [3 ], 2]
print(m)
# [1, []]
```
It's worth noting the overhead time it takes to make a deepcopy:
```python
import copy
import timeit
k = []
for i in range(1, 11):
  k.append(list(range(1,i)))
l = list(range(45)) # numbers in k
print('l copy:',
  timeit.timeit(lambda: l.copy()))
print('k copy:',
  timeit.timeit(lambda: k.copy()))

print('l deepcopy:',
  timeit.timeit(lambda: copy.deepcopy(l)))
print('k deepcopy:',
  timeit.timeit(lambda: copy.deepcopy(k)))
```
They all ran for the default `1000000` number of times:
```bash
l copy: 0.3196120499924291
k copy: 0.22795158099324908
l deepcopy: 41.75681215700751
k deepcopy: 61.87346560800506
```
You can see how, even for a linear list, the required time for **deepcopy** grows exponentially.

---
## Practice

What should be the output of the following snippet?
```python
import copy
a = [1, []]
b = copy.deepcopy(a)
b[1].append(3)
print(a)
???
```

* `[1, []]`
* `[1, 3]`
* `[1, [3]]`
* `[1, [], 3]`

---
## Revision

A `deepcopy` means

???


* making a new copy in memory of every layer of the data structure
* making a copy in memory of the first layer of the data structure
* making a copy of the data structure's reference
* allocating some memory to a data structure
