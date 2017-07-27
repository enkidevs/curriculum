# Prioritize your `queue` 
author: catalin

levels:

  - medium

type: normal

category: how to

parent: a-thread-safe-queue

links:

  - '[docs.python.org](https://docs.python.org/2/library/queue.htmt){website}'

---
## Content

A `PriorityQueue` is a type of `queue` imported from the module with the same name. 

It uses sort order to decide what to retrieve from it first (your object must have a way of comparing its instances):
```python
import queue

class Enki(object):
    def __init__(self, priority):
       self.priority = priority
       return
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

Having defined  the `__lt__` method, our `PriorityQueue` knows now how to sort elements of type `Enki`.

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

*Queue 3
*Queue 2
*Queue 1