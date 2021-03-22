---
author: catalin
type: normal
category: feature
links:
  - '[pymotw.com](https://pymotw.com/2/Queue/){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# A thread-safe queue


---

## Content

Python's `queue` (formerly `Queue`) module provides implementations for queues and abstract data structures that are suitable for multi threading.

Because data is passed between **producer** and **consumer** threads safely and locking is handled by the **caller**, multiple threads can work on the same `queue`  instance.

Basic usage of **FIFO** and **LIFO**  `queues`:

```python
import queue
#FIFO
fq = queue.Queue()
 # add an element
fq.put(1)
fq.put(2)
# removes element at the other end
print(fq.get())
# 1


#LIFO
lq = queue.LifoQueue()
# add an element
lq.put(1)
lq.put(2)
# removes element at the same head
print(lq.get())
# 2
```

A LIFO queue is like a stack.

To see the values in the queue:

`fq.queue`
or
`lq.queue`

To specify the maximum numbers of elements in the `queue` just pass the number as a constructor argument:

```python
# max 4 elements
fq = queue.Queue(4)
```

The module also has a `PriorityQueue` that retrieves elements based on a priority value, which is determined by a user-specified weight given to each queue entry.


---

## Practice

Complete the code snippet to declare a FIFO and LIFO queue and to see the values in both queues:

```python
import queue
f = queue.???()
l = queue.LifoQueue()

f.queue
l.???
```

- `Queue`
- `queue`
- `LifoQueue`
- `lifoqueue`
- `lqueue`
- `FifoQueue`
- `fifoqueue`


---

## Revision

Instantiate a FIFO and LIFO queue:

```python
import queue

fq = queue.???()
lq = queue.???()
```

- `Queue`
- `LifoQueue`
- `queue`
- `FifoQueue`
- `lifoqueue`
- `fifoqueue`
 
