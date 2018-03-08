---
author: catalin

levels:

  - medium

type: normal

category: how to


links:

  - '[docs.python.org](https://docs.python.org/2/library/queue.htmt){website}'

parent: a-thread-safe-queue

---
## Content
# Prioritize your `queue`

A `PriorityQueue` is a type of `queue` imported from the module with the same name.

It uses sort order to decide what to retrieve from it first (your object must have a way of comparing its instances):
```python
import queue

class Enki(object):
    def __init__(self, priority):
       self.priority = priority
       return
    def __lt__(self, other):
       return self.priority < other.priority

q = queue.PriorityQueue()
q.put(Enki(55))
q.put(Enki(3))
q.put(Enki(100))
while not q.empty():
    print(q.get().priority)
# output is 3 / 55 / 100
```
Having defined the `__lt__` method[1], our `PriorityQueue` knows now how to sort elements of type `Enki`.

If we want to reverse the sorting order (greatest priority first), we would have to replace the `<` operator inside the `__lt__` function:
```python
class Enki(object):
    def __lt__(self, other):
       return self.priority > other.priority

 q = queue.PriorityQueue()
 q.put(Enki(55))
 q.put(Enki(3))
 q.put(Enki(100))
 while not q.empty():
     print(q.get().priority)
 # output is 100 / 55 / 3
```

---
## Revision

Which of the following instantiates a new priority queue:

```python
# Queue 1
q = new queue.PriorityQueue()

# Queue 2
new Queue q = queue.PriorityQueue()

# Queue 3
q = queue.PriorityQueue()
```

???


* Queue 3
* Queue 2
* Queue 1

---
## Footnotes
[1: Less than]
The `__lt__` (less than) method is used to override the functionality of the `<` (less than) operator when comparing `Enki` objects. As it is the case in most languages, `a < b` is the shorthand notation of calling `a.__lt__(b)`.
