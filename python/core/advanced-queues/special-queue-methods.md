---
author: catalin

levels:

  - medium

type: normal

category: feature

aspects:
  - introduction
  - workout
  - deep
standards:
  comp-sci.implement-linear-collection-data-structures.3: 10

links:

  - '[docs.python.org](https://docs.python.org/3.5/library/queue.html#queue-objects){website}'

parent: a-thread-safe-queue

---

# Special `queue` methods

---
## Content

All `queue` objects (`Queue` , `LifoQueue` and `PriorityQueue`) provide a plethora of public methods useful in many scenarios.

Imagine we have the sample `Queue` with a limit of 3 elements:
```python
import queue

q = queue.Queue(3)
q.put(1)
q.put(2)
q.put(3)

```

Get the approximate size of the `queue`:
```python
print(q.qsize())
# output: 3

```

Check if a `queue` is empty or full:
```python
print(q.empty())
# output: False
print(q.full())
# output: True

```
When you want to `put`  an element in the queue but it's full, you can make the method call block for some number of seconds until there is a free slot:
```python
q.put(4, block=True,timeout=None)

```
With `timeout=None` it **blocks** the queue until there is a free slot. If `timeout` is a number it will raise  an `Empty` exception if no free slot was available in that time.

The same syntax and logic applies to the `get()` method too.

---
## Practice

Check if queue `e` is full:

```
print(e.???())
```

* `full`
* `!space`
* `max`
* `complete`

---
## Revision

Create a queue of maximum 5 elements:
```
q = ???.???(5)
```

* `queue`
* `Queue`
* `new`
* `instance`
* `create`
