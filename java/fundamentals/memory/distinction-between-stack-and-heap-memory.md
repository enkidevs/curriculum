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
    [javarevisited.blogspot.jp](http://javarevisited.blogspot.jp/2013/01/difference-between-stack-and-heap-java.html){website}
---

# Distinction between stack and heap memory


---

## Content

Stack and heap memory are both types of memory, but have different purposes and uses within a program:

- Stack memory is used to store local variables and method calls, while heap memory is used to store objects.

- Each thread has its own stack, and variables stored in a stack are only visible to that stack's owner. Heap memory is shared among all threads.

- A `java.lang.
  StackOverFlowError` will be thrown if there is no available stack memory left. `java.lang.OutOfMemoryError: Java Heap Space` will be thrown if there is a lack of heap space.
 
