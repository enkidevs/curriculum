---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

aspects:

  - introduction


links:

  - '[Stacks and Queues](https://en.wikibooks.org/wiki/Data_Structures/Stacks_and_Queues){website}'

parent: the-linked-list-data-structure

---

# The Stack Data Structure

---
## Content

A **stack** is a collection of objects optimized for two things:
- adding items
- removing the most recent-added item first

The items are inserted and removed according to the *last-in, first-out* (*LIFO*) principle.

![stack](https://img.enkipro.com/a81cf71c5ee5e7dfbf0ffcd911b02642.png)

Imagine how you fill a steam cooker. You can add a tray of food on the top of the existing ones, but not in the middle, and only remove the last tray added.

In a *stack*, you are able to insert, or **push** items whenever you want, but you could only retrieve, or **pop** the top element.

### Stack ADT
Independent of any language, a stack data structure should provide the following update methods:
- `push(e)` : *Adds* element *e* to the top of the stack.
- `pop()` : If the stack is not empty, it *removes* and *returns* the top element.

And three other helper methods:
- `top()` : *Returns* the top element.
- `isEmpty()` : *Returns* `true` if there are no elements in the stack, `false` otherwise.
- `size()` : *Returns* the number of elements in the stack.

These are the available stack implementations in different programming languages:
  - `Java`: You can instantiate a Stack object through the `Stack` class. The insertion method is called `push`, while the removal one is `pop`.
  - `JavaScript`: There is no special Stack prototype in JavaScript. The Array prototype, however, supports the `push` and `pop` methods that replicate the behavior of a stack.
  - `Python`: There isn't any python `Stack` module. A `list`, however, can be used as a stack through the `append` and `pop` methods.
  - `C++`: Stacks in C++ are part of the `std::stack` library. In this case, elements can be inserted by using `push` and removed by using `pop`.

---
## Practice

What is the working principle behind a stack?

???

* Last-in, first-out
* First-in, first-out
* Last-in, last-out

---
## Revision

Which of the following methods can be called on a `stack`?

???


* `push(e)`
* `dequeue()`
* `first()`
* `none`
* `all`


