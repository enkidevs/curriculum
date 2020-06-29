---
author: alex
type: normal
category: feature
tags:
  - 'java, JVM, garbage collection'
---

# Java Memory management


---

## Content

Memory management is the process of allocating new objects and removing unused objects to make space for those new object allocations. 

*Freeing up used memory is entirely up to the Java Virtual Machine's (JVM) Garbage collector (GC)*. This way, the developer doesn't need to reason about this part of the code and also any possible code bugs leading to memory leaks or referencing already freed up memory are avoided.

It's based on a Mark-and-Sweep algorithm which is basically similar to performing a Breadth/Depth first search on the graph formed by the allocated objects as graph nodes and their pointers as node edges. The JVM uses specific objects which are roots of the graph and then visits every node along the path and marks it as visited (mark step). If any object is left unmarked, this means that it can't be referenced by any other object so the JVM is ready to free up the memory used by that object (sweep step).


---

## Practice

On what algorithm is Garbage Collection based?

`???`

- `Mark-and-Sweep` 
- `Breath-first` 
- `Depth-first` 
- `Dijkstra`


---

## Revision

On what is Java’s memory management based?

`???`

- `Garbage Collection` 
- `Mark-and-Sweep` 
- `Manually nullifying references` 
- `Breadth first algorithm`
 
