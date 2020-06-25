---
author: catalin

levels:

  - basic

  - medium

type: normal

category: how to
aspects:
  - introduction
  - workout
  - deep
standards:
  python.use-iteration-protocol.1: 10
  python.native-types-operations.4: 10

links:

  - '[docs.python.org](https://docs.python.org/3.5/tutorial/datastructures.html#nested-list-comprehensions){website}'

parent: list-comprehension

---

# Nested lists comprehension

---
## Content

Since a list comprehension can take any **expression** as its initial expression, it's possible to include another list comprehension at that position, resulting in  a **nested** list comprehension.  

These are often useful, but are often used to work with matrices.
```python
matrix = [[1, 2, 3], [4, 5, 6], \
[7, 8, 9]]

```

Say we want to create another matrix with values equal to the squares of each element in the original matrix:
```python
matrix2 = [[x**2 for x in row] for \
row in matrix]
#matrix2 = [[1, 4, 9], [16, 25, 36],\
# [49, 64, 81]]
```

A more advanced list comprehension with two for clauses and two if clauses:
```python
lc = [ (x, y) for x in \
range(10) if x % 2 == 0 \
for y in range(20) if \
y % 3 == 0 ]
# lc
# [(0, 0), (0, 3), (0, 6), \
# (0, 9), (0, 12), (0, 15), (0, 18),\
# (2, 0), (2, 3), (2,6), (2, 9), \
# (2, 12), (2, 15), (2, 18), (4, 0), \
# (4, 3), (4, 6), (4, 9), (4, 12), \
# (4, 15), (4, 18), (6, 0), (6, 3), \
# (6, 6), (6, 9), (6, 12), (6, 15), \
# (6, 18), (8, 0), (8, 3), (8, 6), \
# (8, 9), (8, 12), (8, 15), (8, 18)]

```

---
## Practice

Use nested list comprehension to generate a list of tuples, where the first element must always be odd.
Ex: (1,1),(1,2),(1,3),...(9,7),(9,8),(9,9).

```python

l = [??? for x in range(10)\
    if ??? for y in ???]
```

* (x,y)
* x % 2
* range(10)
* x % 2 == 0
* range(11)

---
## Revision

What will the output of the following snippet be?

```python

l = [(x, y) for x in range(10) if x % 2 /
    for y in range(10) if y % 2 == 0]
print(l[2])
```
???

* (1,4)
* (1,2)
* (1,3)
* (1,6)
