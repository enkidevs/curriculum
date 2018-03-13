---
author: catalin

levels:

  - medium

type: normal

category: must-know


links:

  - '[pythontips.com](http://pythontips.com/2014/07/02/an-intro-to-deque-module/){website}'
  - '[docs.python.org](https://docs.python.org/3.5/library/collections.html#deque-objects){website}'

parent: get-more-with-collections

---

# Double ended queues with `deque`

---
## Content

The `deque` class in the `collections` module makes it easy to create deques or double ended queues. Deques allow you to  **append** and **delete** elements from both ends more efficiently than in lists.

Import the module:
```python
from collections import deque
```

Instantiate `deque`:
```python
d = deque()
```
Append to **right** and **left**:
```python
d.append("b")
d.appendleft("a")
print(d)
# output is: deque(['a', 'b'])
```
In the same fashion, elements can be deleted (popped) :
```python
d.pop()
d.popleft()
print(d)
# outputs: deque([])
```

You can limit the maximum numbers of elements in a `deque` passing the `maxlen` argument to the constructor. If the limit is exceeded, items from the opposite end will be *removed* as new ones are appended to this end:
```python
d = deque(maxlen=3)
deque([], maxlen=3)
for i in range(4):
    d.append(i)
    print(d)
...
# Output:
deque([0], maxlen=3)
deque([0, 1], maxlen=3)
deque([0, 1, 2], maxlen=3)
deque([1, 2, 3], maxlen=3)
```

`deques` seem very similar to the previously presented `queues`. The main difference is that `queues` are usually used when we need allow several threads to communicate using queued messages. If a normal data structure is required then it is advised to use `deques`.

---
## Practice

Instantiate a double ended queue with a maximum length of 5:

```
from collections import deque
e = ???(??? = 5)
```


* `deque`
* `maxlen`
* `dqueue`
* `dequeue`
* `length`
* `maxsize`
* `size`

---
## Revision

Complete the code snippet to append `e` to the start of the queue:

```
from collections import deque
a = deque()

a.append("n")
a.append("k")
a.append("i")
a.???("e")
```

* `appendleft`
* `append`
* `append.left`
* `append.start`

