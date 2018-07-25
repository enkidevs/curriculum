---
author: catalin

levels:

  - medium

type: normal

category: how to
aspects:
  - introduction
  - workout
  - deep
standards:
  python.control-structures.5: 10
  comp-sci.implement-linear-collection-data-structures.3: 10

links:

  - '[docs.python.org](https://docs.python.org/3.5/library/stdtypes.html#memory-views){website}'
  - '[www.troyfawkes.com](http://www.troyfawkes.com/learn-python-multithreading-queues-basics/){website}'

parent: a-thread-safe-queue

notes: |
  The program does not work as it is. It has a syntax error, in this line:
      print q.get()
  the print should have parentheses since this is for Python 3.  Fixed.

---

# Queues and threads

---
## Content

The `queue` module provides thread safe `queue` data structures. As a consequence, multiple threads can share the same `queue`.

First we need the modules imported:
```python
from Queue import Queue
from threading import Thread
```
Define the worker function:
```python
def enki(q): # queue will be our arg
  while True:
    print(q.get())
    q.task_done()
```
`task_done()` tells the queue that I have finished my operation.

Create the threads and the ` queue`:
```python
q = Queue() # queue is created
num_threads = 5 # we will have 5 threads
# threads are created
for i in range(num_threads):
  worker = Thread(target=enki, args=(q,))
  worker.setDaemon(True)
  worker.start()
```

Make the threads work on the same queue:
```python
for x in range(50):
  q.put(x)
# this will only print the numbers 0 - 49
q.join()
```
Using the `join()` method, our program will wait until the queue is empty and threads are done working (info got from `task_done()`).

---
## Practice

Complete the code snippet:

```python
q = Queue()
??? = 3 # declare 3 threads
for i in range(num_threads):
  worker = ??? \
           (target=enki, args=(q,))
  worker.setDaemon(True)
  worker.start()
```

* `num_threads`
* `Thread`
* `num_thread`
* `threads`
* `new_Thread`
* `start`


---
## Revision

Which methods tells the queue that an operation has finished? ???


* `task_done()`
* `task.done()`
* `task-done()`
* `taskdone()`
