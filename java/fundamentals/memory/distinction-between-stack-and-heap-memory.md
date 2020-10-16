---
author: adamMontgomerie

type: normal

category: tip

tags:
  - stack
  - heap
  - memory

links:
  - >-
    [Difference Between Stack and Heap](http://javarevisited.blogspot.jp/2013/01/difference-between-stack-and-heap-java.html){website}

---

# Distinction Between Stack and Heap Memory

---

## Content

**Stack** and **heap** are both types of memory, but have different purposes and uses within a program.

**Stack memory** is used to store local variables and method calls, while **heap memory** is used to store objects.

Each thread has its own stack, and variables stored in a stack are only visible to that stack's owner. 

Heap memory is shared among all threads.

If there is no available stack memory left, then a `java.lang.StackOverFlowError` error will be thrown.

If there is a lack of heap space, then a `java.lang.OutOfMemoryError: Java Heap Space` error will be thrown.

---

## Practice

Stack memory is used to store ??? and ???.

Heap memory is used to store ???.

- local variables
- method calls
- objects
- global variables

---

## Revision

Which of the following errors is thrown where is no available stack memory left?

???

- `java.lang.StackOverFlowError`
- `java.lang.OutOfMemoryError: Java Heap Space`