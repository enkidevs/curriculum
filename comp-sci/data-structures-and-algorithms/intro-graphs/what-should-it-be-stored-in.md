---
author: mihaiberq

levels:

  - beginner
  - basic

type: fillTheGap

category: must-know

parent: the-queue-data-structure
---

# What should it be stored in?

---
## Content

Choose the data structures that would best fit the examples.

---
## Game Content

```text
Conga line representation.
```

* Linked list
* Array
* Stack

%exp
You can hop in the conga line anywhere you want without disturbing more than 2 people.
%

---

```text
A way to undo actions.
```

* Stack
* Array
* Queue

%exp
The stack's last in, first out principle makes this an easy job.
%

---

```text
Printing documents in order of their arrival.
```

* Queue
* Array
* Linked list

%exp
You want the first document sent to be printed first (first in, first out).
%

---

```text
Books on a bookshelf.
```

* Array
* Queue
* Stack

%exp
You would have to move the other books to insert/remove one. The bookshelf also has, most of the times, fixed size.
%

---

```text
Chess board.
```

* Two-dimensional Array
* Linked list
* Queue

%exp
The chessboard is in itself a fixed `8*8` matrix (two-dimensional array).
%

---

```text
Egg hunt clues.
```

* Linked list
* Stack
* Array

%exp
Clues are linked to one another (the previous one gets you to the next). Adding an additional clue shouldn't mean having to move every other clue.
%

---

```text
A train.
```

* Linked list
* Array
* Queue

%exp
From each car, you'd only be able to get to the next and the previous one.
%

---

```text
Store recursion calls.
```

* Stack
* Array
* Queue

%exp
The recursion goes as deep as possible, then computes the latest added operation or function. As this principle ressemblances the last in, first out approach, a stack should be used.
%

---

```text
Store the first n numbers in the Fibonacci

sequence.
```

* Array
* Stack
* Linked list

%exp
As you know the index of the last Fibonacci number you have to compute, declaring an array makes sense.
%

---

```text
Cars in a drive-through.
```

* Queue
* Stack
* Linked list

%exp
The first car that got there gets to be served first: the answer is queue.
%