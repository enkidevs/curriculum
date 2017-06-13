# Using Lists as Queues.
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[more about lists as queues](https://welcomedata.wordpress.com/2015/07/03/using-lists-as-stacks-and-queues-in-python/)'

---
## Content

It's appropriate to create a **new class** to help you implement an **abstract data type** such as **queues**. We will use **list** data structure this time.

**Queues** are abstract data structures that follow the principle of **First In First Out** (FIFO) when adding or removing an element from the queue. Addition of elements is called **"enqueue"** and each time we an element is **inserted** it will be placed at the **back of the queue**. The action of **removing** an element is called **"dequeue"** and it returns the first element from the **front of the queue**.

Let's define a **queue** class now:

```
class Queue:
    def __init__(self):
        self.items = []

    def isEmpty(self):
        return self.items == []

    def enqueue(self, item):
        self.items.insert(0,item)

    def dequeue(self):
        return self.items.pop()

    def size(self):
        return len(self.items)
```

As you can see, we defined 5 **methods**:
- the **constructor**, which creates a **new empty list**;
- a **method** that checks whether the **queue is empty**;
- a **method** `enqueue`, which adds an element to the **back of the queue**;
- a **method** `dequeue`, which removes an element from the **front of the queue**;
- a **method** `size`, which returns the size of the **queue**;

---
## Practice

Where would `dequeue` method remove an element from?
???

* the front of the queue.
* the back of the queue.
* it will remove all elements from the queue.

---
## Revision

Name the action of adding an element to the queue?
???

* `enqueue`
* `dequeue`
* `insert`
