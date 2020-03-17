---
author: mihaiberq

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

aspects:

  - deep

  - workout

links:

  - '[What Is an Algorithm?](http://www.bbc.co.uk/education/guides/z22wwmn/revision){website}'
  - '[The Big-O Notation](https://rob-bell.net/2009/06/a-beginners-guide-to-big-o-notation/){website}'

parent: node-height-and-depth

---

# Approximating Memory and Time Required by Data Types

---
## Content

One of the main reasons of having multiple data structures is specialization. In the case of an *Array*, inserting an element requires all the elements to the right of the new one to be moved (**shifted**) one position.

In contrast, inserting an element into a *LinkedList* requires changes to the nodes next to the new one only.

The question comes to mind: "What data structure works best if the *main* operation I will perform is *insertion*?"

Intuitively, the answer would be *LinkedList*, which is also the correct one.

Using an Array, I would potentially need to shift **n elements** to the right, if I insert a new element at **index 0**. Here's an example:

![arraybefore](https://img.enkipro.com/239aad03da516bf06422aab408c1d87d.png)

And the array after insertion:

![arrayafter](https://img.enkipro.com/f59d6d5a5b7ee73969b9335b3dbb307e.png)

Using a LinkedList, the time needed to insert a new node will be **constant** in relation to the size of the list. Consider the following linked list:

![listbefore](https://img.enkipro.com/babe0d95ef76edcf2d23fcc59d8b735b.png)

And the list afterwards:

![listafter](https://img.enkipro.com/7efbf3c859f7a68ef936f7a3b3d17e9a.png)

We can say that:
- *For an Array* with n elements, the worst-case insertion scenario requires `n operations` to complete.
- *For a LinkedList* with n elements, the worst-case insertion scenario takes approximately `1 operation` to finish.

This **worst-case** approximation is expressed using the `Big O`[1] notation. In other words, *Big O* is a relative representation of the complexity of an algorithm or of performing operations on a data structure.

For example, when talking about moving from end to end within an array, it makes sense to say that the number of operations is bounded by the number of items in the array, or `O(n)`. Moreover, the insertion operation is bounded by the same function, `O(n)`, as inserting at index 0 means performing additional *n* operations for moving all of the items to the right.

For comparison, visiting every node in a linked list is also a linear operation (`O(n)`). Inserting, however, does not depend on the size of the list, but on the number of the immediate neighbors, which is a constant relative to the size[2]. Therefore, the insertion operation is bounded by the constant function, `O(1)`[3].

---
## Practice

In an array, how many operations are required for the worst-case scenario deletion (removal of the element with index 0)?

???

* n
* 1
* log n
* n×n

---
## Revision

Which of the following operations is bounded by the constant function?

???

* LinkedList insertion
* Array insertion
* Array searching
* LinkedList searching

---
## Footnotes
[1:Big O]
Pronounced Big-Oh.

[2:LinkedList]
The number of nodes depends on the type of LinkedList used and on how many references each node holds.

For example, in a *SinglyLinkedList* you have to change 2 references, in a *DoublyLinkedList* you have to change 4 references, but, in the end, it **does not** depend on *the total number of nodes* in the list.

[3:Inserting before or after a node]
In a singly linked list:
- inserting **after** a known node is an `O(1)` operation
- inserting **before** a known node is a `O(n)` operation

Although possible with a singly linked list, you might want to consider using a doubly linked list if you need to frequently insert **before** a node. In this case (doubly linked list), inserting before a node will also be an `O(1)` operation.
