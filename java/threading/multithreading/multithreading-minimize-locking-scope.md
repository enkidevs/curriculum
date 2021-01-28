---
author: adamMontgomerie
type: normal
category: best-practice
tags:
  - multithreading
links:
  - >-
    [javarevisited.blogspot.co.uk](http://javarevisited.blogspot.co.uk/2015/05/top-10-java-multithreading-and.html){website}
---

# Multithreading: minimize locking scope


---

## Content

Using `Lock` is sometimes necessary to guarantee thread safety. However, overusing `Lock` will limit the performance of a program. This is because any code that operates under a `Lock` must be executed sequentially; as opposed to other areas of the program which will be able to execute concurrently.

So in order to maximize performance, it is a good idea to reduce the scope of `Lock`s to only apply to critical sections of code.
 
