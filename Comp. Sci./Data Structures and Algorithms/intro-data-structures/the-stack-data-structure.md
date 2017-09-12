# The Stack Data Structure
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

links:
    - >-
        [Stacks and Queues](https://en.wikibooks.org/wiki/Data_Structures/Stacks_and_Queues){website}

parent: the-linked-list-data-structure
---
## Content

A **stack** is a collection of objects optimized for two things:
- adding items
- removing the most recent-added item first

The items are inserted and removed according to the *last-in, first-out* (*LIFO*) principle.

-![stack](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20300%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3Equeueds%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20d%3D%22M125%2069h450m0%2080H125%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20d%3D%22M473%2069h102v80H473z%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22497.745117%22%20y%3D%22129%22%3E15%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20d%3D%22M575%20176h102v81H575z%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22599.745117%22%20y%3D%22236%22%3E15%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20transform%3D%22translate%2864%2C%20124%29%20rotate%28-45%29%20translate%28-64%2C%20-124%29%20%22%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-1.875%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2218.0539551%22%20y%3D%22134%22%3ELast%20in%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20transform%3D%22translate%28639%2C%20112%29%20rotate%2845%29%20translate%28-639%2C%20-112%29%20%22%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2225%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-1.875%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22579.821757%22%20y%3D%22121.939261%22%3EFirst%20out%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20d%3D%22M373%2069h102v80H373z%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22410.872559%22%20y%3D%22129%22%3E9%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20d%3D%22M272%2069h102v80H272z%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22297.745117%22%20y%3D%22129%22%3E23%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20d%3D%22M157%2069h100v80H157z%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22194.872559%22%20y%3D%22129%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%20d%3D%22M35%20176h102v81H35z%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2272.8725586%22%20y%3D%22236%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M125%20109c-34.7939392%200-63%2028.206061-63%2063m47.0000003-66.75688506l20.35967278%203.23785862-19.48811535%206.72408836M648.85253093%20166c0-34.7939392-28.20606073-63-63.00000003-63m66.25688546%2047.00000028l-3.23785863%2020.35967267-6.72408835-19.48811524%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

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
