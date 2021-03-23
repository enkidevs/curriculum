---
author: nickdaminov
type: normal
category: feature
links:
  - >-
    [More on Thread
    Introduction](https://www.tutorialspoint.com/java/java_multithreading.htm){website}
  - >-
    [Languages That Support
    Multithreading](https://en.wikipedia.org/wiki/List_of_concurrent_and_parallel_programming_languages){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Threading


---

## Content

**Threading** is a concept of splitting a single *process* into concurrent execution of two or more tasks. These tasks or **threads** can be run either asynchronously or synchronously and each of them has its own path of execution within the program. This concept is of course not limited to *Java* only and can be applied to many languages.

Every thread in *Java* is created and controlled by the `java.lang.Thread` class. In order to start a thread we have to call a `start()` function on it.

**NOTE:** It is important to remember that *processes* and *threads* are not the same things although they are quite similar.

Advantages of Multithreading:

- better use of system resources
- parallelized tasks
- enhanced performance on multi-processor machines

Disadvantages of Multithreading:

- increased complexity
- synchronization of shared resources (objects, data)
- difficult to debug, result is sometimes unpredictable
- potential deadlocks
- "starvation": some threads may not be served


---

## Practice

The concept of threading is: ???

- splitting a single process into multiple tasks
- ensuring that the current process gets the most resources out of the system
- making a process run on a single core in order to free up resources


---

## Revision

The concept of threading is: ???

- splitting a single process into multiple tasks
- ensuring that the current process gets the most resources out of the system
- making a process run on a single core in order to free up resources
