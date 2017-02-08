# the-linked-list-data-structure
author: mihaiberq

levels:
	- beginner

type: normal

category: must-know

---
## Content

*A **list**, or a **sequence**, is an *abstract*[1] data type that represents a linear chain of values, where the same value can appear more than once. The *list* has a first element, **head**, and a last element, **tail**.*

Because a list is *linear*[2], each element other than the head and the tail have an unique *predecessor* and an unique *successor*.



### LinkedList
*LinkedList* uses the concept of *nodes*[3] to represent its data.

Think of a conga line, in which every person, but the first and the last, holds someone and are being held by someone. You would be able to join the line without 'disturbing' more than 2 people, the one at the position *i* and the one at the position *i-1*, yet you would still need to count to get there: no one has a sign above them stating their index.

The *conga line* is a **SinglyLinkedList** because you cannot see who is behind you. 

To make it a **DoublyLinkedList**, everyone would have to use a hand to hold the person in front of them, and with the other hand to hold the one behind them. In this case, you would be able to move through in both directions, from *start to finish* and from *finish to start*.

### Dynamic Array vs. LinkedList

No data structure is well suited for all circumstances. A *LinkedList* may behave well in one case, while causing troubles in another. The same is true for *Arrays*, so it is necessary to understand when to choose one instead of the other.

A good example to see the differences is the implementation of the *Josephus problem*[4]. If you consider the people in the circle being a *connected list of nodes*, then *deletion* is easy. However, the list will not excel at finding the next person to delete because it has to iterate through *n* nodes.

In contrast to the list, deletion in *dynamic arrays* implies shifting the other elements to maintain the internal structure. Yet, finding the *n*th person is easier, by referencing their position directly.



---
## Practice

What should a DoublyLinkedList node keep track of?

???

*Its element, the previous node and the next node.
*The previous node and the next node.
*Its element and the next node.
*Its element, the previous node and the head of the list.

---
## Revision

Which of the following concepts is *list-specific*?

???

*Head
*Element
*Index
*Node

---
## Footnotes

[1:Abstract Data Type]
*Abstract Data Type, or ADT, means the data type cannot be implemented (i.e. represented) by itself and it needs some kind of 'support' in order to be used.*

[2:Linear Data Structure]
*A linear data structure means that its items are lying on the same level and are not hierarchically structured.*

[3:Node]
*A **node** is a data type that contains an element and references to nodes next to it. In other words, from a node instance you can obtain its value and one or more neighbours.*

[4:Josephus problem]
Also known as *Josephus permutation*, is a *count-out* game which require *m* people standing in a circle. Starting at a predetermined position, and following a predetermined direction, you count around the circle *n* times. 

After *n*th person is kicked out, the remaining people close the circle and the counting starts again. 

The game ends when there is a single person left.
