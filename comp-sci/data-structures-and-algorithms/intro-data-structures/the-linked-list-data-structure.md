---
author: mihaiberq
type: normal
category: must-know
links:
  - '[Linked Lists](https://www.youtube.com/watch?v=_jQhALI4ujg){video}'
  - >-
    [Linked List
    Basics](http://cslibrary.stanford.edu/103/LinkedListBasics.pdf){website}
  - '[The Josephus Problem](https://www.youtube.com/watch?v=uCsD3ZGzMgE){video}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# The Linked List Data Structure


---

## Content

A **list**, or a **sequence**, is an *abstract*[1] data type that represents a linear chain of values, where the same value can appear more than once. The *list* has a first element, **head**, and a last element, **tail**.

Because a list is *linear*[2], each element other than the head and the tail have a unique *predecessor* and a unique *successor*.

### LinkedList

*LinkedList* uses the concept of *nodes*[3] to represent its data.

Think of a conga line, in which every person, except the first and the last person, holds and is being held by someone. If you wanted to join the line to have some fun, you could do it by only "disturbing" 2 people: the one at the position `i` and the one at the position `i-1`.

However, you would still need to count to get to position `i`: no one has a sign above them stating their index.

The *conga line* is an example of a **SinglyLinkedList** because you cannot see who is behind you. The last one (in the example below, *G*) still has a reference that points to nothing(or `null`):

![sll](https://img.enkipro.com/9fc64a4643c8c46b7d2a600fe99a124d.png)

Note: when saying the first one we refer to node `A`, and when saying the last one we refer to node `G`.

To make it a **DoublyLinkedList**, everyone would have to use one hand to hold the person in front of them, and their other hand to hold the person behind them. In this case, you would be able to move through in both directions, from *start to finish* and from *finish to start*.

![dll](https://img.enkipro.com/dfe8bdeaffa55cb2d4504f4048f2b515.png)

### Dynamic Array vs. LinkedList

No data structure is well suited for all circumstances. A *LinkedList* may work well in one case, but cause difficulties in another. The same is true for *Arrays*, so it is necessary to understand when to choose one instead of the other.

A good example to see the differences is the implementation of the *Josephus problem*[4]. If you consider the people in the circle being a *connected list of nodes*, then *deletion* is easy. However, the list will not excel at finding the next person to delete because it has to iterate through *n* nodes.

In contrast to the list, deletion in *dynamic arrays* implies shifting the other elements to maintain the internal structure. Yet, finding the *nth* person is easier, by referencing their position directly.


---

## Practice

What does a DoublyLinkedList node usually keep track of?

???

- Its element, the previous node and the next node.
- The previous node and the next node.
- Its element and the next node.
- Its element, the previous node and the head of the list.


---

## Revision

Which of the following concepts is list-specific?

???

- Head
- Element
- Index
- Node


---

## Footnotes

[1:Abstract Data Type]
Abstract Data Type, or ADT, is a definition of a data type (or a data structure) that only mentions what operations are to be performed but not how these operations will be implemented.

A book is a good example of an Abstract Data Type. You know it's supposed to have a cover, a title, pages, and content. What you don't know is what those are.

A telephone book is an implementation of the Abstract Data Type because you know how the cover looks like, what the title is, and what the content is as well.

[2:Linear Data Structure]
A linear data structure means that its items are lying on the same level and are not hierarchically structured.

[3:Node]
A node is a data type that contains an element and references to nodes next to it. In other words, from a node instance you can obtain its value and one or more neighbors.

[4:Josephus problem]
Also known as *Josephus permutation*, it is a *count-out* game. The game starts with *m* people standing in a circle. Each turn consists of choosing a person to start the counting from and, in the same predefined direction, count up to *n*.

After the *nth* person is kicked out, the ones left close the circle and start again.

The game ends when there is a single person remaining.

> 💡 Here is a great video that explains [the Josephus Problem](https://www.youtube.com/watch?v=uCsD3ZGzMgE).
