---
author: catalin
type: normal
category: feature
links:
  - >-
    [docs.python.org](https://docs.python.org/3.5/library/queue.html#queue-objects){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Special queue methods


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

When you want to `put` an element in the queue but it's full, you can make the method call wait for some number of seconds until there is a free slot. This is done via the `block` argument:

```python
q.put(4, block=True, timeout=None)
```

With `block=True` and `timeout=None` it **blocks** the queue until there is a free slot. 

If `block=True` and `timeout` is a positive number, it **blocks** for a maximum of `timeout` seconds and raises the `Full` exception **if no free slot was available within that time**.

If `block=False`, it puts an item in the queue **if there is a free slot available**. Otherwise, it raises the `Full` exception. In this case, `timeout` is ignored.

You can use the `get` method to **remove and return** an element from the queue:

```py
print(q.get(1))
# 1
```

The `get` method can also use the `block` and `timeout` attributes. It behaves similarly with the `put` method, but instead of the `Full` exception it will raise an `Empty` exception. 


---

## Practice

Check if queue `e` is full:

```py
print(e.???())
```

- `full`
- `!space`
- `max`
- `complete`


---

## Revision

Create a queue of maximum 5 elements:

```py
q = ???.???(5)
```

- `queue`
- `Queue`
- `new`
- `instance`
- `create`
 
