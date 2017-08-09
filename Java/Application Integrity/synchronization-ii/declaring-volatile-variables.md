# Declaring `volatile` variables
author: adamMontgomerie

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

tags:

  - multithreading

  - threads

  - volatile

  - synchronization

  - atomic_access

links:

  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/essential/concurrency/atomic.html){website}

---
## Content

The `volatile` keyword when used with a variable, guarantees that all threads will always see the most up-to-date value of the variable.

In the following example, the `closed` field is `volatile`. This means that if another thread calls a thread's `close` method, then the thread currently executing the `run` loop will see the change in value and terminate.

Without declaring `closed` as `volatile`, there is no guarantee that the thread would see the change in value.
```
volatile boolean closed;
public void close() {
  closed = true; 
}
public void run() { 
  while (!closed) { 
    ...
  }
}
```
However, `volatile` is not necessarily a replacement for `synchronized` statements as memory inconsistency errors are still possible.