# the-stack-data-structure
author: mihaiberq

levels:
 - beginner

type: undefined

category: must-know

---
## Content

A **stack** is a collection of objects optimized for two things:
- adding items
- removing the most recent-added item first

The items are inserted and removed according to the *last-in, first-out* (LIFO) principle.

Imagine how you fill a steam cooker. You can add a tray of food on the top of the existing ones, but not in the middle, and only remove the last tray added.

In a *stack*, you are able to insert, or **push** items whenever you want, but you could only retrieve, or **pop** the *top*. 

### Stack ADT
There are two specific methods:
- `push(e)` : *Adds* element *e* to the top of the stack.
- `pop()` : *Removes* and *returns* the top element from the stack.

And three other methods:
- `top()` : *Returns* the top element.
- `isEmpty()` : *Returns* `true` if there are no elements in the stack, `false` otherwise.
- `size()` : *Returns* the number of elements in the stack.
---
## Practice

What is the working principle behind a stack?

???
*Last-in, first-out
*First-in, first-out
*First-in, last-out
*Last-in, last-out
---
## Revision

Which of the following methods is stack-specific?

???
*push(e)
*dequeue()
*size()
*first()