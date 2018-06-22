---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know



parent: the-stack-data-structure

---

# The Queue Data Structure

---
## Content

The *queue* data structure is a collection of objects which is optimized for adding new objects to the collection and removing the oldest object from the collection. That is, the first object in will be the first object out (*FIFO*).

![alt description](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20300%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3Equeueds%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20d%3D%22M125%2069h450m0%2080H125%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20d%3D%22M473%2069h102v80H473z%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22497.745117%22%20y%3D%22129%22%3E15%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20d%3D%22M575%20176h102v81H575z%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22599.745117%22%20y%3D%22236%22%3E15%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20transform%3D%22translate%2864%2C%20124%29%20rotate%28-45%29%20translate%28-64%2C%20-124%29%20%22%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-1.875%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2218.0539551%22%20y%3D%22134%22%3ELast%20in%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20transform%3D%22translate%28639%2C%20112%29%20rotate%2845%29%20translate%28-639%2C%20-112%29%20%22%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-1.875%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22579.821757%22%20y%3D%22121.939261%22%3EFirst%20out%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20d%3D%22M373%2069h102v80H373z%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22410.872559%22%20y%3D%22129%22%3E9%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20d%3D%22M272%2069h102v80H272z%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22297.745117%22%20y%3D%22129%22%3E23%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20d%3D%22M157%2069h100v80H157z%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22194.872559%22%20y%3D%22129%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20d%3D%22M35%20176h102v81H35z%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2272.8725586%22%20y%3D%22236%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M125%20109c-34.7939392%200-63%2028.206061-63%2063m47.0000003-66.75688506l20.35967278%203.23785862-19.48811535%206.72408836M648.85253093%20166c0-34.7939392-28.20606073-63-63.00000003-63m66.25688546%2047.00000028l-3.23785863%2020.35967267-6.72408835-19.48811524%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

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
Q.isEmpty()     true
Q.dequeue()     ???
Q.enqueue(3)    
Q.enqueue(4)
Q.size()        ???
Q.dequeue()     ???
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

 
