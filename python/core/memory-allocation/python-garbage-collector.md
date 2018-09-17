---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know
aspects:
  - workout
  - deep
standards:
  python.store-manipulate-data.6: 10

---

# Python's Garbage Collector

---
## Content

We've talked a bit about how *referencing* works in Python and how assigning two names to a *mutable data type* can cause some unexpected troubles. Now, it's time to focus on what happens if *no variable* references that data type anymore:
```python
m = [1, 2]
n = m
m = [ 205 ]
n = [ 3 ]
```
The first two lines of code can be represented like this (an oversimplified link):
```bash
# physical memory
       [1, 2]
      /      \
====================
    /          \ references
   m            n
# Python's memory heap
```
The next two lines yield something different:
```bash
# physical memory
[ 205 ]    [1, 2]    [ 3 ]
   |                   |
===========================
   |                   |
   m                   n
# Python's memory heap
```
The object represented by the list `[1, 2]` is no longer in scope. In order to *avoid memory leaks* (we will focus on these in the next insight), the **garbage collector** (gc) has to step in and mark the memory address as free.

Memory management in Python involves a private heap containing all Python objects and data structures. In other words, it acts like a *middleman* between the interpreter (software) and memory (hardware).

**Garbage collection** refers to the process of freeing the memory block occupied previously by the object to be deallocated.  

CPython's[1] virtual machine keeps a counter for each of objects used by the current running Python program and automatically garbage collects them when there are no more references to it. The formal name for this garbage collection algorithm is **reference counting**.

---
## Practice

What does the garbage collector actually do?

???

* steps in and marks the memory address as free
* delets variables
* removes values from variables

---
## Revision

In Python, the garbage collector is run by

???


* the virtual machine
* the user
* the program to be executed
* the interpreter

---
## Footnotes
[1: CPython]
CPython is the default implementation of the Python's language, written in C and the one most of you are probably using nonetheless (as long as you run your Python REPL with the `python` command).

Other implementations, like `Jython`, `IronPython` and `PyPy`, are made to take advantage of other existing virtual machines (Java Virtual Machine, or *.NET*'s Common Language Runtime) by compiling the Python code into code runnable by those machines (bytecode for Java and *Intermediate Language* for .NET)
