# approximating-memory-and-time-required-by-data-types
author: mihaiberq

levels:
 - basic

type: undefined

category: must-know

---
## Content

In the *Array* insight, we talked about how *inserting* an element requires all the elements to the right of the new one to be moved (**shifted**) one position.

In contrast, inserting an element into a *LinkedList* requires changes to the nodes next to the new one only.

The question comes to mind: "What data structure works best if the *main* operation I will perform is *insertion*?

Intuitively, the answer would be *LinkedList*, which is also the correct one. 

This is what insertion means for both of them: 
- Using an Array, I would potentially need to shift **n elements** to the right, if I insert a new element at **index 0**.
- Using a LinkedList, the time needed to insert a new node will be **constant** in relation to the size of the list.

We can say that:
- *For an Array*, the worst-case insertion scenario requires `n operations` to complete.
- *For a LinkedList*, the worst-case insertion scenario takes approximately `1 operation` to finish.

This **worst-case** approximation is expressed using the `Big O`[1] notation. *Big O* is used to calculate the behavior of a function or data type towards a *specific value* or *infinity*.

Because you would have to move n elements, when **n could mean an 100-digit number**, the upper limit of the insertion *in the case of an array* is `O(n)`.

Because you would have to change the references to a relative small number of nodes *in a LinkedList*[2], insertion's *upper-bound* is `O(1)`.


---
## Practice

In an array, how many operations are required for the worst-case scenario deletion (removal of the element with index 0)?

???
*n
*1
*log n
*n×n
---
## Revision

Insertion in a linked list is *constant* relative to 

??? .
*the list's size
*the number of a node's neighbors
*the list's implementation
---
## Footnotes

[1:Big O]
Pronounced Big-Oh
[2:LinkedList]
The number of nodes depends on the type of LinkedList used and on how many references you would keep in each node. 

For example, in a *SinglyLinkedList* you have to change 3 references, in a *DoublyLinkedList* you have to change 6 references, but, in the end, it **does not** matter *how many nodes* the list has. 