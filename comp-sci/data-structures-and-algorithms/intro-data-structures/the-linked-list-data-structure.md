---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know


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

![sll](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20300%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20d%3D%22M41%20151h100v100H41z%22%2F%3E%3Cpath%20d%3D%22M69%20152v98m44-97v97%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2278.0898438%22%20y%3D%22212%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20d%3D%22M201%20151h100v100H201z%22%2F%3E%3Cpath%20d%3D%22M229%20152v98m44-97v97%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22240.498047%22%20y%3D%22212%22%3EB%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20d%3D%22M361%20151h100v100H361z%22%2F%3E%3Cpath%20d%3D%22M389%20152v98m44-97v97%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22400.498047%22%20y%3D%22212%22%3ED%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20d%3D%22M521%20151h100v100H521z%22%2F%3E%3Cpath%20d%3D%22M549%20152v98m44-97v97%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22560.498047%22%20y%3D%22212%22%3EG%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M90%20102.5v38m-3-10.8l3%2010.8%203-10.8%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2247.4921875%22%20y%3D%2291%22%3ENod%3C%2Ftspan%3E%20%3Ctspan%20x%3D%22110.503906%22%20y%3D%2291%22%3Ee%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M127%20201h89m-10.8%203l10.8-3-10.8-3m82.8%202h89m-10.8%203l10.8-3-10.8-3m82.8%203h89m-10.8%203l10.8-3-10.8-3m83.8%202h38m-10.8%203l10.8-3-10.8-3%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

To make it a **DoublyLinkedList**, everyone would have to use a hand to hold the person in front of them, and with the other hand to hold the one behind them. In this case, you would be able to move through in both directions, from *start to finish* and from *finish to start*.

![dll](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20300%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20d%3D%22M44%20100h100v100H44z%22%2F%3E%3Cpath%20d%3D%22M72%20101v98m44-97v97%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2281.0898438%22%20y%3D%22161%22%3EX%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20d%3D%22M204%20100h100v100H204z%22%2F%3E%3Cpath%20d%3D%22M232%20101v98m44-97v97%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22243.498047%22%20y%3D%22161%22%3EZ%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20d%3D%22M364%20100h100v100H364z%22%2F%3E%3Cpath%20d%3D%22M392%20101v98m44-97v97%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22403.498047%22%20y%3D%22161%22%3EM%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20d%3D%22M524%20100h100v100H524z%22%2F%3E%3Cpath%20d%3D%22M552%20101v98m44-97v97%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22563.498047%22%20y%3D%22161%22%3ER%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M131%20128h89m-10.8%203l10.8-3-10.8-3m80.8%203h89m-10.8%203l10.8-3-10.8-3M290%20171h89m-78.2%203l-10.8-3%2010.8-3M130%20171h89m-78.2%203l-10.8-3%2010.8-3M24%20171h35m-24.2%203L24%20171l10.8-3m414.2%203h89m-78.2%203l-10.8-3%2010.8-3M449%20128h89m-10.8%203l10.8-3-10.8-3m82.8%203h35m-10.8%203l10.8-3-10.8-3%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

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
 
