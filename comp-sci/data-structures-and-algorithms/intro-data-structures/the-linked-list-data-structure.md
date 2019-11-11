---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

aspects:

  - introduction


links:

  - '[What is a linked list?](https://www.cs.cmu.edu/~adamchik/15-121/lectures/Linked%20Lists/linked%20lists.html){website}'

parent: the-array-data-structure

---

# The Linked List Data Structure

---
## Content

A **list**, or a **sequence**, is an *abstract*[1] data type that represents a linear chain of values, where the same value can appear more than once. The *list* has a first element, **head**, and a last element, **tail**.

Because a list is *linear*[2], each element other than the head and the tail have a unique *predecessor* and a unique *successor*.


### LinkedList
*LinkedList* uses the concept of *nodes*[3] to represent its data.

Think of a conga line, in which every person, but the first and the last, holds someone and are being held by someone. If you want to join the line to have some fun, you can do it without "disturbing" more than 2 people: the one at the position *i* and the one at the position *i-1*.

However, you would still need to count to get to position *i*: no one has a sign above them stating their index.

The *conga line* is a **SinglyLinkedList** because you cannot see who is behind you. The last one (in the example below, *G*) still has a reference that points to nothing(or `null`):

![sll](https://img.enkipro.com/7b0cad245c9ed5cb55d6c12678629acd.png)

To make it a **DoublyLinkedList**, everyone would have to use a hand to hold the person in front of them, and with the other hand to hold the one behind them. In this case, you would be able to move through in both directions, from *start to finish* and from *finish to start*.

![dll](https://img.enkipro.com/46b5d724b14755373af739d2b55fc878.png)

### Dynamic Array vs. LinkedList

No data structure is well suited for all circumstances. A *LinkedList* may behave well in one case, while causing troubles in another. The same is true for *Arrays*, so it is necessary to understand when to choose one instead of the other.

A good example to see the differences is the implementation of the *Josephus problem*[4]. If you consider the people in the circle being a *connected list of nodes*, then *deletion* is easy. However, the list will not excel at finding the next person to delete because it has to iterate through *n* nodes.

In contrast to the list, deletion in *dynamic arrays* implies shifting the other elements to maintain the internal structure. Yet, finding the *nth* person is easier, by referencing their position directly.

---
## Practice

What does a DoublyLinkedList node usually keep track of?

???


* Its element, the previous node and the next node.
* The previous node and the next node.
* Its element and the next node.
* Its element, the previous node and the head of the list.

---
## Revision

Which of the following concepts is list-specific?

???


* Head
* Element
* Index
* Node

---
## Footnotes
[1:Abstract Data Type]
Abstract Data Type, or ADT, means the data type cannot be implemented (i.e. represented) by itself and it needs some kind of 'support' in order to be used.

[2:Linear Data Structure]
A linear data structure means that its items are lying on the same level and are not hierarchically structured.

[3:Node]
A node is a data type that contains an element and references to nodes next to it. In other words, from a node instance you can obtain its value and one or more neighbors.

[4:Josephus problem]
Also known as *Josephus permutation*, it is a *count-out* game. The game starts with *m* people standing in a circle. Each turn consists of choosing a person to start the counting from and, in the same predefined direction, count up to *n*.

After the *nth* person is kicked out, the ones left close the circle and start again.

The game ends when there is a single person remaining.

