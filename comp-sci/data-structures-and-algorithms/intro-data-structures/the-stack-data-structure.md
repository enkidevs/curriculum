---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know


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

![stack](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20300%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3Estackds%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M275%20173h147v51H275z%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M275%20222h147v51H275z%22%2F%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20d%3D%22M334.983128%2067.9999998l-4.73722223%2012.56400147-7.24590535-11.304524%22%2F%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20d%3D%22M423%2058v215H275V58%22%2F%3E%3Cpath%20d%3D%22M276%20224h145m-145-50h145%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%20fill%3D%22%23D8D8D8%22%2F%3E%3Cpath%20d%3D%22M330%2079c0-27.6142375-24.624339-50-55-50s-55%2022.3857625-55%2050m260.983128-10.0000002l-4.73722223%2012.56400147-7.24590535-11.304524%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Cpath%20d%3D%22M476%2080c0-27.6142375-24.624339-50-55-50s-55%2022.3857625-55%2050%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22328.08869%22%20y%3D%22264%22%3E23%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22328.08869%22%20y%3D%22215%22%3E15%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%20fill%3D%22%23FFF%22%20d%3D%22M255%2085l.000004%2049.102737-149.221146-.000001V85z%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22170.590643%22%20y%3D%22125%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%20fill%3D%22%23FFF%22%20d%3D%22M594%2085l.000004%2049.102737-149.221146-.000001V85z%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22509.590643%22%20y%3D%22125%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%20fill%3D%22%23FFF%22%20d%3D%22M422.778854%20103l.000004%2049.102737-147-.000001V103z%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22339.590643%22%20y%3D%22143%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20transform%3D%22translate%28229%2C%2033%29%20rotate%28-30%29%20translate%28-229%2C%20-33%29%20%22%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2220%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-1.5%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22192.243164%22%20y%3D%2241%22%3ELast%20in%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20transform%3D%22translate%28458%2C%2044%29%20rotate%2830%29%20translate%28-458%2C%20-44%29%20%22%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2220%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-1.5%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22411.151896%22%20y%3D%2239.1995837%22%3EFirst%20out%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

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

 
