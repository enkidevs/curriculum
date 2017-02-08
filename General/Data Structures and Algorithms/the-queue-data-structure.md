# the-queue-data-structure
author: mihaiberq

levels:
 - beginner

type: undefined

category: must-know

---
## Content

The *queue* data structure is a collection of objects which is optimized for adding new objects to the collection and removing the oldest object from the collection. That is, the first object in will be the first object out (*FIFO*).

A grocery store line serves as a simple real-world example of a queue: the first person in the line is the first person to be serviced (and leave the line). 

### Queue ADT

Update methods:
- `enqueue(e)` : *Adds* e to the end of the queue.
- `dequeue()` : *Removes* and *returns* the element at the front of the queue, or `null` if the queue is empty.

Accessor methods:
- `size()` : *Returns* the number of elements in the queue.
- `isEmpty()` : *Returns* true if there are no elements in the queue.
- `first()` : *Returns* the element at the front of the queue.


---
## Practice

Complete the following snippet with the output of each operation:
```
Q.isEmpty()     true
Q.dequeue()     ???
Q.enqueue(3)    ???
Q.enqueue(4)    ???
Q.size()        ???
Q.enqueue(1)    ???
```
*`null`
*`3`
*`4`
*`2`
*`1`
*`false`
*`0`
---
## Revision

Which of the following methods is *queue-specific*?

???
*first()
*push()
*pop()
*last()
*size()