---
author: catalin

levels:

  - medium

type: normal

category: best practice

aspects:
  - introduction
  - workout
  - deep

standards:
  comp-sci.identify-linear-collection-data-structures-usage.2: 10
  comp-sci.implement-linear-collection-data-structures.2: 10

links:

  - '[docs.python.org](https://docs.python.org/3.5/tutorial/datastructures.html#using-lists-as-queues){website}'

parent: double-ended-queues-with-deque
notes: >-
  Insight content is correct. But the deque class has about 15 methods. Suggest
  adding a few examples of use of other methods.

---

# Best way to implement a simple `queue`

---
## Content

A simple `list` can easily be used to implement a **queue** abstract data structure. A queue implies the **first-in, first-out** principle.

However, this approach will prove inefficient because *inserts* and *pops* from the beginning of a list are slow (all elements need shifting by one).

It's recommended to implement **queues** using the `collections.deque` module as it was designed with fast appends and pops from both ends.

```python
from collections import deque
queue = deque(["a", "b", "c"])
queue.append("d")
queue.append("e")
queue.popleft()
queue.popleft()
print(queue)
# output is: deque(['c', 'd', 'e'])
```

A reverse queue can be implemented by opting for `appendleft` instead of `append` and `pop` instead of `popleft`.

---
## Practice

A reverse queue can be implemented by using ???  instead of ??? for adding items, and by using ??? instead of ??? for removing items.


* appendleft
* append
* pop
* popleft
* appendright
* popright

---
## Revision

Complete the code snippet so that the queue reads Enki:

```
from collections import deque
queue = deque(["i", "n", \
              "k", "i"])

queue.???
queue.???
print(queue)
```



* `popleft()`
* `appendleft("e")`
* `pop()`
* `append("e")`
* `pop-left()`
* `append-left("e")`
