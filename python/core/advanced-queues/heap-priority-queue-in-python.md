---
author: catalin

levels:

  - advanced

  - medium

type: normal
aspects:
  - introduction
  - workout
  - deep
category: feature

standards:
  python.data-structures-uses.2: 10

links:

  - '[docs.python.org](https://docs.python.org/3.5/library/heapq.html){website}'
  - '[Replace element using heapq exampel](https://goo.gl/Djrs8h)'
  - '[Using heapq example](https://goo.gl/QTLPK6)'


---

# Heap/Priority Queue in Python

---
## Content

**Python** provides the `heapq` module, an implementation of the heap queue algorithm (a.k.a. priority queue).

The difference between **Python's** implementation and the textbook one is that the former uses `0` -- based indexing and its `pop` method returns the smallest element.

Import the module:
```python
import heapq
```

Transform a `list` to a `heap`:
```python
a = [8, 4, 5, 12, 9, 7]
heapq.heapify(a)

```

Pop (and return) the smallest item:
```python
print(heapq.heappop(a)) # 4
print(a)
# [5, 8, 7, 12, 9]
```

Replace the smallest element with another:
```python
heapq.heapreplace(a, 999)
print(a)
# [7, 8, 999, 12, 9]
```

---
## Practice

Replace the smallest number of the heap h with `50`:

```python
import heapq

h = [1,2,3,4,5]
heapq.???(h)

???.???(h, 50)
# 1
```

* heapify
* heapq
* heapreplace
* h
* replace
* makeheap
* create

---
## Revision

What number will the following snippet remove?

```python

import heapq

h = [1030, 239, 304, 320]
heapq.heapify(h)

heapq.heapreplace(h, 100)
???

```

* 239
* 304
* 320
* the following snippet won't wor
