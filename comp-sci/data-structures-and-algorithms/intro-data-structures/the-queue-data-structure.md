---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

aspects:

  - introduction


parent: the-stack-data-structure

---

# The Queue Data Structure

---
## Content

The *queue* data structure is a collection of objects which is optimized for adding new objects to the collection and removing the oldest object from the collection. That is, the first object in will be the first object out (*FIFO*).

![alt description](https://img.enkipro.com/3dd036f972054d0dcc68ac19b52244c7.png)

A grocery store line serves as a simple real-world example of a queue: the first person in the line is the first person to be serviced (and leave the line).

### Queue ADT

Update methods:
- `enqueue(e)` : *Adds* e to the end of the queue.
- `dequeue()` : *Removes* and *returns* the element at the front of the queue, or `null` if the queue is empty.

Accessor methods:
- `size()` : *Returns* the number of elements in the queue.
- `isEmpty()` : *Returns* true if there are no elements in the queue.
- `first()` : *Returns* the element at the front of the queue.

These are your queue options in different programming languages:
  - `Java`: There is no Queue class in Java. However, the LinkedList class methods allows you to use the list as a queue.
  - `JavaScript`: There is no special Queue prototype in JavaScript. The Array prototype, however, supports the `push` and `shift` methods that emulate the behavior of a queue.
  - `Python`: You can instantiate queues using the `queue` module in python3, or the `Queue` module in python2. The insertion method is called `put`, while the removal one is `get`.
  - `C++`: Queues in C++ are part of the `std::queue` library. In this case, elements can be inserted by using `push` and removed by using `pop`.

---
## Practice

Complete the following snippet with the output of each operation, based on the abstract data type (ADT) presented in the insight:
```
Q.isEmpty()
// true
Q.dequeue()
// ???
Q.enqueue(3)
Q.enqueue(4)
Q.size()
// ???
Q.dequeue()
// ???
```

* `null`
* `2`
* `3`
* `4`
* `1`
* `false`
* `0`

---
## Revision

The working principle behind a queue is

???


* FIFO
* LIFO
* SASS
* OOP


